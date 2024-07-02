#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
##############################################################################################################################################
##############################################################################################################################################
##############################################################################################################################################
#################################################弃用##########################################################################################
########################################luci-app-chinadns-ng#############################################
#原作者
# git clone -b luci https://github.com/moruiris/openwrt-chinadns-ng ./luci-app-chinadns-ng
# git clone https://github.com/pexcn/openwrt-chinadns-ng
##############################################################################################################################################
#################################################软件##########################################################################################
########################################luci-app-smartdns#############################################
#原作者
#git clone -b lede https://github.com/pymumu/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns
#二次修改
git clone https://github.com/kenzok8/openwrt-packages && mv openwrt-packages/luci-app-smartdns ./ && mv openwrt-packages/smartdns ./openwrt-smartdns && rm -rf openwrt-packages
########################################luci-app-adguardhome##########################################
#原作者
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#二次修改
git clone https://github.com/kongfl888/luci-app-adguardhome
########################################luci-app-passwall#############################################
git clone https://github.com/xiaorouji/openwrt-passwall-packages ./openwrt-passwall
#rm -rf ./openwrt-passwall/dns2socks
#rm -rf ./openwrt-passwall/ipt2socks
#rm -rf ./openwrt-passwall/microsocks
#rm -rf ./openwrt-passwall/pdnsd-alt
#原作者 第1版luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall ./passwall && mv passwall/luci-app-passwall ./ && rm -rf passwall
#原作者 第2版luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2 ./passwall && mv passwall/luci-app-passwall2 ./ && rm -rf passwall
########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld ./openwrt-ssr-plus && mv openwrt-ssr-plus/luci-app-ssr-plus ./
############################################################################################################################################################
#################################################主题########################################################################################################
########################################luci-app-argon#############################################
#原作者
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config
####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
