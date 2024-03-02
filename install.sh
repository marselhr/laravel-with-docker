#/bin/bash

while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
    -i | --install)
        install
        exit 0
        ;;
    *)
        echo "Invalid option: $key"
        exit 1001
        ;;
    esac
    shift
done



install() {
    if [ -f .env-example ] then
        cp .env-example .env
    else
        err ".env-example file not found!"
    fi

    if [ ! -L $(dirname $(readlink -f $0))/public/storage ]; then
        echo "Creating storage symlink"
        docker compose exec -i laravel php artisan storage:link
    fi

    docker compose exec -ti -u $(id -u):$(id -g) laravel \
        compser install --ignore-platform-reqs

    echo "Instalation is Succuess"
    sleep 0.5
}