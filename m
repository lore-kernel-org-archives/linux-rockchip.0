From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] arm64: dts: rockchip: Move xin32k fixed-clock out of PX30 DTSI
Date: Wed,  4 Dec 2019 18:15:37 +0100
Message-ID: <20191204171537.14163-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

This clock has nothing to do in the PX30 DTSI as it is supposed to be
an input of the SoC. Moving it to the EVB DTS (only board file using
this DTSI) makes more sense. Also, when this clock is not a fixed
clock and comes from eg. a PMIC the situation can be described cleanly
in the device tree (avoids having to delete the fixed-clock node
first).

This clock is not mandatory to boot so it should not break existing
users.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 7 +++++++
 arch/arm64/boot/dts/rockchip/px30.dtsi    | 7 -------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 6eb7407a84aa..ee0b677209e4 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -89,6 +89,13 @@
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	xin32k: xin32k {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+	};
 };
 
 &display_subsystem {
diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 1fd12bd09e83..06328f1b05e8 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -195,13 +195,6 @@
 		clock-output-names = "xin24m";
 	};
 
-	xin32k: xin32k {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <32768>;
-		clock-output-names = "xin32k";
-	};
-
 	pmu: power-management@ff000000 {
 		compatible = "rockchip,px30-pmu", "syscon", "simple-mfd";
 		reg = <0x0 0xff000000 0x0 0x1000>;
-- 
2.20.1
