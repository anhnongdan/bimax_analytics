#!/bin/sh
import=/home/tony/Git/bimax_analytics
pw="/home/tony/www/piwik_stable_3.0.1"
ilogs=$import/import_logs.py
tk=e750e87a0c9ee759f7dc97366a6ff61a
opt=""

#use newer double bracket to evoid parameter parsing problem
#if [[ $1 -eq 1 ]];then
    opt="--add-sites-new-host"
#fi
exec /usr/bin/python $ilogs \
 --token-auth=$tk \
 --config=$pw/config/config.ini.php \
 --url=http://localhost/cBIMAX/src/ $opt \
 --recorder-max-payload-size=100 --enable-http-errors --enable-http-redirects --enable-static --enable-bots \
 --log-format-name=nginx_json \
 --debug -
