Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED1D0C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntOZtrWOlUSz/rLC6EXGwP5frZKYF0KPVIrCfny1GQM=; b=b9IDE3cQYiXsxp
	uhrbbMI/GNpH1sc39RavOIKoNM7cxF+hXPsYeSsrDWR8wdFL7IBHduqtIIjCxLleOC/bHy1hJ4tyz
	t0sa+jn4dlfCCBlCi/vHdd1Vaqyoo8otNwlTqs4Xpc0fH8UDecYG764s4GVMdxJtTVFlaIX3pJpoj
	7jHTxbWYL7FvvqsIYGgzJXuyZYoINGzkkyqPiYNxyFu1Nm7I1G5r1OPLv7OIupMPjYLy8PPS7UoIZ
	FY/pzWmBHpMcRqJx0AM9vEFt+5nhCslKd1DXprJjpliGF4DxDBmbTuhfvnrwYHfyodrOnqmalaC2M
	fz+CHbZ5+KM01eT6HEOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfPr-005Fcq-CC; Thu, 18 Aug 2022 13:18:31 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOerA-004kR4-K4
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:44 +0000
Received: by mail-pl1-x62d.google.com with SMTP id w14so1392145plp.9
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=qrFyneyFSEREG27ka8r2EwiT5RjFK1T81ZexEenkLGk=;
        b=EXGKNAC3cgJHWF7X/epi1Fc4TAlPI5nU6kTi2nvcAl+9xIsagyn3ldtl3ZGgqrrN3+
         1X6hvr0okP9Rwyzewa7lRdr443Sas3AJ3dCLTuLBGNKq8tggsf4L5Bj5NPLMkRyea91J
         MODPfDeoyvFqjhp+Kqz9KIOvbxichKnj52fyAml8OJGPtWFO6tDOmYh23VQv4AptFsGk
         qElitYKbVWD3cYx+pTdw8TdC4UmNJSNEjz1O4aU2DgfBJVkh3rK9jzVzrjewb1eMS4oS
         kigftfq90A46cQJJHsPsgNQiihC5TMFfnMyQJV6KWSeiXb/neUXvVGU4ekm0a1ewu4X+
         1otg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=qrFyneyFSEREG27ka8r2EwiT5RjFK1T81ZexEenkLGk=;
        b=6SYI8gnKS1Ch+UKcO4nPNIMzFSEi2JaXShUyu4jqS10lpzRaZujB4SycCPjl2ckWU1
         XH9xnsz5D+xGPmYjcNdfEMPO5HZqNVUUrM4mx2CHNHtQB6p8WEkMBNaEzFGbo9XToR+M
         qZ3lFdbdBG3O7KipKDf5fEYffiRNp7N2uOjLQUYb8k6440DHlbK5qHLtO8fNyMZNOdiN
         mG3oVmpfbgzaisa8jF0ujcYRsjUyA9+q8KX5qdvOiVrcyytulCX6VuNex2zbWU2E+3uj
         fjXA9KcvgtBLM58YdWeFx7hPFgoTsmW3sOVG11id5N2claKAK96j4wHHbT/gMHXdAfZz
         M4Tg==
X-Gm-Message-State: ACgBeo0dfVnYwYLjtbhapNBojgSpXl171X17iMYAib5/Jap5PnYRj+Kn
	IubBvUKI1JhEjlN6QPl7h0rN+5lxSVmCphzjYOjxvA==
X-Google-Smtp-Source: AA6agR40jq/QOgD8jHVW+ixChzGlHBsZno3zNr1FyJ4s92ZPWp7NmnNicKi4ywaez7h/MbIuQetnJA==
X-Received: by 2002:a17:90b:3b4d:b0:1f4:d1b6:cb69 with SMTP id ot13-20020a17090b3b4d00b001f4d1b6cb69mr2958240pjb.229.1660826558758;
        Thu, 18 Aug 2022 05:42:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:38 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Jon Lin <jon.lin@rock-chips.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v3 15/19] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Date: Thu, 18 Aug 2022 18:11:28 +0530
