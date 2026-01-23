#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}



###########################################################################################################################################################
########################################luci-app-adguardhome##########################################
#原作者,弃用
#git clone https://github.com/rufengsuixing/luci-app-adguardhome ./luci-app-adguardhome
#二次修改,弃用
#git clone https://github.com/kongfl888/luci-app-adguardhome ./luci-app-adguardhome
#三次修改,弃用
git clone https://github.com/kenzok8/openwrt-packages
mv openwrt-packages/luci-app-adguardhome ./luci-app-adguardhome
mv openwrt-packages/adguardhome ./luci-app-adguardhome/adguardhome
rm -rf openwrt-packages
#######################################################################################################

########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld
mv helloworld/luci-app-ssr-plus ./luci-app-ssr-plus
mv helloworld ./luci-app-ssr-plus/ssr-plus
#######################################################################################################
###########################################################################################################################################################



rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
