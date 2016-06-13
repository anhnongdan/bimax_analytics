#!/bin/sh
import=/mnt/app/bimax_analytics 
pw=/usr/share/nginx/html/piwik
ilogs=$import/import_logs.py
tk=126414e1cfe26bf6cc00a9a0e366c1f7
opt=""
if [ $1 -eq 0  ];then
	opt="--add-sites-new-hosts"
fi
exec python $ilogs \
 --token-auth=$tk \
 --config=$pw/config/config.ini.php \
 --url=http://localhost/ $opt \
 --recorders=32 --recorder-max-payload-size=100 --enable-http-errors --enable-http-redirects --enable-static --enable-bots \
 --log-format-name=nginx_json - 
 #--debug  --log-format-name=nginx_json - 
