From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [RFC PATCH] arm64: dts: rockchip: fix dmas dma-names for rk3308 i2s node
Date: Wed, 20 May 2020 08:48:16 +0200
Message-ID: <20200520064816.3954-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

One of the current rk3308 'i2s' nodes has a different dma layout
with only 1 item. Table 9-2 DMAC1 Request Mapping Table shows that
there 2 dma sources available, so fix the dmas and dma-names
for the rk3308 'i2s' node.

10 I2S/PCM_2CH_1 tx High level
11 I2S/PCM_2CH_1 rx High level

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac7f69407..79c1dd1fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -564,8 +564,8 @@
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_I2S1_2CH>, <&cru HCLK_I2S1_2CH>;
 		clock-names = "i2s_clk", "i2s_hclk";
-		dmas = <&dmac1 11>;
-		dma-names = "rx";
+		dmas = <&dmac1 10>, <&dmac1 11>;
+		dma-names = "tx", "rx";
 		resets = <&cru SRST_I2S1_2CH_M>, <&cru SRST_I2S1_2CH_H>;
 		reset-names = "reset-m", "reset-h";
 		status = "disabled";
-- 
2.11.0
