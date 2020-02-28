From: Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v2 0/2] Add support for the pine64 Pinebook Pro
Date: Fri, 28 Feb 2020 21:38:04 +0100
Message-ID: <20200228203806.346299-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>
Cc: Douglas Anderson <dianders@chromium.org>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, Alexis Ballier <aballier@gentoo.org>, Matthias Kaehlcke <mka@chromium.org>, Nick Xie <nick@khadas.com>, Kever Yang <kever.yang@rock-chips.com>, Vivek Unune <npcomplete13@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Tobias Schramm <t.schramm@manjaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Vasily Khoruzhick <anarsoul@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

This patchset adds an initial dts and compatible string for the rk3399
based Pinebook Pro 14" laptop.

This is version 2 of the original patchset with fixes proposed by Heiko.

Contrary to the Rockchip BSP dts proposed mid January this dts has a
power tree reflecting the actual schematic of the device and features
full display, audio and WiFi/Bluetooth support.

Changelog:
 v2: Incorporate review by Heiko

Tobias Schramm (2):
  dt-bindings: Add doc for pine64 Pinebook Pro
  arm64: dts: rockchip: Add initial support for Pinebook Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 1119 +++++++++++++++++
 3 files changed, 1125 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts

-- 
2.24.1
