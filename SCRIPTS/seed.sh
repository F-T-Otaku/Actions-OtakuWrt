cd lede
# Menuconfig
make menuconfig
# Make seed file
make defconfig
./scripts/diffconfig.sh > seed.config
