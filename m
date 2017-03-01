From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 1/4] ARM: dts: rockchip: add rk3288 dw-mmc resets
Date: Thu,  2 Mar 2017 00:56:18 +0100
Message-ID: <20170301235621.31726-1-heiko@sntech.de>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

dw-mmc got its reset-properties specified, so add the softresets
for it in rk3288.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index df8a0dbe9d91..ad5d6022e95f 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -236,6 +236,8 @@
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0xff0c0000 0x4000>;
+		resets = <&cru SRST_MMC0>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -248,6 +250,8 @@
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0xff0d0000 0x4000>;
+		resets = <&cru SRST_SDIO0>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -260,6 +264,8 @@
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0xff0e0000 0x4000>;
+		resets = <&cru SRST_SDIO1>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -272,6 +278,8 @@
 		fifo-depth = <0x100>;
 		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0xff0f0000 0x4000>;
+		resets = <&cru SRST_EMMC>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
-- 
2.11.0
