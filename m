From: Sugar Zhang <sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 05/13] ARM: dts: rk322x: Add 'arm,pl330-periph-burst' for dmac
Date: Tue,  9 Jun 2020 09:20:15 +0800
Message-ID: <1591665623-38275-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1591665267-37713-1-git-send-email-sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, vkoul-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sugar Zhang <sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This patch Add the quirk to specify to use burst transfer
for better compatible and higher performance.

Signed-off-by: Sugar Zhang <sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

---

Changes in v2:
- fix FATAL ERROR: Unable to parse input tree

 arch/arm/boot/dts/rk322x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 5485a99..bd043a8 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -109,6 +109,7 @@
 			#dma-cells = <1>;
 			clocks = <&cru ACLK_DMAC>;
 			clock-names = "apb_pclk";
+			arm,pl330-periph-burst;
 		};
 	};
 
-- 
2.7.4
