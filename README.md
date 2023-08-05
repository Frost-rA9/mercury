# 声明

近日本人于 Gamil 收到所谓 “墨菲安全” 平台用户对该项目进行安全检测的相关邮件

现对此做出声明：

该项目为本人兴趣使然所建立，项目的初衷是存放 docker-compose 文件供本人随时取用，同时供其他开发者使用 docker-compose 时进行开源交流

本项目不欢迎所谓 “墨菲安全” 平台用户对本项目进行安全检测，也不欢迎其他任何平台在没有对本人进行通知的情况下进行安全检测

如其他开发者确有此需求，请直接 fork 本项目后进行自行检测，如需对本项目进行检测，请邮件联系本人

------

# mercury-bullet-compose

正如其名，这是一个放置了 `compose` 文件的水银子弹仓库

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
- MySQL
  - [mysql-debian](./mysql-debian/README.md)
- Redis
  - [redis-bullseye(Redis 单节点)](./redis-bullseye/README.md)
  - [redis-bullseye-replication(Reids 主从复制)](./redis-bullseye-replication/README.md)
  - [redis-bullseye-sentinel(Redis 哨兵监控)](./redis-bullseye-sentinel/README.md)
  - [redis-bullseye-cluster(Redis 集群分片)](./redis-bullseye-cluster/README.md)
- MongoDB
  - [mongodb(MongoDB + Mongo Express)](./mongodb/README.md)
- Nacos
  - [nacos-standalone(Nacos单机模式)](./nacos-standalone/README.md)
- RabbitMQ
  - [rabbitmq-management(RabbitMQ 单节点 带控制台)](./rabbitmq-management/README.md)
- RocketMQ
  - [rocketmq(RocketMQ Nameserver + Broker + Dadhboard)](./rocketmq/README.md)

更多组件持续添加中（等我哪天有空写了再说，预计下一个是 Nacos ）

------

# 免责声明

本仓库中所有的 docker-compose 文件以及 Shell 脚本，均只能用于个人学习于开源交流使用，**不得用于正式生产环境**

如将本仓库中的文件用于正式生产环境，一旦正式生产环境出现任何问题，**本人不对其负任何责任**
