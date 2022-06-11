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
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
svn co https://github.com/immortalwrt/packages/trunk/net/dns2socks package/immortalwrt/dns2socks
svn co https://github.com/immortalwrt/packages/trunk/net/microsocks package/immortalwrt/microsocks
svn co https://github.com/immortalwrt/packages/trunk/net/ipt2socks package/immortalwrt/ipt2socks
svn co https://github.com/immortalwrt/packages/trunk/net/pdnsd-alt package/immortalwrt/pdnsd-alt
svn co https://github.com/immortalwrt/packages/trunk/net/redsocks2 package/immortalwrt/redsocks2
git clone https://github.com/jerrykuku/luci-theme-argon package/jerrykuku/luci-theme-argon
svn co https://github.com/linkease/istore/trunk/luci/luci-app-store package/istore/luci-app-store
