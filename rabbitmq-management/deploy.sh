usage() {
	echo "Usage: sh 执行脚本.sh [deploy|stop|restart]"
	exit 1
}

deploy() {
	docker compose -f deploy.yml up -d
}

stop() {
	docker compose -f deploy.yml stop
}

restart() {
	docker compose -f deploy.yml restart
}

case "$1" in
"deploy")
	deploy
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
