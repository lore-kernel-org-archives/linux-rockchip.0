From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: remove broken-cd from sdio0
Date: Fri, 15 Jul 2016 09:10:05 +0800
Message-ID: <1468545005-21382-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

commit 1ade61c141e2 ("arm64: dts: rockchip: remove broken-cd
from emmc and sdio") was intended to remove the abuse of
broken-cd property from mmc. But somehow it forgot to remove
this property from sdio0 node. Let's remove it now.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3368-r88.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 82a32e5..eed1ef6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -248,7 +248,6 @@
 &sdio0 {
 	assigned-clocks = <&cru SCLK_SDIO0>;
 	assigned-clock-parents = <&cru PLL_CPLL>;
-	broken-cd;
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
-- 
2.3.7
