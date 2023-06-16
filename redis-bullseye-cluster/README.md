# redis-bullseye-cluster

Redis 集群分片

------

## 环境说明

使用 `redis:bullseye` 镜像，并在 `Debian` 发行版通过测试

------

## 使用说明

1. clone 本仓库
2. 将 redis-bullseye-cluster 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 执行命令 `cd /path/to/redis-bullseye-cluster` 
4. 修改 `redis-bullseye-cluster/**/conf/` 文件夹下的 `redis.conf` 配置文件（我提供的配置文件已经做出如下改动：关闭 IP 绑定、关闭保护模式、修改 log 文件名、开启 AOF 持久化，其中 `cluster-announce-ip` 配置为宿主机 IP）
5. 修改 `deploy.yml` 文件中的容器名称（如果你不喜欢我起的容器名称的话）
6. 执行命令 `./deploy.sh deploy` ，若提示权限不足，则先执行命令 `chmod +x ./deploy.sh`
7. 执行命令 `docker ps` 以及 `docker logs <container-name>` 确认 Redis 容器创建并成功运行

## 补充说明

- 在 `docker network` 使用 `bridge` 模式下为什么还需要为不同的 Redis 节点配置不同端口

经测试如果容器内的 Redis 节点使用相同端口，将导致无法创建集群

当然你也可以直接使用 `host` 模式