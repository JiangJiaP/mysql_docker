# 使用官方的 MySQL 镜像作为基础镜像
FROM mysql:8.0

# 设置环境变量，用于配置 MySQL
ENV MYSQL_ROOT_PASSWORD=myrootpassword
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# 将初始数据的 SQL 文件复制到容器中
COPY ./init.sql /docker-entrypoint-initdb.d/