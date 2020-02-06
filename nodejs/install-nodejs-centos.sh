# 卸载软件
sudo yum remove nodejs

# 安装软件
sudo yum install nodejs

# 查看版本
node -v && npm -v

# 全局切换到淘宝源
npm config set registry https://registry.npm.taobao.org

# 检测是否切换到了淘宝源
npm info underscore

echo "nodejs install finished"

