From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: add PCIe nodes on rk3399-rockpro64
Date: Fri, 10 May 2019 02:03:14 +0900
Message-ID: <20190509170314.12806-1-katsuhiro@katsuster.net>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds PCIe, PCIe phy and pinctrl (for PERST#) nodes for
RockPro64 board.

Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dts     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 20ec7d1c25d7..56d7eeedf07c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -513,6 +513,20 @@
 	gpio1830-supply = <&vcc_3v0>;
 };
 
+&pcie0 {
+	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_perst>;
+	vpcie12v-supply = <&vcc12v_dcin>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	num-lanes = <4>;
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
 &pmu_io_domains {
 	pmu1830-supply = <&vcc_3v0>;
 	status = "okay";
@@ -545,6 +559,10 @@
 		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie_perst: pcie-perst {
+			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	pmic {
-- 
2.20.1
