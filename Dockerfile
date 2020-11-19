#基础镜像
FROM mysql:latest
MAINTAINER Aaron <Aaron_ops@163.com>

#把sql文件拷贝到/docker-entrypoint-initdb.d/目录下，以便启动时自动执行这个sql
ADD ./sql/*.sql /docker-entrypoint-initdb.d
ADD ./upgrade/*.sql /upgrade/

#拷贝mysql启动脚本
ADD setup.sh /setup.sh

#Mysql密码
ENV MYSQL_ROOT_PASSWORD rainbond

#数据持久化目录
VOLUME [ "/var/lib/mysql" ]
#端口
EXPOSE 3306

#启动脚本
CMD ["mysqld" && "sh", "/setup.sh"]
