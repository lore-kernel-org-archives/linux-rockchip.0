From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/3] move Rockchip usbphy under the GRF mfd
Date: Thu, 31 Mar 2016 15:43:29 +0200
Message-ID: <1459431812-6286-1-git-send-email-heiko@sntech.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The usb2 phy used on rk3288 and before is fully part of the
GRF, so similar to other phys repositioned recently, it
should live under GRF node as well.

Patch 1 should go through the phy-tree, hopefully into 4.7
and I'll pick patches 2 and 3 myself for 4.8 then.


Heiko Stuebner (3):
  phy: rockchip-usb: should be a child device of the GRF
  ARM: dts: rockchip: make rk3288-grf a simple-mfd
  ARM: dts: rockchip: move rk3288 usbphy under the GRF node

 .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 27 +++++----
 arch/arm/boot/dts/rk3288.dtsi                      | 65 +++++++++++-----------
 drivers/phy/phy-rockchip-usb.c                     | 14 ++++-
 3 files changed, 60 insertions(+), 46 deletions(-)

-- 
2.6.4
