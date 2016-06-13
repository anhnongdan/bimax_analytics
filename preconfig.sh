#!/bin/bash
echo "nameserver 172.16.64.177" >> /etc/resolv.conf
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
yum -y install http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
yum -y --enablerepo=elrepo-kernel install kernel-ml
systemctl stop firewalld
systemctl disable firewalld
systemctl stop postfix
systemctl disable postfix
setenforce 0
sed -i /etc/selinux/config -r -e 's/^SELINUX=.*/SELINUX=disabled/g'
yum upgrade -y ca-certificates
yum install -y wget epel-release ntp net-tools rsync bc sysstat net-snmp net-snmp-utils
yum install -y http://pkgs.repoforge.org/bwm-ng/bwm-ng-0.5-2.el6.rf.x86_64.rpm
ln -f -s /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
ntpdate time.nist.gov
rpm -i http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
##### edit repo####
flag=f
cat /etc/yum.repos.d/remi.repo | while read line
do
	if [[ "$line" != 'enabled=0' && "$line" != '[remi]' && "$line" != '[remi-php56]' ]]
	then
		echo "$line" >> /etc/yum.repos.d/remiedit.repo
		if [[ "$line" =~ "[" ]]
		then
			flag=f
		fi
	elif [[ "$line" == '[remi]' || "$line" == '[remi-php56]' ]]
	then
		flag=t
		echo "$line" >> /etc/yum.repos.d/remiedit.repo
	elif [[ $flag == "t" ]]
	then 
		echo "enabled=1" >> /etc/yum.repos.d/remiedit.repo
	elif [[ $flag == "f" ]]
	then
		echo "$line" >> /etc/yum.repos.d/remiedit.repo
	fi	
done
rm -f /etc/yum.repos.d/remi.repo
######
update-ca-trust enable
wget -O /etc/pki/ca-trust/source/anchors/GeoTrust_Global_CA.pem "https://www.geotrust.com/resources/root_certificates/certificates/GeoTrust_Global_CA.pem"
wget -O /etc/pki/ca-trust/source/anchors/GeoTrust_SSL_G3.pem "http://geotrust.tbs-certificats.com/GeoTrust_SSL_CA_G3.crt"
update-ca-trust extract
systemctl enable snmpd
systemctl disable NetworkManager
systemctl stop NetworkManager
init 6
