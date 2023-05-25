init(){
    docker compose -f init.yml up -d
}

copy(){
    docker cp mysql-8.0.32-debian:/etc/mysql/. ./conf
}

rerun(){
    docker compose -f rerun.yml up -d
}