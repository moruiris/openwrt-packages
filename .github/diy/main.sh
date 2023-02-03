#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
##############################################################################################################################################
##############################################################################################################################################
##############################################################################################################################################
#################################################弃用##########################################################################################
########################################luci-app-netdata-实时监控#############################################
#原作者
#二次修改
#git clone https://github.com/sirpdboy/luci-app-netdata
########################################luci-app-oaf-应用过滤#############################################
#原作者
#svn co https://github.com/destan19/OpenAppFilter/trunk ./openwrt-oaf
#mv -n openwrt-oaf/luci-app-oaf ./luci-app-oaf
########################################luci-app-netspeedtest- 网络速度测试#############################################
#原作者
#svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
#rm -rf ./luci-app-netspeedtest/po/zh_Hans
##############################################################################################################################################
#################################################软件##########################################################################################
########################################luci-app-smartdns#############################################
#原作者
git clone https://github.com/pymumu/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns
#二次修改
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns
#svn co https://github.com/kenzok8/openwrt-packages/trunk/smartdns ././openwrt-smartdns
########################################luci-app-adguardhome##########################################
#原作者
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#弃用，版本固定 更新不了
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
#二次修改
git clone https://github.com/kongfl888/luci-app-adguardhome
########################################luci-app-passwall#############################################
#原作者
git clone https://github.com/xiaorouji/openwrt-passwall
mv -n openwrt-passwall/luci-app-passwall ./
########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld ./openwrt-ssr-plus
mv -n openwrt-ssr-plus/luci-app-ssr-plus ./
########################################luci-app-chinadns-ng#############################################
#原作者
git clone -b luci https://github.com/moruiris/openwrt-chinadns-ng ./luci-app-chinadns-ng
#passwall内置了chinadns-ng，就不用这个重复了
git clone https://github.com/pexcn/openwrt-chinadns-ng
############################################################################################################################################################
#################################################主题########################################################################################################
########################################luci-app-argon#############################################
#原作者
#git clone https://github.com/jerrykuku/luci-theme-argon.git

####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
