#!/bin/sh -e
set -o pipefail

[ -d /etc/chinadns-ng ] || mkdir /etc/chinadns-ng
wget https://jsd.cdn.zzko.cn/gh/pexcn/daily@gh-pages/chnroute/chnroute.txt -O /tmp/chnroute.txt.tmp
mv -f /tmp/chnroute.txt.tmp /etc/chinadns-ng/chnroute.txt
wget https://jsd.cdn.zzko.cn/gh/pexcn/daily@gh-pages/chnroute/chnroute6.txt -O /tmp/chnroute6.txt.tmp
mv -f /tmp/chnroute6.txt.tmp /etc/chinadns-ng/chnroute6.txt
wget https://jsd.cdn.zzko.cn/gh/pexcn/daily@gh-pages/gfwlist/gfwlist.txt -O /tmp/gfwlist.txt.tmp
mv -f /tmp/gfwlist.txt.tmp /etc/chinadns-ng/gfwlist.txt
wget https://jsd.cdn.zzko.cn/gh/pexcn/daily@gh-pages/chinalist/chinalist.txt -O /tmp/chinalist.txt.tmp
mv -f /tmp/chinalist.txt.tmp /etc/chinadns-ng/chinalist.txt

/etc/init.d/chinadns-ng restart
