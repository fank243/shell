if [ "$1" = "" ]; then
  echo "请在命令后追加jdk绝对路径"
  exit;
fi

# 获取当前目录
dir=$(dirname $(readlink -f "$0"))

# 创建目录
sudo mkdir -p /opt/local/java

# 复制文件
sudo cp $1 /opt/local/java

cd /opt/local/java

sudo tar zxf jdk-8u202-linux-x64.tar.gz

# 向/etc/profile写入环境变量
sudo cp /etc/profile /etc/profile.bak

sudo cat $dir/profile >> /etc/profile

source /etc/profile

java -version

echo "java install finished ..."
