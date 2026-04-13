#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
###########################################################################################################################################################
git clone -b morui https://github.com/moruiris/openwrt-packages ./morui
mv ./morui/app_adguardhome ./app_adguardhome
mv ./morui/app_smartdns ./app_smartdns
#######################################################################################################
###########luci-theme-argon
makdir theme_argon
git clone https://github.com/jerrykuku/luci-theme-argon ./theme_argon/luci-theme-argon
#######################################################################################################





###########################################################################################################################################################
rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
