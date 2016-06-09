#!/bin/sh
log=/tmp/archive.log
console=/usr/share/nginx/html/piwik/console
mysql="mysql -N -S /var/lib/mysql/mysql.sock -u piwik -h localhost  -p45608f80a0ff4aaef4f6cba464e4ac1c5a2d7158 piwik"
archive_today(){
       flock=/tmp/53370bf320a8cce14925ebc7f7191b0daf6d6c1a.lock
       if [ -f $flock ];then
		exit 0
       fi
       touch $flock	
       $console core:archive --disable-scheduled-tasks --force-all-websites  --force-periods=day --concurrent-requests-per-website=32 --url=http://localhost/  >> $log
       rm -f $flock
}
archive(){
       flock=/tmp/53370bf320a8cce14925ebc7f7191b0daf6d6c1a.lock
       if [ -f $flock ];then
		exit 0
       fi
       touch $flock	
#--force-idsites=1 
       $console core:archive  --force-all-websites --force-all-periods=315576000 --force-date-last-n=1000  --concurrent-requests-per-website=32 --url=http://localhost/ >> $log
       rm -f $flock
}
pw_del_logs(){
        $console help core:delete-logs-data
}
db_c(){
	echo "SHOW STATUS WHERE variable_name = 'Threads_connected';" | $mysql
}
pw_site_ls(){
        echo "select idsite,main_url from piwik_site;" | $mysql
}
pw_site_reset(){
	echo "truncate piwik_site;" | $mysql
}
pw_site_del(){
        id=$1
        tmp=`mktemp`
        echo "DELETE FROM piwik_log_visit WHERE idsite = $id;" >> $tmp
        echo "DELETE FROM piwik_log_link_visit_action WHERE idsite = $id;" >> $tmp
        echo "DELETE FROM piwik_log_conversion WHERE idsite = $id; " >> $tmp
        echo "DELETE FROM piwik_log_conversion_item WHERE idsite = $id;" >> $tmp
        echo "DELETE FROM piwik_site WHERE idsite = $id;" >> $tmp
        $mysql < $tmp
        rm -f $tmp
}
pw_site_delall(){
        pw_site_ls | while read site url;do
                pw_site_del $site
        done
}
re_clean(){
        rd="redis-cli -s /tmp/redis.sock -n 0"
        echo 'keys *' | $rd | while read k;do echo "del $k" | $rd ;done
}
db_clean(){
        echo 'show tables;' | $mysql | grep piwik_archive_ | while read tb;do echo "drop table $tb;" | $mysql ;done
        echo 'show tables;' | $mysql | grep piwik_log_ | while read tb;do echo "truncate table $tb;" | $mysql ;done

}
clean(){
	pw_site_delall
 	pw_site_reset
        db_clean
        re_clean
}
queue(){
        $console queuedtracking:$@
}
sp(){
        n=$1
        if [ -z $n ];then
                n=16
        fi
         pm2 start /root/process.sh -x -f -i $n --restart-delay 1000
}
so(){
         pm2 start /root/check_jobs.sh -x -f  --restart-delay 1000
         pm2 start /root/tool_archive.sh -x -f  --restart-delay 1000
}
$@

