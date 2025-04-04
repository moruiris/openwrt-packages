#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

########################################luci-app-smartdns#############################################
#原作者 openwrt已有
#git clone https://github.com/pymumu/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns ./luci-app-smartdns-package
#二次修改
git clone https://github.com/kenzok8/openwrt-packages && mv openwrt-packages/luci-app-smartdns ./ && mv openwrt-packages/smartdns ./luci-app-smartdns-package && rm -rf openwrt-packages
#####################################################################################################

########################################luci-app-adguardhome##########################################
#原作者
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#二次修改
git clone https://github.com/kongfl888/luci-app-adguardhome
#######################################################################################################

########################################luci-app-passwall##########################################
git clone https://github.com/xiaorouji/openwrt-passwall-packages ./luci-app-passwall-package
#rm -rf ./openwrt-passwall/dns2socks
#rm -rf ./openwrt-passwall/ipt2socks
#rm -rf ./openwrt-passwall/microsocks
#rm -rf ./openwrt-passwall/pdnsd-alt
#原作者 第1版luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall ./passwall && mv passwall/luci-app-passwall ./ && rm -rf passwall
#原作者 第2版luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2 ./passwall && mv passwall/luci-app-passwall2 ./ && rm -rf passwall
#######################################################################################################

########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld ./luci-app-ssr-plus-package && mv luci-app-ssr-plus-package/luci-app-ssr-plus ./
#######################################################################################################

########################################luci-app-chinadns-ng#############################################
#原作者
#git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng ./luci-app-chinadns-ng
#passwall内置了chinadns-ng，就不用这个重复了
#git clone https://github.com/pexcn/openwrt-chinadns-ng ./luci-app-chinadns-ng-package
#二次修改
git clone -b luci https://github.com/moruiris/openwrt-chinadns-ng ./luci-app-chinadns-ng
#passwall内置了chinadns-ng，就不用这个重复了
#git clone https://github.com/moruiris/openwrt-chinadns-ng ./luci-app-chinadns-ng-package
############################################################################################################

#################################################主题########################################################################################################
########################################luci-app-argon#############################################
#原作者
git clone https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config
###########################################################################################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
