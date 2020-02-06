# 卸载软件
# sudo apt-get remove docker docker-engine docker.io containerd runc

# 安装软件

sudo apt-get install docker-ce

docker -v

mkdir -p /etc/docker

cp $dir/damemon.json /etc/docker

echo "docker install finished ..."
