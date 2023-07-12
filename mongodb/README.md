# monogodb

mongo + mongo-express

------

## 环境说明

使用 `mongo` 与 `mongo-express` 镜像，并在 `Debian` 发行版通过测试

------

## 使用说明

1. clone 本仓库
2. 将 mongodb 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 执行命令 `cd /path/to/mongodb` 
4. 修改 `deploy.yml` 文件中的容器名称（如果你不喜欢我起的容器名称的话）
5. 执行命令 `./deploy.sh deploy` ，若提示权限不足，则先执行命令 `chmod +x ./deploy.sh`
6. 执行命令 `docker ps` 以及 `docker logs <container-name>` 确认 mongodb 容器创建并成功运行