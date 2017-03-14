#!/bin/bash
if [[ $(docker ps -aq) = *[!\ ]* ]]; then
    echo "Stopping all containers"
    docker stop $(docker ps -aq)
else
    echo "No containers are running"
fi

if [[ $(docker ps -aq) = *[!\ ]* ]]; then
    echo "Removing all containers and linked volumes forcefully"
    docker rm -f -v $(docker ps -aq)
else
    echo "No containers exist"
fi

if [[ $(docker images -aq) = *[!\ ]* ]]; then
    echo "Removing all images forcefully"
    docker rmi -f $(docker images -aq)
else
    echo "No images exist"
fi

if [[ $(docker volume ls -qf dangling=true) = *[!\ ]* ]]; then
    echo "Removing all remaining volumes forcefully"
    docker volume rm $(docker volume ls -qf dangling=true)
else
    echo "No extraneous volumes exist"
fi

echo "Logging out of the DBaaS docker registry"
docker logout https://repo.rdbs.ctl.io:16002
