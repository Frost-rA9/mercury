# redis-bullseye-sentinel

Redis 哨兵监控

------

## 环境说明

使用 `redis:bullseye` 镜像，并在 `Debian` 发行版通过测试

------

## 架构说明

采用 一主机 + 二从机 + 三哨兵 的哨兵监控架构

------

## 使用说明

1. clone 本仓库
2. 将 redis-bullseye-replication 文件夹上传至 Linux 服务器或虚拟机（若于 Linux 上直接进行 clone 操作则无需进行该步骤）
3. 执行命令 `cd /path/to/redis-bullseye-sentinel` 
4. 执行命令 `chmod -R 0777 ./` ，授予所有权限
5. 修改 `redis-bullseye-sentinel/server/**/conf/` 文件夹下的 `redis.conf` 配置文件（我提供的配置文件已经做出如下改动：关闭 IP 绑定、关闭保护模式、修改 log 文件名、开启 AOF 持久化、从机配置主机 IP 与端口）
6. 修改 `redis-bullseye-sentinel/sentinel/**/conf` 文件夹下的 `sentinel.conf` 配置文件（我提供的配置文件以及做出如下改动：修改 log 文件名、修改工作目录、配置监控主机 IP 与端口）
7. 修改 `deploy.yml` 文件中的容器名称（如果你不喜欢我起的容器名称的话），若在上一步中修改了 `replicaof` 或 `sentinel monitor` 配置项，则需要同步更改 `deploy.yml` 中的网络配置
8. 执行命令 `./deploy.sh deploy`
9. 执行命令 `docker ps` 以及 `docker logs <container-name>` 确认 Redis 容器创建并成功运行

------

## 补充说明

- 为什么要授予整个目录所有的权限

在 Redis 哨兵监控架构搭建成功后，哨兵节点会对所有节点的配置文件进行重写，因而需要文件的写入权限，在测试中发现，单独给配置文件授予写入权限，哨兵节点仍旧无法写入文件

根据 [StackOverflow](https://stackoverflow.com/questions/70384566/warning-sentinel-was-not-able-to-save-the-new-configuration-on-disk-device) 上该文章的说法，带有配置文件的目录以及配置文件本身必须是可写的，并且在 docker 挂载时必须挂载整个目录而非单个文件，因而需要授予整个目录的写权限，此处为了省事，直接授予了整个目录所有权限

当然，我也可以把目录改为这样的形式

```
redis-bullseye-sentinel/
├── conf
│   ├── sentinel
│   │   ├── redis-sentinel1
│   │   │   ├── sentinel.conf
│   │   ├── redis-sentinel2
│   │   │   ├── sentine2.conf
│   │   └── redis-sentinel2
│   │       └── sentine2.conf
│   └── server
│       ├── redis-matser
│       │   ├── redis.conf
│       ├── redis-slave1
│       │   ├── redis.conf
│       └── redis-sentinel2
│           └── redis.conf
├── deploy.sh
├── deploy.yml
└── README.md
```

如果改为上边这样的目录的话，那只需要执行 `chmod -R 0777 conf/` 就行了，虽然从结果上来看可能没什么差别（两个文件的差别）

但是我懒