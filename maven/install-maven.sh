# 获取当前目录
dir=$(dirname $(readlink -f "$0"))

# 创建目录
sudo mkdir -p /opt/local

# 官网下载
wget -P /opt/local -c http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

echo "文件下载完成..."

cd /opt/local

# 加压到指定目录
sudo tar zxf apache-maven-3.6.3-bin.tar.gz

mv apache-maven-3.6.3 maven

# 向/etc/profile写入环境变量
sudo cp /etc/profile /etc/profile.bak

sudo cat $dir/profile >> /etc/profile

source /etc/profile

mvn -v

echo "maven install finished ..."
