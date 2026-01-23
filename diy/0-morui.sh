#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
###########################################################################################################################################################


########################################luci-app-smartdns#############################################
#原作者 openwrt已有
git clone -b master https://github.com/pymumu/luci-app-smartdns 
#git clone https://github.com/pymumu/openwrt-smartdns luci-app-smartdns_packages
#####################################################################################################


###########################################################################################################################################################
rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
