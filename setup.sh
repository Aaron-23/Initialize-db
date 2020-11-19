#!/bin/bash
set -e

#查看mysql服务的状态
echo 'View mysql status'
mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "select version();" &> /dev/null

#导入数据
echo 'Perform upgrade sql......'
mysql -uroot -p$MYSQL_ROOT_PASSWORD < /upgrade/5.1-5.2.sql
echo 'Data import is complete'

tail -f /dev/null

