# rocketmq

RcoketMQ Nameserver + Broker + Dadhboard

------

## 环境说明

使用 `apache/rocketmq` 与 `apacherocketmq/rocketmq-dashboard` 镜像，并在 `Debian` 发行版通过测试

------

## 使用说明

1. clone 本仓库
2. 将 rocketmq 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 执行命令 `cd /path/to/rocketmq` 
4. 修改 `rocketmq/broker/conf/` 文件夹下的 `broker.conf` 配置文件
5. 修改 `deploy.yml` 文件中的容器名称（如果你不喜欢我起的容器名称的话）
6. 执行命令 `chmod -R 0777 ../rocketmq/` 授予整个目录所有权限
7. 执行命令 `./deploy.sh deploy`
8. 执行命令 `docker ps` 以及 `docker logs <container-name>` 确认 RocketMQ 容器创建并成功运行

------

## 补充说明

- 为什么要授予整个目录所有的权限

与 `redis-bullseye-sentinel` 中不同的是，`rocketmq` 需要对包括外层 rocketmq 文件夹在内的所有文件进行授权，若不如此做，会导致 Broker 无法启动

至于产生该问题的原因与更合适的解决方案，我在访问了 StackOverflow 与 GitHub 相关内容，均未能找到