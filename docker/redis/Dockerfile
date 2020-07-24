#基础镜像
FROM redis:5.0.7

#环境变量
ENV REDIS_PORT 6379
#ENV REDIS_PORT_NODE 18000
#暴露变量
EXPOSE $REDIS_PORT
#EXPOSE $REDIS_PORT_NODE
#复制
COPY redis.conf /usr/local/etc/
#修复时区
# ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone &&
RUN  chmod 777 /usr/local/etc/redis.conf 
#命令
CMD ["redis-server", "/usr/local/etc/redis.conf"]