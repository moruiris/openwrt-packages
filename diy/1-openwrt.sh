#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
###########################################################################################################################################################

#######################################################################################################
###########luci-app-adguardhome
mkdir app_adguardhome
#原作者,弃用
#git clone https://github.com/rufengsuixing/luci-app-adguardhome ./app_adguardhome/luci-app-adguardhome
#二次修改,弃用
#git clone https://github.com/kongfl888/luci-app-adguardhome ./app_adguardhome/luci-app-adguardhome
#三次修改
git clone https://github.com/kenzok8/openwrt-packages
mv openwrt-packages/luci-app-adguardhome ./app_adguardhome/luci-app-adguardhome
mv openwrt-packages/adguardhome ./app_adguardhome/adguardhome
rm -rf openwrt-packages
#######################################################################################################

#######################################################################################################
###########luci-app-smartdns
mkdir app_smartdns
#原作者 openwrt已有
#git clone -b master https://github.com/pymumu/luci-app-smartdns ./app_smartdns/luci-app-smartdns
#smartdns依赖路径固定，不能添加，如 include ../../lang/rust/rust-package.mk
#git clone https://github.com/pymumu/openwrt-smartdns ./app_smartdns/smartdns
#二次修改
git clone https://github.com/kenzok8/openwrt-packages
mv openwrt-packages/luci-app-smartdns ./app_smartdns/luci-app-smartdns
mv openwrt-packages/smartdns ./app_smartdns/smartdns
rm -rf openwrt-packages
#######################################################################################################

#######################################################################################################
###########luci-theme-argon
makdir theme_argon
git clone https://github.com/jerrykuku/luci-theme-argon ./theme_argon/luci-theme-argon
#######################################################################################################





###########################################################################################################################################################
rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
