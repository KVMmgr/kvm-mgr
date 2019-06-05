#!/bin/sh

tar xzf kvmmgr.tar.gz
mv kvmmgr ~/kvm-mgr
cp make-install.sh ~/kvm-mgr/make-install.sh
cp README.md ~/kvm-mgr/README.md
chmod 755 ~/kvm-mgr/kvm-mgr.sh
chmod 755 ~/kvm-mgr/make-install.sh
chmod 755 ~/kvm-mgr/status.bash
chmod 666 ~/kvm-mgr/vm/vm.conf.example
if [ ! -d "~/bin" ];then
  mkdir ~/bin
fi
ln -s ~/kvm-mgr/kvm-mgr.sh ~/bin/kvm-mgr
echo "Done. use the command kvm-mgr."
