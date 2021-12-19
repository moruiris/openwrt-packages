#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
##############################################################################################################################################
##############################################################################################################################################

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome

git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng ./luci-app-chinadns-ng
git clone https://github.com/pexcn/openwrt-chinadns-ng

git clone https://github.com/jerrykuku/luci-theme-argon.git

####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
