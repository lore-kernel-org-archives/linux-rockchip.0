From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 2/4] ARM: dts: rockchip: add rk3036 dw-mmc resets
Date: Thu,  2 Mar 2017 00:56:19 +0100
Message-ID: <20170301235621.31726-2-heiko@sntech.de>
References: <20170301235621.31726-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170301235621.31726-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

dw-mmc got its reset-properties specified, so add the softresets
for it in rk3036.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/boot/dts/rk3036.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index ff9b90bfaefd..ec91325d3b6e 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -250,6 +250,8 @@
 		clock-names = "biu", "ciu";
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+		resets = <&cru SRST_MMC0>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -262,6 +264,8 @@
 		clock-names = "biu", "ciu", "ciu_drv", "ciu_sample";
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+		resets = <&cru SRST_SDIO>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -286,6 +290,8 @@
 		num-slots = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+		resets = <&cru SRST_EMMC>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
-- 
2.11.0
