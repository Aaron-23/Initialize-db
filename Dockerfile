#基础镜像
FROM mysql:latest
MAINTAINER Aaron <Aaron_ops@163.com>

#把sql文件拷贝到/docker-entrypoint-initdb.d/目录下，以便启动时自动执行这个sql
COPY ./sql/*.sql /docker-entrypoint-initdb.d
#拷贝mysql配置文件
COPY ./config/ /etc/mysql/
#Mysql密码
ENV MYSQL_ROOT_PASSWORD rainbond
#数据持久化目录
VOLUME [ "/var/lib/mysql" ]
#端口
EXPOSE 3306