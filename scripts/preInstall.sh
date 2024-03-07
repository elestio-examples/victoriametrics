#set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./grafanadata
mkdir -p ./vmdata

chown -R 472:1000 ./grafanadata
chown -R 472:1000 ./vmdata