Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 762ABC67861
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Apr 2024 17:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v6pDKSSqeJXfKufWhRna1ytuaPOnnLqGzFmR+iqipHQ=; b=IvJZYmUQsfM1Qd
	VRc4ARY6WCB7vkTnQruDPTn7EH0/ouZLQAw66nHwdRXdNoC0ewXh3jE9zMC8lhSbME3NnUxf6hzdN
	XpjXhNWcclnUBi4MfRkO7nPOuZliVIw09FWpa+C0s7D8ehSGcUmJMPQaOwQZD2s8QUc0ZhJ9e6OCD
	R4VGU1jquY8ULM87xvXxbwsfSBsD8DlmEKGGuXqdQ69M5xBhC6R1E9ysULuVeXs1a8CadDKf66Xij
	Hu4BMxYpcEZgl5ndS1o4GX3WiKkHtx9yPy7Dff4C915df1Tnnko+wk6q47/ccS9dqrEjpZ1ysAleG
	389Yhp00J/AdszHbDWpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt9qn-0000000AjRm-1aSE;
	Sat, 06 Apr 2024 17:29:09 +0000
Received: from out-187.mta0.migadu.com ([91.218.175.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt9qk-0000000AjP0-36te
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Apr 2024 17:29:08 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1712424533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wmteI53yHflokmy3bcAqjXJSf6/ioCpsjf02iKZumUg=;
	b=osqaEnqku9jhzCWOX1IrDw4/5d/+bjrjlWC3dj7QOO5bcFbm8b5dEJVfHAUXVRHH7J05Sp
	LP20Bq9/nyE/bglxbxnI2d54LEQ/Mkx0QAEVj2PIbO+zbpzp+52Kpwhc5anilrOLoWyMNH
	HNb6sxqcz4Ja1yktZSEEMaiIJbRjmuVKHYZnyWNTAgdvvXf0jiKrgfTo+HWlLBrtqXvSPB
	CiZxj6T08diI1faxWrN48x0a2thBj/mpYNpTdn2rehB/81c58TapAk+lUPMleSg9y30j4x
	lDVqpSg9ke7Ym0NChpflhNxSA/aS24oEraB2nlReMMGJHgtRP7AqUUM40Emmeg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: rk3588s: Fix ordering of nodes
Date: Sat,  6 Apr 2024 19:28:04 +0200
Message-ID: <20240406172821.34173-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_102907_096052_B17A1674 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix the ordering of the main nodes by sorting them alphabetically and
then the ones with a memory address sequentially by that address.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 304 +++++++++++-----------
 1 file changed, 152 insertions(+), 152 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 89d40cff635f..ac5bd630f155 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -347,6 +347,11 @@ l3_cache: l3-cache {
 		};
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	firmware {
 		optee: optee {
 			compatible = "linaro,optee-tz";
@@ -394,11 +399,6 @@ spll: clock-0 {
 		#clock-cells = <0>;
 	};
 
-	display_subsystem: display-subsystem {
-		compatible = "rockchip,display-subsystem";
-		ports = <&vop_out>;
-	};
-
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH 0>,
@@ -436,6 +436,62 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	gpu: gpu@fb000000 {
+		compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
+		reg = <0x0 0xfb000000 0x0 0x200000>;
+		#cooling-cells = <2>;
+		assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
+		assigned-clock-rates = <200000000>;
+		clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
+			 <&cru CLK_GPU_STACKS>;
+		clock-names = "core", "coregroup", "stacks";
+		dynamic-power-coefficient = <2982>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "job", "mmu", "gpu";
+		operating-points-v2 = <&gpu_opp_table>;
+		power-domains = <&power RK3588_PD_GPU>;
+		status = "disabled";
+
+		gpu_opp_table: opp-table {
+			compatible = "operating-points-v2";
+
+			opp-300000000 {
+				opp-hz = /bits/ 64 <300000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-400000000 {
+				opp-hz = /bits/ 64 <400000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-500000000 {
+				opp-hz = /bits/ 64 <500000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-600000000 {
+				opp-hz = /bits/ 64 <600000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-700000000 {
+				opp-hz = /bits/ 64 <700000000>;
+				opp-microvolt = <700000 700000 850000>;
+			};
+			opp-800000000 {
+				opp-hz = /bits/ 64 <800000000>;
+				opp-microvolt = <750000 750000 850000>;
+			};
+			opp-900000000 {
+				opp-hz = /bits/ 64 <900000000>;
+				opp-microvolt = <800000 800000 850000>;
+			};
+			opp-1000000000 {
+				opp-hz = /bits/ 64 <1000000000>;
+				opp-microvolt = <850000 850000 850000>;
+			};
+		};
+	};
+
 	usb_host0_ehci: usb@fc800000 {
 		compatible = "rockchip,rk3588-ehci", "generic-ehci";
 		reg = <0x0 0xfc800000 0x0 0x40000>;
@@ -501,62 +557,6 @@ usb_host2_xhci: usb@fcd00000 {
 		status = "disabled";
 	};
 
-	gpu: gpu@fb000000 {
-		compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
-		reg = <0x0 0xfb000000 0x0 0x200000>;
-		#cooling-cells = <2>;
-		assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
-		assigned-clock-rates = <200000000>;
-		clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
-			 <&cru CLK_GPU_STACKS>;
-		clock-names = "core", "coregroup", "stacks";
-		dynamic-power-coefficient = <2982>;
-		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "job", "mmu", "gpu";
-		operating-points-v2 = <&gpu_opp_table>;
-		power-domains = <&power RK3588_PD_GPU>;
-		status = "disabled";
-
-		gpu_opp_table: opp-table {
-			compatible = "operating-points-v2";
-
-			opp-300000000 {
-				opp-hz = /bits/ 64 <300000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-400000000 {
-				opp-hz = /bits/ 64 <400000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-500000000 {
-				opp-hz = /bits/ 64 <500000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-600000000 {
-				opp-hz = /bits/ 64 <600000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-700000000 {
-				opp-hz = /bits/ 64 <700000000>;
-				opp-microvolt = <700000 700000 850000>;
-			};
-			opp-800000000 {
-				opp-hz = /bits/ 64 <800000000>;
-				opp-microvolt = <750000 750000 850000>;
-			};
-			opp-900000000 {
-				opp-hz = /bits/ 64 <900000000>;
-				opp-microvolt = <800000 800000 850000>;
-			};
-			opp-1000000000 {
-				opp-hz = /bits/ 64 <1000000000>;
-				opp-microvolt = <850000 850000 850000>;
-			};
-		};
-	};
-
 	pmu1grf: syscon@fd58a000 {
 		compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfd58a000 0x0 0x10000>;
@@ -702,74 +702,6 @@ i2c0: i2c@fd880000 {
 		status = "disabled";
 	};
 
-	vop: vop@fdd90000 {
-		compatible = "rockchip,rk3588-vop";
-		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
-		reg-names = "vop", "gamma-lut";
-		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
-		clocks = <&cru ACLK_VOP>,
-			 <&cru HCLK_VOP>,
-			 <&cru DCLK_VOP0>,
-			 <&cru DCLK_VOP1>,
-			 <&cru DCLK_VOP2>,
-			 <&cru DCLK_VOP3>,
-			 <&cru PCLK_VOP_ROOT>;
-		clock-names = "aclk",
-			      "hclk",
-			      "dclk_vp0",
-			      "dclk_vp1",
-			      "dclk_vp2",
-			      "dclk_vp3",
-			      "pclk_vop";
-		iommus = <&vop_mmu>;
-		power-domains = <&power RK3588_PD_VOP>;
-		rockchip,grf = <&sys_grf>;
-		rockchip,vop-grf = <&vop_grf>;
-		rockchip,vo1-grf = <&vo1_grf>;
-		rockchip,pmu = <&pmu>;
-		status = "disabled";
-
-		vop_out: ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			vp0: port@0 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <0>;
-			};
-
-			vp1: port@1 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <1>;
-			};
-
-			vp2: port@2 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <2>;
-			};
-
-			vp3: port@3 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <3>;
-			};
-		};
-	};
-
-	vop_mmu: iommu@fdd97e00 {
-		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
-		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
-		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
-		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
-		clock-names = "aclk", "iface";
-		#iommu-cells = <0>;
-		power-domains = <&power RK3588_PD_VOP>;
-		status = "disabled";
-	};
-
 	uart0: serial@fd890000 {
 		compatible = "rockchip,rk3588-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfd890000 0x0 0x100>;
@@ -1140,6 +1072,87 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};
 
+	av1d: video-codec@fdc70000 {
+		compatible = "rockchip,rk3588-av1-vpu";
+		reg = <0x0 0xfdc70000 0x0 0x800>;
+		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		assigned-clock-rates = <400000000>, <400000000>;
+		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		clock-names = "aclk", "hclk";
+		power-domains = <&power RK3588_PD_AV1>;
+		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
+	};
+
+	vop: vop@fdd90000 {
+		compatible = "rockchip,rk3588-vop";
+		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
+		reg-names = "vop", "gamma-lut";
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VOP>,
+			 <&cru HCLK_VOP>,
+			 <&cru DCLK_VOP0>,
+			 <&cru DCLK_VOP1>,
+			 <&cru DCLK_VOP2>,
+			 <&cru DCLK_VOP3>,
+			 <&cru PCLK_VOP_ROOT>;
+		clock-names = "aclk",
+			      "hclk",
+			      "dclk_vp0",
+			      "dclk_vp1",
+			      "dclk_vp2",
+			      "dclk_vp3",
+			      "pclk_vop";
+		iommus = <&vop_mmu>;
+		power-domains = <&power RK3588_PD_VOP>;
+		rockchip,grf = <&sys_grf>;
+		rockchip,vop-grf = <&vop_grf>;
+		rockchip,vo1-grf = <&vo1_grf>;
+		rockchip,pmu = <&pmu>;
+		status = "disabled";
+
+		vop_out: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vp0: port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+			};
+
+			vp1: port@1 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <1>;
+			};
+
+			vp2: port@2 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <2>;
+			};
+
+			vp3: port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@fdd97e00 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_VOP>;
+		status = "disabled";
+	};
+
 	i2s4_8ch: i2s@fddc0000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc0000 0x0 0x1000>;
@@ -1431,6 +1444,16 @@ qos_vop_m1: qos@fdf82200 {
 		reg = <0x0 0xfdf82200 0x0 0x20>;
 	};
 
+	dfi: dfi@fe060000 {
+		reg = <0x00 0xfe060000 0x00 0x10000>;
+		compatible = "rockchip,rk3588-dfi";
+		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
+		rockchip,pmu = <&pmu1grf>;
+	};
+
 	pcie2x1l1: pcie@fe180000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		bus-range = <0x30 0x3f>;
@@ -1533,16 +1556,6 @@ pcie2x1l2_intc: legacy-interrupt-controller {
 		};
 	};
 
-	dfi: dfi@fe060000 {
-		reg = <0x00 0xfe060000 0x00 0x10000>;
-		compatible = "rockchip,rk3588-dfi";
-		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
-		rockchip,pmu = <&pmu1grf>;
-	};
-
 	gmac1: ethernet@fe1c0000 {
 		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
 		reg = <0x0 0xfe1c0000 0x0 0x10000>;
@@ -2543,19 +2556,6 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
-
-	av1d: video-codec@fdc70000 {
-		compatible = "rockchip,rk3588-av1-vpu";
-		reg = <0x0 0xfdc70000 0x0 0x800>;
-		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vdpu";
-		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
-		assigned-clock-rates = <400000000>, <400000000>;
-		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
-		clock-names = "aclk", "hclk";
-		power-domains = <&power RK3588_PD_AV1>;
-		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
-	};
 };
 
 #include "rk3588s-pinctrl.dtsi"

base-commit: c1b1f340dd7db11f273e426e110697551c9f501f
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
