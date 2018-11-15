### atclient的openwrt编译教程

以mt7620为例:
```
cd ~/openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64
git clone https://github.com/lyq1996/openwrt-atclient.git package/openwrt-atclient
make menuconfig
make package/openwrt-atclient/compile V=99
```

成功时的输出:
```
Packaged contents of /mnt/d/openwrt/openwrt-sdk-18.06.1-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64/build_dir/target-mipsel_24kc_musl/atclient-2.0.0/ipkg-mipsel_24kc/atclient into /mnt/d/openwrt/openwrt-sdk-18.06.1-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64/bin/packages/mipsel_24kc/base/atclient_2.0.0-1_mipsel_24kc.ipk
```

生成的ipk位于openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64/bin/packages/mipsel_24kc/base/atclient_2.0.0-1_mipsel_24kc.ipk，当然这个路径不唯一。  

scp上传到路由器上再执行`opkg install atclient_2.0.0-1_mipsel_24kc.ipk`即可安装至路由器的/bin目录，运行方法详见[atclient](https://github.com/lyq1996/atclient/blob/master/README.md#运行)