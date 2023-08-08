# nacos-standalone

Nacos 单机模式

------

## 环境说明

使用 `nacos/nacos-server` 镜像，并在 `Debian` 发行版通过测试

------

## 使用说明

1. clone 本仓库
2. 将 nacos-standalone 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 执行命令 `cd /path/to/nacos-standalone` 
4. 修改 `nacos-standalone/conf/` 文件夹下的 `application.properties` Nacos 配置文件
5. 修改 `nacos-standalone/env/` 文件夹下的 `standalone.env` 环境配置文件
6. 修改 `deploy.yml` 文件中的容器名称（如果你不喜欢我起的容器名称的话）
7. 执行命令 `./deploy.sh deploy` ，若提示权限不足，则先执行命令 `chmod +x ./deploy.sh`
8. 执行命令 `docker ps` 以及 `docker logs <container-name>` 确认 Nacos 容器创建并成功运行

------

## 关于持久化

由于我本人很不喜欢一键启动多个不同组件的容器，因此该 docker compose 并没有包含 MySQL 容器

如果需要配置 MySQL 持久化，请修改 `nacos-standalone/conf/` 文件夹下的 `application.properties` Nacos 配置文件，将其中数据库相关配置配置为你期望进行 Nacos 持久化的数据库，在 `nacos-standalone/conf/` 文件下下提供了一份 MySQL 持久化的配置供参考

或者可以参考 [Nacos Dcoker 官方仓库](https://github.com/nacos-group/nacos-docker)