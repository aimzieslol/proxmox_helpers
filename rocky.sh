  pct create $1 /bad_btrfs/template/cache/rockylinux-9-default_20221109_amd64.tar.xz \
      -arch amd64 \
      -ostype unmanaged \
      -hostname $2 \
      -cores 1 \
      -memory 1024 \
      -swap 0 \
      -cmode shell \
      -force 1 \
      -storage bad_btrfs \
      -password="asdfjk" \
      -ssh-public-keys ~/.ssh/id_rsa.pub \
      -nameserver="1.1.1.1 1.0.0.1" \
      -features fuse=1,mknod=1,nesting=1 \
      -net0 name=eth0,bridge=vmbr0,firewall=0,gw=192.168.0.1,ip=dhcp,type=veth
