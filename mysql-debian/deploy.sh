usage() {
	echo "Usage: sh 执行脚本.sh [init|copy|stop|rerun]"
	exit 1
}

init(){
    docker compose -f init.yml up -d
}

copy(){
    docker cp mysql-8.0.32-debian:/etc/mysql/. ./conf
}

stop(){
	docker compose -f init.yml stop
}

rerun(){
    docker compose -f rerun.yml up -d
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