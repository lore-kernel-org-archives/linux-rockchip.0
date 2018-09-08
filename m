From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 3/4] arm64: dts: Sapphire board has DVS2 disabled
Date: Sat,  8 Sep 2018 21:00:47 +0200
Message-ID: <20180908190048.14231-4-vicencb@gmail.com>
References: <9e64e878-07c8-912c-c597-7da7b3f96dd6@collabora.com>
 <20180908190048.14231-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180908190048.14231-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The reference is the schematic, page 16:
https://dl.vamrs.com/products/sapphire_excavator/RK_SAPPHIRE_SOCBOARD_RK3399_LPDDR3D178P232SD8_V12_20161109HXS.pdf
(alternate link)
http://opensource.rock-chips.com/images/f/f0/RK_Sapphire_RK3399.rar

Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 68b497ad3..b1cb50595 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -241,7 +241,7 @@
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l &pmic_dvs2>;
+		pinctrl-0 = <&pmic_int_l>;
 		rockchip,system-power-controller;
 		wakeup-source;
 
@@ -489,11 +489,6 @@
 				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		pmic_dvs2: pmic-dvs2 {
-			rockchip,pins =
-				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-
 		vsel1_gpio: vsel1-gpio {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
-- 
2.18.0
