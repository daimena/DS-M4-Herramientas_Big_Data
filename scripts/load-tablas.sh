set -euxo pipefail

sudo docker cp hive-server/load-tablas.hql hive-server:/home/load-tablas.hql
sudo docker exec hive-server hive -f /home/load-tablas.hql