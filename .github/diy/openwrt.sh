#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

########################################luci-app-smartdns#############################################
#原作者 openwrt已有
mkdir ./packages_luci-app-smartdns/
git clone -b master https://github.com/pymumu/luci-app-smartdns && mv ./luci-app-smartdns ./packages_luci-app-smartdns/
git clone https://github.com/pymumu/openwrt-smartdns ./smartdns && mv ./smartdns ./packages_luci-app-smartdns/
#####################################################################################################

########################################luci-app-adguardhome##########################################
#原作者
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#二次修改
git clone https://github.com/kongfl888/luci-app-adguardhome
#######################################################################################################

#################################################主题########################################################################################################
########################################luci-app-argon#############################################
git clone https://github.com/jerrykuku/luci-theme-argon.git
###########################################################################################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
