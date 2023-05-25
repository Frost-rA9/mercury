usage() {
	echo "Usage: sh 执行脚本.sh [init|copy|rerun]"
	exit 1
}

init(){
    docker compose -f init.yml up -d
}

copy(){
    docker cp mysql-8.0.32-debian:/etc/mysql/. ./conf
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
"rerun")
	rerun
;;
*)
	usage
;;
esac