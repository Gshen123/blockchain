#! /bin/sh

version=1.0
chmod +x startdemo.sh

echo "########################docker fast start#########################"
docker container restart police-ca
docker container restart police-peer
docker container restart insurance-ca
docker container restart insurance-peer
docker container restart repairshop-ca
docker container restart repairshop-peer
docker container restart shop-ca
docker container restart shop-peer
docker container restart orderer0
docker container restart web

echo "########################docker loading end########################"
docker ps

echo "ERR?? <docker stop $(docker ps -a -q)> please "
echo "ERR?? <chomd +x startdemo.sh> please "
