dnf reinstall cronie

systemctl start crond

systemctl restart crond

systemctl status crond.service

systemctl enable crond

chmod +x ./code_20260303.sh

bash ./code_20260303.sh

## 添加文本
crontab -e

0 2 * * 0 /usr/local/share/info/CleanUpLogs/code_20260303.sh >> /usr/local/share/info/clean_logs.log 2>&1

## 查看是否生效

crontab -l
