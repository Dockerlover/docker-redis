# 基础镜像
FROM docker-ubuntu
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID redmine
# 安装redis
RUN         apt-get update && apt-get install -y redis-server && rm -rf /var/lib/apt/lists/*
# 默认暴露6379端口
EXPOSE      6379
# 复制supervisord.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 启动supervisord
CMD ["/usr/bin/supervisord"]