Message-Id: <20220818124132.125304-16-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054240_944002_57366893 
X-CRM114-Status: GOOD (  14.67  )
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

RV1126 is a high-performance vision processor SoC for IPC/CVR,
especially for AI related application.

It is based on quad-core ARM Cortex-A7 32-bit core which integrates
NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
hybrid operation and computing power is up to 2.0TOPs.

This patch add basic core dtsi support.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- update cru and power file names
Changes for v2:
- split pinctrl in separate patch

 arch/arm/boot/dts/rv1126.dtsi | 500 ++++++++++++++++++++++++++++++++++
 1 file changed, 500 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
new file mode 100644
index 000000000000..235bfb126e92
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126.dtsi
@@ -0,0 +1,500 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+#include <dt-bindings/clock/rockchip,rv1126-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rockchip,rv1126-power.h>
+#include <dt-bindings/soc/rockchip,boot-mode.h>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	compatible = "rockchip,rv1126";
+
+	interrupt-parent = <&gic>;
+
+	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@f00 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf00>;
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu1: cpu@f01 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf01>;
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu2: cpu@f02 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf02>;
+			clocks = <&cru ARMCLK>;
+		};
+
+		cpu3: cpu@f03 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0xf03>;
+			clocks = <&cru ARMCLK>;
+		};
+	};
+
+	arm-pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+		clock-frequency = <24000000>;
+	};
+
+	xin24m: oscillator {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "xin24m";
+		#clock-cells = <0>;
+	};
+
+	grf: syscon@fe000000 {
+		compatible = "rockchip,rv1126-grf", "syscon", "simple-mfd";
+		reg = <0xfe000000 0x20000>;
+	};
+
+	pmugrf: syscon@fe020000 {
+		compatible = "rockchip,rv1126-pmugrf", "syscon", "simple-mfd";
+		reg = <0xfe020000 0x1000>;
+
+		pmu_io_domains: io-domains {
+			compatible = "rockchip,rv1126-pmu-io-voltage-domain";
+			status = "disabled";
+		};
+	};
+
+	qos_emmc: qos@fe860000 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe860000 0x20>;
+	};
+
+	qos_nandc: qos@fe860080 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe860080 0x20>;
+	};
+
+	qos_sfc: qos@fe860200 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe860200 0x20>;
+	};
+
+	qos_sdio: qos@fe86c000 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe86c000 0x20>;
+	};
+
+	gic: interrupt-controller@feff0000 {
+		compatible = "arm,gic-400";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		#address-cells = <0>;
+
+		reg = <0xfeff1000 0x1000>,
+		      <0xfeff2000 0x2000>,
+		      <0xfeff4000 0x2000>,
+		      <0xfeff6000 0x2000>;
+		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	pmu: power-management@ff3e0000 {
+		compatible = "rockchip,rv1126-pmu", "syscon", "simple-mfd";
+		reg = <0xff3e0000 0x1000>;
+
+		power: power-controller {
+			compatible = "rockchip,rv1126-power-controller";
+			#power-domain-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			power-domain@RV1126_PD_NVM {
+				reg = <RV1126_PD_NVM>;
+				clocks = <&cru HCLK_EMMC>,
+					 <&cru CLK_EMMC>,
+					 <&cru HCLK_NANDC>,
+					 <&cru CLK_NANDC>,
+					 <&cru HCLK_SFC>,
+					 <&cru HCLK_SFCXIP>,
+					 <&cru SCLK_SFC>;
+				pm_qos = <&qos_emmc>,
+					 <&qos_nandc>,
+					 <&qos_sfc>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RV1126_PD_SDIO {
+				reg = <RV1126_PD_SDIO>;
+				clocks = <&cru HCLK_SDIO>,
+					 <&cru CLK_SDIO>;
+				pm_qos = <&qos_sdio>;
+				#power-domain-cells = <0>;
+			};
+		};
+	};
+
+	i2c0: i2c@ff3f0000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff3f0000 0x1000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&pmucru CLK_I2C0>, <&pmucru PCLK_I2C0>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c2: i2c@ff400000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff400000 0x1000>;
+		interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,grf = <&pmugrf>;
+		clocks = <&pmucru CLK_I2C2>, <&pmucru PCLK_I2C2>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c2_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	dmac: dma-controller@ff4e0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0xff4e0000 0x4000>;
+		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC>;
+		clock-names = "apb_pclk";
+	};
+
+	uart1: serial@ff410000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff410000 0x100>;
+		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&pmucru SCLK_UART1>, <&pmucru PCLK_UART1>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 7>, <&dmac 6>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart1m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	pmucru: clock-controller@ff480000 {
+		compatible = "rockchip,rv1126-pmucru";
+		reg = <0xff480000 0x1000>;
+		rockchip,grf = <&grf>;
+		#clock-cells = <1>;
+		#reset-cells = <1>;
+	};
+
+	cru: clock-controller@ff490000 {
+		compatible = "rockchip,rv1126-cru";
+		reg = <0xff490000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
+		rockchip,grf = <&grf>;
+		#clock-cells = <1>;
+		#reset-cells = <1>;
+	};
+
+	i2c1: i2c@ff510000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff510000 0x1000>;
+		interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C1>, <&cru PCLK_I2C1>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c1_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c3: i2c@ff520000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff520000 0x1000>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C3>, <&cru PCLK_I2C3>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c3m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c4: i2c@ff530000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff530000 0x1000>;
+		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C4>, <&cru PCLK_I2C4>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c4m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c5: i2c@ff540000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff540000 0x1000>;
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C5>, <&cru PCLK_I2C5>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c5m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	uart0: serial@ff560000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff560000 0x100>;
+		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 5>, <&dmac 4>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart2: serial@ff570000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff570000 0x100>;
+		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 9>, <&dmac 8>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart2m1_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart3: serial@ff580000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff580000 0x100>;
+		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 11>, <&dmac 10>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart3m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart4: serial@ff590000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff590000 0x100>;
+		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
+		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac 13>, <&dmac 12>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart4m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	uart5: serial@ff5a0000 {
+		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
+		reg = <0xff5a0000 0x100>;
+		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <24000000>;
+		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
+		dmas = <&dmac 15>, <&dmac 14>;
+		clock-names = "baudclk", "apb_pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart5m0_xfer>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
+
+	saradc: saradc@ff5e0000 {
+		compatible = "rockchip,rk3399-saradc";
+		reg = <0xff5e0000 0x100>;
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		#io-channel-cells = <1>;
+		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
+		clock-names = "saradc", "apb_pclk";
+		resets = <&cru SRST_SARADC_P>;
+		reset-names = "saradc-apb";
+		status = "disabled";
+	};
+
+	timer: timer@ff660000 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0xff660000 0x20>;
+		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
+		clock-names = "pclk", "timer";
+	};
+
+	emmc: mmc@ffc50000 {
+		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0xffc50000 0x4000>;
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_EMMC>, <&cru CLK_EMMC>,
+			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		power-domains = <&power RV1126_PD_NVM>;
+		status = "disabled";
+	};
+
+	sdmmc: mmc@ffc60000 {
+		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0xffc60000 0x4000>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDMMC>, <&cru CLK_SDMMC>,
+			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		status = "disabled";
+	};
+
+	sdio: mmc@ffc70000 {
+		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0xffc70000 0x4000>;
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDIO>, <&cru CLK_SDIO>,
+			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		power-domains = <&power RV1126_PD_SDIO>;
+		status = "disabled";
+	};
+
+	pinctrl: pinctrl {
+		compatible = "rockchip,rv1126-pinctrl";
+		rockchip,grf = <&grf>;
+		rockchip,pmu = <&pmugrf>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		gpio0: gpio0@ff460000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff460000 0x100>;
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio1: gpio1@ff620000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff620000 0x100>;
+			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio2: gpio2@ff630000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff630000 0x100>;
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio3: gpio3@ff640000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff640000 0x100>;
+			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio4: gpio4@ff650000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0xff650000 0x100>;
+			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
+
+#include "rv1126-pinctrl.dtsi"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
