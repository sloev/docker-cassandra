_dirname=$(dirname $0)
_dirname="./$_dirname/"

image_name="sloev_cassandra_image"
container_name="sloev_cassandra_container"

vol="/data/epital_dockers/cassandra/"
mkdir $vol

docker build --rm -t $image_name $_dirname
docker run -v $vol:/var/lib/cassandra -d -p 9042:9042 --name $container_name $image_name
