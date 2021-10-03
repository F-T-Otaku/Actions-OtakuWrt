#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-OtakuWrt
# File name: lede-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add a feed source
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git jerryk https://github.com/jerrykuku/openwrt-package' >>feeds.conf.default
#git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus
