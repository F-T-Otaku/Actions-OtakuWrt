# Action-WRT编译说明

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/F-T-Otaku/Actions-OtakuWrt/blob/main/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/F-T-Otaku/Actions-OtakuWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/F-T-Otaku/Actions-OtakuWrt.svg?style=flat-square&label=Forks&logo=github)



## 说明

本项目Fork自：[仓库地址](https://github.com/F-T-Otaku/Actions-OtakuWrt/)@F-T-Otaku，使用GitHub Actions为X86/R2S/Pi4/Acrh17/R1Plus/R4S构建OpenWrt。

**Pi4/R4S/R2S/R1Plus的版本非常激进。（通过使用immortalwrt的master分支）**，**使用前，请确保你能接受各种意外情况，如断线和崩溃。**

本人通过@F-T-Otaku的仓库的配置再进行一轮最小化功能配置或增加一些基础功能，比如DDNS等，一般不多做改动，本人只有x86平台。

## 使用方法

- 点击[**发布版本**](https://github.com/F-T-Otaku/Actions-OtakuWrt/releases)并下载你需要的固件。

## 提示

- 默认登录地址是 [192.168.0.1](192.168.0.1)
- 默认的用户名是**root**，密码是**password**
- 功能上默认只有最小化内容，用户可以通过`seed.config`和`part.sh`自定义引用软件

## 想要构建你自己的版本吗？

- 点击分支按钮创建一个新的仓库。
- 使用[Lede](https://github.com/coolsnowwolf/lede)（适用于x86和acrh17）或[ImmortalWrt](https://github.com/immortalwrt/immortalwrt/tree/master)（适用于其他）的源代码生成`.config`文件。
- 你可以通过工作流文件中的环境变量来更改源代码。 [**教程**](https://p3terx.com/archives/build-openwrt-with-github-actions.html)
- 在`SEED`文件夹中添加你自己的`seed.config`。 [**教程**](https://github.com/coolsnowwolf/lede/issues/2288)
- 在Actions页面上选择`Build OpenWrt`。
- 点击`Run workflow`按钮。
- 当构建完成时，点击Actions页面右上角的`Artifacts`按钮下载二进制文件。

## 鸣谢

- [ImmortalWrt](https://github.com/immortalwrt/immortalwrt)
- [P3TERX的Actions](https://github.com/P3TERX/Actions-OpenWrt)
- [GitHub Actions](https://github.com/features/actions)
- [QiuSimons的YAOF](https://github.com/QiuSimons/YAOF)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean的OpenWrt](https://github.com/coolsnowwolf/lede)

## 许可证

[MIT](https://github.com/F-T-Otaku/Actions-OtakuWrt/blob/main/LICENSE) © F-T-Otaku
