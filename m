From: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: [PATCH AUTOSEL 4.19 096/191] ARM: dts: rockchip: explicitly set
 vcc_sd0 pin to gpio on rk3188-radxarock
Date: Sat,  9 Nov 2019 21:38:38 -0500
Message-ID: <20191110024013.29782-96-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191110024013.29782-1-sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>

[ Upstream commit a2df0984e73fd9e1dad5fc3f1c307ec3de395e30 ]

It is good practice to make the setting of gpio-pinctrls explicitly in the
devicetree, and in this case even necessary.
Rockchip boards start with iomux settings set to gpio for most pins and
while the linux pinctrl driver also implicitly sets the gpio function if
a pin is requested as gpio that is not necessarily true for other drivers.

The issue in question stems from uboot, where the sdmmc_pwr pin is set
to function 1 (sdmmc-power) by the bootrom when reading the 1st-stage
loader. The regulator controlled by the pin is active-low though, so
when the dwmmc hw-block sets its enabled bit, it actually disables the
regulator. By changing the pin back to gpio we fix that behaviour.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Signed-off-by: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
 arch/arm/boot/dts/rk3188-radxarock.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index 45fd2b302dda1..4a2890618f6fc 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -93,6 +93,8 @@
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_pwr>;
 		startup-delay-us = <100000>;
 		vin-supply = <&vcc_io>;
 	};
@@ -315,6 +317,12 @@
 		};
 	};
 
+	sd0 {
+		sdmmc_pwr: sdmmc-pwr {
+			rockchip,pins = <RK_GPIO3 1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		host_vbus_drv: host-vbus-drv {
 			rockchip,pins = <0 3 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.20.1
