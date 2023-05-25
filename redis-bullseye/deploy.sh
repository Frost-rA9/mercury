usage() {
	echo "Usage: sh 执行脚本.sh [deploy]"
	exit 1
}

deploy(){
    docker compose -f deploy.yml up -d
}

case "$1" in
"deploy")
	deploy
;;
*)
	usage
;;
esac