#!/bin/sh
import=/Users/ThangNguyen/www/piwikDev/log_importing 
pw=/Users/ThangNguyen/www/piwikDev/
ilogs=$import/import_logs.py
tk=58b4c4b1bde5d7dad865c2d8f255ef08
opt=""

#use newer double bracket to evoid parameter parsing problem
#if [[ $1 -eq 1 ]];then
    opt="--add-sites-new-host"
#fi
exec python $ilogs \
 --token-auth=$tk \
 --config=$pw/config/config.ini.php \
 --url=http://localhost/ $opt \
 --recorders=32 --recorder-max-payload-size=100 --enable-http-errors --enable-http-redirects --enable-static --enable-bots \
 --log-format-name=nginx_json -
 #--debug
