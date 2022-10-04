# Delete old files
rm -rf lede
# Clone new lede
git clone https://github.com/coolsnowwolf/lede
cd lede
# Add SSRP
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
# Update and install feeds
./scripts/feeds update -a
./scripts/feeds install -a
# Passwall
git clone -b packages --depth=1 https://github.com/xiaorouji/openwrt-passwall.git ./package/lean/passwall_package
git clone -b luci --depth=1 https://github.com/xiaorouji/openwrt-passwall.git ./package/lean/passwall
cp -rf ./package/lean/passwall_package/* ./package/lean/passwall
rm -rf ./package/lean/passwall_package
# Openclash
git clone -b master --depth=1 https://github.com/vernesong/OpenClash.git ./package/lean/luci-app-openclash
mkdir -p ./package/lean/openclash
cp -rf ./package/lean/luci-app-openclash/luci-app-openclash/* ./package/lean/openclash
rm -rf ./package/lean/luci-app-openclash
# Mosdns
git clone -b master --depth=1 https://github.com/QiuSimons/openwrt-mos ./package/mosdns
# Theme Argon
# rm -rf ./package/feeds/luci/luci-theme-argon
# git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon
git clone -b master --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git ./package/lean/luci-app-argon-config
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.10/g' package/base-files/files/bin/config_generate
# Modify default Hostname
sed -i 's/OpenWrt/OtakuWrt/g' package/base-files/files/bin/config_generate
# Menuconfig
make menuconfig
# Make seed file
make defconfig
./scripts/diffconfig.sh > seed.config
