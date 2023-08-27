set -euxo pipefail

sudo docker cp ../Datasets namenode:/home

sudo docker cp namenode/copy-hdfs.sh namenode:/home/copy-hdfs.sh
sudo docker exec namenode bash /home/copy-hdfs.sh