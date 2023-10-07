#!/bin/bash
#
# Copyright (c) 2023 F-T-Otaku
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-OtakuWrt
# File name: m68s-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add a feed source
# Add SSRP to openwrt feeds
#sed -i "/helloworld/d" "feeds.conf.default"
#echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
# Add Passwall to openwrt feeds
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
