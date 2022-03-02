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
#二次修改 lede不支持弃用
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
#git clone https://github.com/pymumu/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns
#二次修改
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns
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
mv -n openwrt-passwall ./packages/passwall
rm -rf ./packages/passwall/dns2socks
rm -rf ./packages/passwall/ipt2socks
rm -rf ./packages/passwall/microsocks
rm -rf ./packages/passwall/pdnsd-alt
########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld ./ssr-plus
mv -n ssr-plus/luci-app-ssr-plus ./
mv -n ssr-plus ./packages/
########################################luci-app-chinadns-ng#############################################
#原作者
git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng ./luci-app-chinadns-ng
#passwall内置了chinadns-ng，就不用这个重复了
#git clone https://github.com/pexcn/openwrt-chinadns-ng ./packages/chinadns-ng
############################################################################################################################################################
#################################################主题########################################################################################################
########################################luci-app-argon#############################################
#原作者
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
#git clone https://github.com/jerrykuku/luci-app-argon-config
#二次修改
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argonne
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-argonne-config
####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
