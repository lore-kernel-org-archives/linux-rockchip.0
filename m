From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 1/3] arm64: dts: rockchip: Remove always-on properties from
 regulator nodes on rk3399-roc-pc.
Date: Tue, 10 Dec 2019 13:44:38 +0100
Message-ID: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Some regulators don't need the always-on property, remove it.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 2 --
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 3 ---
  2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2c9c13a0fca9..2db9d32ad54a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -32,8 +32,6 @@ vcc3v3_pcie: vcc3v3-pcie {
  		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc3v3_pcie_en>;
-		regulator-always-on;
-		regulator-boot-on;
  		regulator-min-microvolt = <3300000>;
  		regulator-max-microvolt = <3300000>;
  		vin-supply = <&dc_12v>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9a1ce3a4ae12..8e01b04144b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -176,7 +176,6 @@ vcc5v0_host: vcc5v0-host-regulator {
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc5v0_host_en &hub_rst>;
  		regulator-name = "vcc5v0_host";
-		regulator-always-on;
  		vin-supply = <&vcc_sys>;
  	};
  
@@ -198,7 +197,6 @@ vcc_sys: vcc-sys {
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc_sys_en>;
  		regulator-name = "vcc_sys";
-		regulator-always-on;
  		regulator-boot-on;
  		regulator-min-microvolt = <5000000>;
  		regulator-max-microvolt = <5000000>;
@@ -392,7 +390,6 @@ regulator-state-mem {
  
  			vcc_sdio: LDO_REG4 {
  				regulator-name = "vcc_sdio";
-				regulator-always-on;
  				regulator-boot-on;
  				regulator-min-microvolt = <1800000>;
  				regulator-max-microvolt = <3000000>;
-- 
2.24.0
