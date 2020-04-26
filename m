From: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v5 6/7] xarm: dts: rockchip: Add nfc dts for RV1108 SOC
Date: Sun, 26 Apr 2020 18:11:45 +0800
Message-ID: <20200426101146.14797-2-yifeng.zhao@rock-chips.com>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426101146.14797-1-yifeng.zhao@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200426101146.14797-1-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Add nfc(nand flash controller) node for RV1108 Soc.

Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/rv1108.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index f9cfe2c80791..970d55db867b 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -451,6 +451,17 @@
 		#reset-cells = <1>;
 	};
 
+	nfc: nand-controller@30100000 {
+		compatible = "rockchip,rv1108_nfc";
+		reg = <0x30100000  0x1000>;
+		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "ahb", "nfc";
+		assigned-clocks = <&cru SCLK_NANDC>;
+		assigned-clock-rates = <150000000>;
+		status = "disabled";
+	};
+
 	emmc: mmc@30110000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30110000 0x4000>;
-- 
2.17.1
