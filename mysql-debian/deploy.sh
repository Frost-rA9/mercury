usage() {
	echo "Usage: sh 执行脚本.sh [init|copy|stop|complete]"
	exit 1
}

init(){
    docker compose -f init.yml up -d
}

copy(){
    docker cp mysql-8.0.33-debian:/etc/mysql/. ./conf
}

stop(){
	docker stop mysql-8.0.33-debian
}

rerun(){
    docker compose -f complete.yml up -d
}

case "$1" in
"init")
	init
;;
"copy")
	copy
;;
"stop")
	stop
;;
"rerun")
	rerun
;;
*)
	usage
;;
esac