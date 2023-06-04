# Dcoker-Compose-Files-Archive

存放常用组件的 docker-compose 文件，目的是做到随取随用

-------

# 环境说明

所有 docker-compose 文件均在 Linux 环境下通过测试

若文件夹名称中未包含特定 Linux 发行版字样，代表使用默认镜像，默认在 `Debian` 发行版进行测试

若文件夹名称中包含有特定 Linux 发行版字样，如 `mysql-debian` 则代表使用 `mysql-debian` 镜像，并在 `Debian` 发行版进行测试

------

# Shell说明

所有 Shell 脚本均在 docker-compose 文件相同的 Linux 环境下通过测试

------

# 现有组件

- MySQL
  - [mysql-debian](./mysql-debian/README.md)
- Redis
  - [redis-bullseye(Redis 单节点)](./redis-bullseye/README.md)
  - [redis-bullseye-replication(Reids 主从复制)](./redis-bullseye-replication/README.md)
  - [redis-bullseye-sentinel(Redis 哨兵监控)](./redis-bullseye-sentinel/README.md)

- 消息中间件
  - rabbitmq-management(RabbitMQ 单节点 带控制台)

更多组件持续添加中（等我哪天有空写了再说，预计下一个是 Redis 集群）

------

# 免责声明

本仓库中所有的 docker-compose 文件以及 Shell 脚本，均只能用于个人学习于开源交流使用，**不得用于正式生产环境**

如将本仓库中的文件用于正式生产环境，一旦正式生产环境出现任何问题，**本人不对其负任何责任**
