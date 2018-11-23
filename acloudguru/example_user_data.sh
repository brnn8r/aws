!#/bin/bash
yum update -y
yum install httpd -y
service httpd start
systemctl enable httpd.service
aws s3 sync s3://mywebsitebucket-stovetech /var/www/html/