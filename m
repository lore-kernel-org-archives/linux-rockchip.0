From: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: fix rk3328-roc-cc gmac2io stability
 issues
Date: Thu, 28 Feb 2019 17:01:29 +0200
Message-ID: <20190228150129.28637-1-papadakospan@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The rk3328-roc-cc board exhibits tx stability issues with large packets,
as does the rock64 board, which was fixed with this patch
https://patchwork.kernel.org/patch/10178969/

A similar patch was made for the rk3328-roc-cc here
https://patchwork.kernel.org/patch/10804863/
but it doesn't include the tx/rx fixes, and I fins that they
help with an issue where large transfers would bring the ethernet
link down, causing a reset.

Signed-off-by: Leonidas P. Papadakos <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 99d0d9912950..0e34354b2092 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -104,11 +104,12 @@
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmiim1_pins>;
+	snps,force_thresh_dma_mode;
 	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
-	tx_delay = <0x25>;
-	rx_delay = <0x11>;
+	tx_delay = <0x24>;
+	rx_delay = <0x18>;
 	status = "okay";
 };
 
-- 
2.21.0
