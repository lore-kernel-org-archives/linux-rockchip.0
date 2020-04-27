From: Chen-Yu Tsai <wens@kernel.org>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: misc. cleanups and improvements
Date: Mon, 27 Apr 2020 15:31:29 +0800
Message-ID: <20200427073132.29997-1-wens@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

Hi,

Here is the remaining patch for roc-rk3399-pc, along with a few other
new patches.

  - Based on discussions from v1, patch one, newly added, drops the list
    of valid values for linux,default-triggers.

  - Patch two is the same as in v1

  - Patch three, new, sets dr_mode to "host" to the dwc2 OTG controller,
    matching what the board uses it for, a host port. This gets rid of
    a warning from the kernel.

Please have a look.


Regards
ChenYu


Chen-Yu Tsai (3):
  dt-bindings: leds: common: Drop enumeration for linux,default-triggers
  arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED
    triggers
  arm64: dts: rockchip: rk3328-roc-cc: Set dr_mode to "host" for OTG

 .../devicetree/bindings/leds/common.yaml      | 21 +------------------
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |  1 +
 .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  8 +++++++
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  4 ++--
 4 files changed, 12 insertions(+), 22 deletions(-)

-- 
2.26.0
