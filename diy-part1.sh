#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#
#SSR+
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
#
#
cd package/lean
#smartdns
git clone https://github.com/pymumu/smartdns.git
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git
#
#svn checkout https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-ssr-python-pro-server
#svn checkout https://github.com/Lienol/openwrt-package/trunk/lienol/luci-theme-argon-dark-mod
cd ../..
#
cd package/
#opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git
cd ../
#
./scripts/feeds update -a && ./scripts/feeds install -a
#rm ./tmp -rf
