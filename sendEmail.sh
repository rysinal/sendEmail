#!bin/bash

#发件人
from=""

#密码
pawd=""

#邮箱smpt服务器
smpt="smpt.163.com"

#收件人
to=$1

#标题
subject=$2

#内容
body=$3

#发送邮件
/usr/local/bin/sendEmail -f ${from} -t ${to} -s ${smpt} -u ${subject} -o message-content-type=html -o message-charset=utf-8 -xu ${from} -xp ${pawd} -m ${body} 

