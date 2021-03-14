#
# Copyright (c) 2021 F-T-Otaku
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Action-OpenWrt-x86-r2s-pi4-acrh17
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
