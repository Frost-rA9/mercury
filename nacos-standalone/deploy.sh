usage() {
	echo "Usage: sh 执行脚本.sh [init|copy|stop|rerun]"
	exit 1
}

init(){
    docker compose -f init.yml up -d
}

stop(){
	docker compose -f init.yml stop
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