# redis-bullseye

## 环境说明

使用 `redis-bullseye` 镜像，并在 `Debian` 发行版通过测试

## 使用说明

1. clone 本仓库
2. 将 redis-bullseye 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 修改 `redis-bullseye/conf/` 文件夹下的 `redis.conf` 配置文件（我提供的配置文件已经做出如下改动：关闭 IP 绑定、关闭保护模式、开启守护进程、开启 AOF 持久化）