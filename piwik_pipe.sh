#!/bin/sh
import=/usr/share/nginx/html/piwik
ilogs=$import/piwik-analytics-scripts/import_logs.py
id=$1
opt=""
if [ $id -eq 0 ];then
	opt="--add-sites-new-hosts"
fi
exec python $ilogs \
 --token-auth=12641baysao4e1cfe26bf6cc00a9a0e366c1f7\
 --config=$import/config/config.ini.php \
 --url=http://localhost/ $opt \
 --recorders=32 --recorder-max-payload-size=200 --enable-http-errors --enable-http-redirects --enable-static --enable-bots \
 --log-format-name=nginx_json -
 #--debug  --log-format-name=nginx_json -
