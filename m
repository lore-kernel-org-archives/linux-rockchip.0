From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/2] arm64: dts: add bus to rockchip amba nodenames
Date: Mon,  2 Mar 2020 16:30:47 +0100
Message-ID: <20200302153047.17101-2-jbx6244@gmail.com>
References: <20200302153047.17101-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200302153047.17101-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: amba: $nodename:0:
'amba' does not match
'^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

AMBA is a open standard for the connection and
management of functional blocks in a SoC.
It's compatible with 'simple-bus', so fix this error
by adding 'bus' to all Rockchip 'amba' nodes.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/simple-bus.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4f484119f..215515ccb 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -700,7 +700,7 @@
 		clock-names = "pclk", "timer";
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 3bd5bc860..ac43bc3f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -513,7 +513,7 @@
 		status = "disabled";
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index bad41bc6f..d9490f417 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -142,7 +142,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a0df61c61..2079e877a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -136,7 +136,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 33cc21fcf..63355ba7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -197,7 +197,7 @@
 		#clock-cells = <0>;
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
-- 
2.11.0
