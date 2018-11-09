### atclient的openwrt编译教程

以mt7620为例:
```
cd ~/openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64
git clone https://github.com/lyq1996/openwrt-atclient.git package/openwrt-atclient
make package/openwrt-atclient/compile V=99

```
成功时的输出:
```
Packaged contents of /mnt/d/openwrt/openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64/build_dir/target-mipsel_24kc_musl/atclient-1.0.1/ipkg-mipsel_24kc/atclient into /mnt/d/openwrt/openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64/bin/packages/mipsel_24kc/base/atclient_1.0.1-2_mipsel_24kc.ipk
make[2]: Leaving directory '/mnt/d/openwrt/openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64/package/openwrt-atclient'
time: package/openwrt-atclient/compile#3.70#19.56#36.10
make[1]: Leaving directory '/mnt/d/openwrt/openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64'
```

生成的ipk位于openwrt-sdk-ramips-mt7620_gcc-7.3.0_musl.Linux-x86_64/bin/packages/mipsel_24kc/base/atclient_1.0.1-2_mipsel_24kc.ipk，当然这个地址不唯一。  

scp上传到路由器上`opkg install atclient_1.0.1-2_mipsel_24kc.ipk`就可以了。

接下来可能会去完善一下atclient的主程序，毕竟C语言弄得再深入也不为过。

