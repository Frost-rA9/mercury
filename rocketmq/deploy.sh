usage() {
	echo "Usage: sh 执行脚本.sh [deploy|stop]"
	exit 1
}

deploy() {
	docker compose -f deploy.yml up -d
}

stop() {
	docker compose -f deploy.yml stop
}

case "$1" in
"deploy")
	deploy
	;;
"stop")
	stop
	;;
*)
	usage
	;;
esac
