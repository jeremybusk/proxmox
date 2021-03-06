apt update && apt upgrade
#pvecm add 10.1.1.12
timedatectl set-timezone Etc/UTC

cd /tmp
wget https://repo.zabbix.com/zabbix/3.4/debian/pool/main/z/zabbix-release/zabbix-release_3.4-1+stretch_all.deb
dpkg -i zabbix-release_3.4-1+stretch_all.deb
apt update
apt -y install zabbix-agent
sed -i 's/^Server=.*/Server=monitor-proxies.example.com/g' /etc/zabbix/zabbix_agentd.conf
systemctl restart zabbix-agent
