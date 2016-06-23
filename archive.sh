#!/bin/sh
flock=/tmp/archive.lock
log=/tmp/archive.log
LOAD=30
while true;do
	load=`cat /proc/loadavg | awk '{printf("%.f", $1);}'`
       if [ \( $load -gt $LOAD \) -o \( -f $flock \) ];then
	      sleep 10
		echo "`date`:Load $load .waiting 10s " >> $log
              continue 
       else
	  break
       fi
done
touch $flock
cd /mnt/app/bimax_analytics
echo "`date`:Start process" >> $log
./tool.sh pw_site_ls | awk '{print $1}' | parallel -j8  ./tool.sh archive {}
rm -f $flock
exit 0
