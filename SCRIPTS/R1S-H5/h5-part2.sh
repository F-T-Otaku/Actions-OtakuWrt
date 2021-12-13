#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-OtakuWrt
# File name: h5-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.233.1/g' package/base-files/files/bin/config_generate
# Modify default Hostname
sed -i 's/ImmortalWrt/OtakuWrt/g' package/base-files/files/bin/config_generate
