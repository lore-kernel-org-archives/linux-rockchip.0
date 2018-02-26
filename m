From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: move rk3399-sapphire PCIe to excavator
 baseboard
Date: Mon, 26 Feb 2018 19:57:21 +0100
Message-ID: <20180226185721.2582-1-vicencb@gmail.com>
References: <3840224.sEPfbROKII@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3840224.sEPfbROKII@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The PCIe signals are routed through the connector to the baseboard.

Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Tested-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 .../arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 15 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi         | 15 ---------------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 56952d1a3fb8..4d47150d6862 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -190,6 +190,21 @@
 	status = "okay";
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
+	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
+	assigned-clock-rates = <100000000>;
+	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	status = "okay";
+};
+
 &pinctrl {
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index e5b0369e197f..8c7db887f2cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -471,21 +471,6 @@
 	gpio1830-supply = <&vcc_3v0>;
 };
 
-&pcie_phy {
-	status = "okay";
-};
-
-&pcie0 {
-	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
-	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
-	assigned-clock-rates = <100000000>;
-	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
-	num-lanes = <4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn_cpm>;
-	status = "okay";
-};
-
 &pmu_io_domains {
 	pmu1830-supply = <&vcc_3v0>;
 	status = "okay";
-- 
2.16.2
