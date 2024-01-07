# mercury

放置一点 `compose` 文件用于开源学习交流，请勿用于生产环境

-------

# 环境说明

所有 docker-compose 文件均在 Linux 环境下通过测试，默认使用 `Debian` 发行版

------

# Shell说明

所有 Shell 脚本均在 docker-compose 文件相同的 Linux 环境下通过测试

------

# 现有组件

- Portainer
  - [portainer-ce](./portainer-ce/README.md)
- Nginx
  - [nginx-bookworm](./nginx-bookworm/README.md)
- Postgres
  - [postgres-15](./postgres-15/README.md) (From [FlapyPan](https://github.com/FlapyPan))
- MySQL
  - [mysql-debian](./mysql-debian/README.md)
- Redis
  - [redis-bookworm(Redis 单节点)](./redis-bookworm/README.md)
  - [redis-bookworm-replication(Reids 主从复制)](./redis-bookworm-replication/README.md)
  - [redis-bookworm-sentinel(Redis 哨兵监控)](./redis-bookworm-sentinel/README.md)
  - [redis-bookworm-cluster(Redis 集群分片)](./redis-bookworm-cluster/README.md)
- MongoDB
  - [mongodb(MongoDB + Mongo Express)](./mongodb/README.md)
- Nacos
  - [nacos-standalone(Nacos单机模式)](./nacos-standalone/README.md)
  - [nacos-cluster(Nacos集群模式)](./nacos-cluster/README.md)
- RabbitMQ
  - [rabbitmq-management(RabbitMQ 单节点 带控制台)](./rabbitmq-management/README.md)
- RocketMQ
  - [rocketmq(RocketMQ Nameserver + Broker + Dadhboard)](./rocketmq/README.md)

更多组件持续添加中（等我哪天有空写了再说）

------

# 免责声明

本仓库中所有的 docker-compose 文件以及 Shell 脚本，均只能用于个人学习于开源交流使用，**不得用于正式生产环境**

如将本仓库中的文件用于正式生产环境，一旦正式生产环境出现任何问题，**本人不对其负任何责任**
