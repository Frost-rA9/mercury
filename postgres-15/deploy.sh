usage() {
	echo "Usage: sh 执行脚本.sh [deploy|stop|restart]"
	exit 1
}

deploy(){
    docker compose -f compose.yml up -d
}

stop(){
	docker compose -f compose.yml stop
}

restart(){
    docker compose -f compose.yml restart
}

case "$1" in
"deploy")
	init
;;
"stop")
	stop
;;
"restart")
	restart
;;
*)
	usage
;;
esac