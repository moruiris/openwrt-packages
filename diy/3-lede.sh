#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}



###########################################################################################################################################################
########################################luci-app-adguardhome##########################################
mkdir luci-app-adguardhome
mkdir luci-app-adguardhome_packages
#原作者,弃用
#git clone https://github.com/rufengsuixing/luci-app-adguardhome ./luci-app-adguardhome
#二次修改,弃用
#git clone https://github.com/kongfl888/luci-app-adguardhome ./luci-app-adguardhome
#三次修改,弃用
git clone https://github.com/kenzok8/openwrt-packages
mv openwrt-packages/luci-app-adguardhome ./luci-app-adguardhome
mv openwrt-packages/adguardhome ./luci-app-adguardhome_packages
rm -rf openwrt-packages
#######################################################################################################

########################################luci-app-smartdns#############################################
mkdir luci-app-smartdns
mkdir luci-app-smartdns_packages
#原作者 openwrt已有
#git clone -b master https://github.com/pymumu/luci-app-smartdns ./luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns ./luci-app-smartdns_packages
#二次修改
git clone -b master https://github.com/pymumu/luci-app-smartdns ./luci-app-smartdns
git clone https://github.com/kenzok8/openwrt-packages
mv openwrt-packages/smartdns ./luci-app-smartdns_packages
rm -rf openwrt-packages
#####################################################################################################

########################################luci-app-ssr-plus#############################################
mkdir luci-app-ssr-plus
mkdir luci-app-ssr-plus_packages
#原作者
git clone https://github.com/fw876/helloworld
mv helloworld/luci-app-ssr-plus ./luci-app-ssr-plus
mv helloworld/* ./luci-app-ssr-plus_packages
rm -rf helloworld
#######################################################################################################

########################################luci-app-argon#############################################
#原作者
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config
#####################################################################################################
############################################################################################################################################################



rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
