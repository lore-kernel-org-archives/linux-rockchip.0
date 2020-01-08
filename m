From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 11/14] ARM: dts: rockchip: add vpll clock to hdmi node on
 rk3228
Date: Wed, 08 Jan 2020 21:07:51 +0000 (UTC)
Message-ID: <20200108210740.28769-12-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Kishon Vijay Abraham I <kishon@ti.com>, Zheng Yang <zhengyang@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add the hdmiphy clock as the vpll in hdmi node.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm/boot/dts/rk322x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 340ed6ccb08f..16ad240d5f7f 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -639,8 +639,8 @@
 		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 		assigned-clocks = <&cru SCLK_HDMI_PHY>;
 		assigned-clock-parents = <&hdmi_phy>;
-		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_CEC>;
-		clock-names = "isfr", "iahb", "cec";
+		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&hdmi_phy>, <&cru SCLK_HDMI_CEC>;
+		clock-names = "isfr", "iahb", "vpll", "cec";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
 		resets = <&cru SRST_HDMI_P>;
-- 
2.17.1
