#基础镜像
FROM mysql:8.0.18
COPY my.cnf /etc/mysql/my.cnf
# COPY create_replica_user.sql /docker-entrypoint-initdb.d/create_replica_user.sql
#环境变量
ENV MYSQL_ROOT_PASSWORD=xiefei

#命令
CMD ["mysqld"]
