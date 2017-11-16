#/bin/sh
/usr/sbin/pkg

# Install sudo package
pkg install -y sudo
echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /usr/local/etc/sudoers.d/wheel
chmod 0440 /usr/local/etc/sudoers.d/wheel

mkdir /usr/home/vagrant/.ssh
chmod 700 /usr/home/vagrant/.ssh
cd /usr/home/vagrant/.ssh
curl 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' > authorized_keys
chmod 600 /usr/home/vagrant/.ssh/authorized_keys
chown -R vagrant /usr/home/vagrant/.ssh
