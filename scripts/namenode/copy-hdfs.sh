set -euxo pipefail

mkdir -p /home/Datasets
hdfs dfs -mkdir -p /data

echo Copiando archivos
hdfs dfs -put /home/Datasets/* /data
echo Listo