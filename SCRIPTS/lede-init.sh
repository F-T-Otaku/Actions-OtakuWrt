#  Delete old files
rm -rf lede
#  Clone new lede
git clone https://github.com/coolsnowwolf/lede
cd lede
#  Add Passwall to openwrt feeds
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
#  Add SSRP to openwrt feeds
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
# Update and install feeds
./scripts/feeds clean
./scripts/feeds update -a
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a
#  Modify default IP
sed -i 's/192.168.1.1/10.10.10.10/g' package/base-files/luci2/bin/config_generate
#  Modify default Hostname
sed -i 's/LEDE/OtakuWrt/g' package/base-files/luci2/bin/config_generate
#  Menuconfig
make menuconfig
#  Make seed file
make defconfig
./scripts/diffconfig.sh > seed.config
