# docker-redis
Docker化redis

## 镜像特点

- 2015/8/8 继承基础镜像docker-ubuntu

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-redis.git
        cd redis
        docker build -t docker-redis .

- 运行容器

        docker run -it -d --name redis --restart=always -p 6379:6379 docker-redis
