# Actions-OtakuWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/F-T-Otaku/Actions-OtakuWrt/blob/main/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/F-T-Otaku/Actions-OtakuWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/F-T-Otaku/Actions-OtakuWrt.svg?style=flat-square&label=Forks&logo=github)

Build OpenWrt for X86/R2S/Pi4/Acrh17/R1Plus/R4S using GitHub Actions.

**Pi4/R4S/R2S/R1Plus version is very aggressive.(By using master branch of immortalwrt)**

**Please make sure you can accept various unexpected situations such as disconnection and crash before use.**

## Usage

- ~~Follwo me~~ Click [**Releases**](https://github.com/F-T-Otaku/Actions-OtakuWrt/releases) and download the firmware you need.

## Tips

- Default login address of **x86/pi4** is [10.10.10.10](10.10.10.10)
- Default login address of **r4s/r2s/r1plus/acrh17** is [10.0.0.1](10.0.0.1)
- Default login address of **r1s-h5** is [192.168.3.1](192.168.3.1)
- Default username is **root** and password is **password**.(Universal for all versions)
- This version of OpenWrt is very simple.lt has only a small part of luci's apps.
- If you want more applications, fork my repo and make your own version.
- Or, you can use the action with **ssh** to make your own version.

## Want to build your own version?

- Click the Fork button to create a new repository.
- Generate `.config` files using [Lede](https://github.com/coolsnowwolf/lede) (for x86 and acrh17) or [ImmortalWrt](https://github.com/immortalwrt/immortalwrt/tree/master) (for others) source code. 
- You can change source code through environment variables in the workflow file. [**Tutorials**](https://p3terx.com/archives/build-openwrt-with-github-actions.html)
- Add your own `seed.config` to `SEED` folder. [**Tutorials**](https://github.com/coolsnowwolf/lede/issues/2288)
- Select `Build OpenWrt` on the Actions page.
- Click the `Run workflow` button.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

## Acknowledgments

- [ImmortalWrt](https://github.com/immortalwrt/immortalwrt)
- [P3TERX's Actions](https://github.com/P3TERX/Actions-OpenWrt)
- [GitHub Actions](https://github.com/features/actions)
- [QiuSimons's YAOF](https://github.com/QiuSimons/YAOF)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)

## License

[MIT](https://github.com/F-T-Otaku/Actions-OtakuWrt/blob/main/LICENSE) © F-T-Otaku
