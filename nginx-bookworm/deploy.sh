usage() {
	echo "Usage: sh 执行脚本.sh [init|copy|stop|complete]"
	exit 1
}

init() {
	docker compose -f init.yml up -d
}

copy() {
	docker cp nginx-1.25.2-bookworm:/etc/nginx/. ./conf
	docker cp nginx-1.25.2-bookworm:/usr/share/nginx/html/. ./html
}

stop() {
	docker stop nginx-1.25.2-bookworm
}

complete() {
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
"complete")
	complete
	;;
*)
	usage
	;;
esac
