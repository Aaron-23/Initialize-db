#!/bin/bash
set -xe

#查看mysql服务的状态
mysqld --user=root
echo 'View mysql status'
mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "select version();" &> /dev/null
sleep 30
#导入数据
echo 'Perform upgrade sql......'
mysql -uroot -p$MYSQL_ROOT_PASSWORD < /upgrade/5.1-5.2.sql
echo 'Upgrade sql execution completed'


