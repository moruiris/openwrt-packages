#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
############################################################################################################################################################
#################################################弃用##########################################################################################

############################################################################################################################################################
#################################################软件##########################################################################################
########################################luci-app-adguardhome##########################################
#原作者,弃用
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#弃用，版本固定 更新不了
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
#二次修改
git clone https://github.com/kongfl888/luci-app-adguardhome
########################################luci-app-chinadns-ng#############################################
#原作者
git clone -b luci https://github.com/moruiris/openwrt-chinadns-ng ./luci-app-chinadns-ng
#源码已有下列依赖
#git clone https://github.com/pexcn/openwrt-chinadns-ng
############################################################################################################################################################
#################################################主题########################################################################################################

####################################################################################



rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0