From: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] ARM: dts: rockchip: Bump sd card pin drive strength up on
 firefly boards
Date: Thu, 21 Jan 2016 13:57:13 +0100
Message-ID: <1453381033-3479-1-git-send-email-w.egorov@phytec.de>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, naobsd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

It seems some firefly boards need 12mA drive strength for sdmmc.
Using 4mA/8mA drive strength will cause the kernel to fail to recognize
the sd card correctly.
Increased the sdmmc lines drive strength from 4mA to 12mA.

Signed-off-by: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/boot/dts/rk3288-firefly.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 4e3fd9a..49ec20d 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -408,6 +408,11 @@
 		output-low;
 	};
 
+	pcfg_pull_up_drv_12ma: pcfg-pull-up-drv-12ma {
+		bias-pull-up;
+		drive-strength = <12>;
+	};
+
 	act8846 {
 		pwr_hold: pwr-hold {
 			rockchip,pins = <0 1 RK_FUNC_GPIO &pcfg_output_high>;
@@ -457,6 +462,25 @@
 	};
 
 	sdmmc {
+		/*
+		 * Default drive strength isn't enough to achieve even
+		 * high-speed mode on firefly board so bump up to 12ma.
+		 */
+		sdmmc_bus4: sdmmc-bus4 {
+			rockchip,pins = <6 16 RK_FUNC_1 &pcfg_pull_up_drv_12ma>,
+					<6 17 RK_FUNC_1 &pcfg_pull_up_drv_12ma>,
+					<6 18 RK_FUNC_1 &pcfg_pull_up_drv_12ma>,
+					<6 19 RK_FUNC_1 &pcfg_pull_up_drv_12ma>;
+		};
+
+		sdmmc_clk: sdmmc-clk {
+			rockchip,pins = <6 20 RK_FUNC_1 &pcfg_pull_none_12ma>;
+		};
+
+		sdmmc_cmd: sdmmc-cmd {
+			rockchip,pins = <6 21 RK_FUNC_1 &pcfg_pull_up_drv_12ma>;
+		};
+
 		sdmmc_pwr: sdmmc-pwr {
 			rockchip,pins = <7 11 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
1.9.1
