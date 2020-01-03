# 获取当前目录
dir=$(dirname $(readlink -f "$0"))

# 卸载软件
sudo yum remove docker docker-engine docker.io containerd runc

# 安装软件

sudo yum install docker-ce

docker -v

mkdir -p /etc/docker

cp $dir/damemon.json /etc/docker

echo "docker install finished ..."
