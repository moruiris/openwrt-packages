#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

########################################luci-app-smartdns#############################################
#原作者 openwrt已有
git clone -b master https://github.com/pymumu/luci-app-smartdns 
git clone https://github.com/pymumu/openwrt-smartdns luci-app-smartdns_packages
#####################################################################################################

########################################luci-app-adguardhome##########################################
#原作者,弃用
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#二次修改,弃用
#git clone https://github.com/kongfl888/luci-app-adguardhome
#三次修改
git clone https://github.com/kenzok8/openwrt-packages
mv openwrt-packages/luci-app-adguardhome ./
mkdir luci-app-adguardhome_packages
mv openwrt-packages/adguardhome luci-app-adguardhome_packages/
rm -rf openwrt-packages
#######################################################################################################

#################################################主题########################################################################################################
########################################luci-app-argon#############################################
git clone https://github.com/jerrykuku/luci-theme-argon.git
###########################################################################################################################################################



rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
