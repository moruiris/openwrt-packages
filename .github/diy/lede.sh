#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
##############################################################################################################################################
##############################################################################################################################################

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome

git clone https://github.com/xiaorouji/openwrt-passwall
mv -n openwrt-passwall/luci-app-passwall ./
rm -rf ./openwrt-passwall/dns2socks
rm -rf ./openwrt-passwall/ipt2socks
rm -rf ./openwrt-passwall/microsocks
rm -rf ./openwrt-passwall/pdnsd-alt

git clone https://github.com/fw876/helloworld ./openwrt-ssr-plus
mv -n openwrt-ssr-plus/luci-app-ssr-plus ./

git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng ./luci-app-chinadns-ng

git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config

####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
