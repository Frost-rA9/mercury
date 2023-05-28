# redis-bullseye-sentinel

Redis 哨兵监控

------

## 环境说明

使用 `redis-bullseye` 镜像，并在 `Debian` 发行版通过测试

------

## 架构说明

采用 一主机 + 二从机 + 三哨兵 的哨兵监控架构

------

## 使用说明

1. clone 本仓库
2. 将 redis-bullseye-replication 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 执行命令 `cd /path/to/redis-bullseye-sentinel` 
4. 修改 `redis-bullseye-sentinel/server/**/conf/` 文件夹下的 `redis.conf` 配置文件（我提供的配置文件已经做出如下改动：关闭 IP 绑定、关闭保护模式、修改 log 文件名、开启 AOF 持久化、从机配置主机 IP 与端口）
5. 修改 `redis-bullseye-sentinel/sentinel/**/conf` 文件夹下的 `sentinel.conf` 配置文件（我提供的配置文件以及做出如下改动：修改 log 文件名、修改工作目录、配置监控主机 IP 与端口）
6. 修改 `deploy.yml` 文件中的容器名称（如果你不喜欢我起的容器名称的话），若在上一步中修改了 `replicaof` 或 `sentinel monitor` 配置项，则需要同步更改 `deploy.yml` 中的网络配置
7. 执行命令 `./deploy.sh deploy`
8. 执行命令 `docker ps` 以及 `docker logs <container-name>` 确认 Redis 容器创建并成功运行