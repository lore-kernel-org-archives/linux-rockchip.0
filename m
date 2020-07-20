From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 05/16] arm: dts: rockchip: Add HDMI out for RockPI N8/N10
Date: Tue, 21 Jul 2020 00:21:09 +0530
Message-ID: <20200720185120.671064-6-jagan@amarulasolutions.com>
References: <20200720185120.671064-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200720185120.671064-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

This patch adds support to enable HDMI out for
N10 and N8 combinations SBCs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3288-vmarc-som.dtsi            | 10 ++++++++++
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 12 +++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 20 +++++++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/arch/arm/dts/rk3288-vmarc-som.dtsi b/arch/arm/dts/rk3288-vmarc-som.dtsi
index 72a503e50d..717cb3dc81 100644
--- a/arch/arm/dts/rk3288-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3288-vmarc-som.dtsi
@@ -38,6 +38,12 @@
 	snps,reset-gpio = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 };
 
+&hdmi {
+	ddc-i2c-bus = <&i2c5>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec_c0>;
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	status = "okay";
@@ -225,6 +231,10 @@
 	};
 };
 
+&i2c5 {
+	status = "okay";
+};
+
 &pinctrl {
 	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
 		drive-strength = <8>;
diff --git a/arch/arm/dts/rk3399pro-vmarc-som.dtsi b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
index 111d6cf9a4..ebccc4a153 100644
--- a/arch/arm/dts/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
@@ -39,6 +39,12 @@
 	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
 };
 
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <30>;
@@ -285,6 +291,12 @@
 	};
 };
 
+&i2c3 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
 &io_domains {
 	status = "okay";
 	bt656-supply = <&vcca_1v8>;
diff --git a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
index d2b6ead148..26b53eac47 100644
--- a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -66,6 +66,10 @@
 	status = "okay";
 };
 
+&hdmi {
+	status = "okay";
+};
+
 &pwm0 {
 	status = "okay";
 };
@@ -94,3 +98,19 @@
 &uart2 {
 	status = "okay";
 };
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
-- 
2.25.1
