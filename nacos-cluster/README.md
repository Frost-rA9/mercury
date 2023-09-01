# nacos-cluster

Nacos 集群模式

------

## 环境说明

使用 `nacos/nacos-server` 镜像，并在 `Debian` 发行版通过测试

------

## 架构说明

采用 三 Nacos 节点的架构模式

注意：需要额外配置 MySQL 与 Nginx 服务以正常使用 Nacos 集群

------

## 使用说明

1. clone 本仓库
2. 将 nacos-cluster 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 执行命令 `cd /path/to/nacos-cluster` 
4. 修改 `nacos-cluster/*/conf/` 文件夹下的 `application.properties` Nacos 配置文件，其中 MySQL 相关配置必须修改！
5. 修改 `nacos-cluster/env/` 文件夹下的 `cluster.env` 环境配置文件
6. 修改 `deploy.yml` 文件中的容器名称（如果你不喜欢我起的容器名称的话）
7. 执行命令 `./deploy.sh deploy` ，若提示权限不足，则先执行命令 `chmod +x ./deploy.sh`
8. 执行命令 `docker ps` 以及 `docker logs <container-name>` 确认 Nacos 容器创建并成功运行

------

## 关于 MySQL 持久化与 Nginx 代理

由于我本人很不喜欢一键启动多个不同组件的容器，因此该 docker-compose 并没有包含 MySQL 与 Nginx 容器

但是由于 Nacos 集群必须使用 MySQL 集中式存储，因此相关的 Nacos 配置文件中对 MySQL 进行了相关配置，在使用该 docker-compose 前，请自行配置 MySQL 服务，并请参照使用说明，对 Nacos 配置文件中的相关配置进行修改

至于 Nginx 代理，在不配置的情况下也可以正常使用 Nacos 集群服务

或者可以参考 [Nacos Dcoker 官方仓库](https://github.com/nacos-group/nacos-docker)