usage() {
	echo "Usage: sh 执行脚本.sh [init|stop]"
	exit 1
}

init(){
    docker compose -f deploy.yml up -d
}

stop(){
	docker compose -f deploy.yml stop
}

case "$1" in
"init")
	init
;;
"stop")
	stop
;;
*)
	usage
;;
esac