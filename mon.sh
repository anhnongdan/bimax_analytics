./tool.sh db_c;
echo -n "redis:";echo info | redis-cli  |grep connected_client;
echo -n "php-fpm:";ps -ef |awk "/php-fpm: pool/" |grep -v awk |wc -l;
echo -n "import:";ps aux | awk /import/ | grep -v awk | grep -v watch |wc -l;
echo "archive:";ps -ef | grep -v awk| awk '/core:archive/'
