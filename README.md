1. 下载软件

```Bash
#wget http://caspian.dotconf.net/menu/Software/SendEmail/sendEmail-v1.56.tar.gz
#或者使用目录下sendEmail-v1.56.tar.gz压缩包
```

2.创建执行目录
```Bash
[ -d /usr/local/ ] || mkdir -p /usr/local/bin
```
3.解压软件
```Bash
tar zxf sendEmail-v1.56.tar.gz -C /usr/src
```
4.进入目录
```Bash
cd /usr/src/sendEmail-v1.56
```
5.复制文件，并设置权限
```Bash
cp -a sendEmail /usr/local/bin
chmod +x /usr/local/bin/sendEmail
```
6.安装组件
```Bash
yum install perl-Net-SSLeay perl-IO-Socket-SSL -y
```
7.测试邮件功能
```Bash
# /usr/local/bin/sendEmail -f from@163.com -t to@qq.com -s smtp.163.com -u "我是邮件主题" -o message-content-type=html -o message-charset=utf8 -xu from@163.com -xp 123456 -m "我是邮件内容"
```
命令说明：

```
    /usr/local/bin/sendEmail        命令主程序
    -f from@163.com                 发件人邮箱
    -t to@163.com                   收件人邮箱
    -s smtp.163.com                 发件人邮箱的smtp服务器
    -u "我是邮件主题"                 邮件的标题
    -o message-content-type=html    邮件内容的格式,html表示它是html格式
    -o message-charset=utf8         邮件内容编码
    -xu from@163.com                发件人邮箱的用户名
    -xp 123456                      发件人邮箱密码
    -m "我是邮件内容"                 邮件的具体内容
```
