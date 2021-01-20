Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B643C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 23:42:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D594223603
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 23:42:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D594223603
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5tU30i25RH/o/YDu45DPBWbnaQXkvLvaTdD7/5KJUxk=; b=flU1wNHaMweush6FFltUrDXVdS
	hj8baQ63TIy9X+PEV8IenSi4g/ahwYVCPlWg8j0uLre+6IfoQ6fRBbEIjo9mCVpI0/CGVuzbeX8mG
	ZdTprNsLEZjIq9CtY+EbQcGgK0zALikHMCOve1BUtJz0Yeb3tHA4C5i/2denSXHUp6yeFTY0+OrUA
	31Lp79N8fK7wS/eeE/pgofOh4QS16Eu7HnryR5vbPj+P4H+awp6yH1QKJ3WkBACie5Q3Dxh4TXk4K
	cHEb3pJjjUzHbzn9YJUFBZNt5GfzMV/L1VB50iZPUw2PE9TiYdIJDCPNG6yK0PCEfZqSYxDFT2CuD
	Ym1R3Jcw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2N7Z-0005om-JH; Wed, 20 Jan 2021 23:42:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2N7S-0005mm-1h; Wed, 20 Jan 2021 23:42:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E2A41509;
 Wed, 20 Jan 2021 15:42:31 -0800 (PST)
Received: from DESKTOP-VLO843J.arm.com (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 280093F66E;
 Wed, 20 Jan 2021 15:42:29 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] ARM: dts: rockchip: Remove bogus "amba" bus nodes
Date: Wed, 20 Jan 2021 23:42:22 +0000
Message-Id: <e682edd25133bde2ed8198138febc90071530a51.1611186142.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <131e0ea065109760ea3b59c4bb90cf4fac7826f7.1611186142.git.robin.murphy@arm.com>
References: <131e0ea065109760ea3b59c4bb90cf4fac7826f7.1611186142.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_184234_242539_2146FE9F 
X-CRM114-Status: GOOD (  14.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The "amba" bus nodes wrapping all the DMA-330 nodes serve no useful
purpose, and certainly bear no relation at all to the actual underlying
interconnect topology. They appear to be cargo-cult copying from a
design misstep in the very early days of FDT adoption on ARM, which was
righted with the "arm,primecell" compatible, and the last trace of the
idea finally purged by commit 2ef7d5f342c1 ("ARM, ARM64: dts: drop
"arm,amba-bus" in favor of "simple-bus"").

As such, they can simply be removed and the DMA-330 nodes fitted into
the normal sort order.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 31 ++++++--------
 arch/arm/boot/dts/rk322x.dtsi | 29 +++++--------
 arch/arm/boot/dts/rk3288.dtsi | 81 ++++++++++++++++-------------------
 arch/arm/boot/dts/rk3xxx.dtsi | 81 ++++++++++++++++-------------------
 4 files changed, 97 insertions(+), 125 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 093567022386..0c83f178adb9 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -54,25 +54,6 @@
 		};
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		pdma: pdma@20078000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x20078000 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC2>;
-			clock-names = "apb_pclk";
-		};
-	};
-
 	arm-pmu {
 		compatible = "arm,cortex-a7-pmu";
 		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
@@ -494,6 +475,18 @@
 		status = "disabled";
 	};
 
+	pdma: pdma@20078000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x20078000 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC2>;
+		clock-names = "apb_pclk";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3036-pinctrl";
 		rockchip,grf = <&grf>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 48e6e8d44a1a..4d003afd0e3e 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -95,24 +95,6 @@
 		};
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		pdma: pdma@110f0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x110f0000 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC>;
-			clock-names = "apb_pclk";
-		};
-	};
-
 	arm-pmu {
 		compatible = "arm,cortex-a7-pmu";
 		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
@@ -464,6 +446,17 @@
 			<75000000>;
 	};
 
+	pdma: pdma@110f0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x110f0000 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC>;
+		clock-names = "apb_pclk";
+	};
+
 	thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>; /* milliseconds */
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 68d5a58cfe88..85ec376cd1b1 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -154,50 +154,6 @@
 		};
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		dmac_peri: dma-controller@ff250000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff250000 0x0 0x4000>;
-			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC2>;
-			clock-names = "apb_pclk";
-		};
-
-		dmac_bus_ns: dma-controller@ff600000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff600000 0x0 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC1>;
-			clock-names = "apb_pclk";
-			status = "disabled";
-		};
-
-		dmac_bus_s: dma-controller@ffb20000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xffb20000 0x0 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC1>;
-			clock-names = "apb_pclk";
-		};
-	};
-
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -487,6 +443,18 @@
 		status = "disabled";
 	};
 
+	dmac_peri: dma-controller@ff250000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff250000 0x0 0x4000>;
+		interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC2>;
+		clock-names = "apb_pclk";
+	};
+
 	thermal-zones {
 		reserve_thermal: reserve_thermal {
 			polling-delay-passive = <1000>; /* milliseconds */
@@ -665,6 +633,19 @@
 		status = "disabled";
 	};
 
+	dmac_bus_ns: dma-controller@ff600000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff600000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC1>;
+		clock-names = "apb_pclk";
+		status = "disabled";
+	};
+
 	i2c0: i2c@ff650000 {
 		compatible = "rockchip,rk3288-i2c";
 		reg = <0x0 0xff650000 0x0 0x1000>;
@@ -1398,6 +1379,18 @@
 		reg = <0x0 0xffaf0080 0x0 0x20>;
 	};
 
+	dmac_bus_s: dma-controller@ffb20000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xffb20000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC1>;
+		clock-names = "apb_pclk";
+	};
+
 	efuse: efuse@ffb40000 {
 		compatible = "rockchip,rk3288-efuse";
 		reg = <0x0 0xffb40000 0x0 0x20>;
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 859a7477909f..f8886c0b247a 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -32,50 +32,6 @@
 		spi1 = &spi1;
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		dmac1_s: dma-controller@20018000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x20018000 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMA1>;
-			clock-names = "apb_pclk";
-		};
-
-		dmac1_ns: dma-controller@2001c000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x2001c000 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMA1>;
-			clock-names = "apb_pclk";
-			status = "disabled";
-		};
-
-		dmac2: dma-controller@20078000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x20078000 0x4000>;
-			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMA2>;
-			clock-names = "apb_pclk";
-		};
-	};
-
 	xin24m: oscillator {
 		compatible = "fixed-clock";
 		clock-frequency = <24000000>;
@@ -295,6 +251,31 @@
 		reg = <0x20008000 0x200>;
 	};
 
+	dmac1_s: dma-controller@20018000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x20018000 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMA1>;
+		clock-names = "apb_pclk";
+	};
+
+	dmac1_ns: dma-controller@2001c000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x2001c000 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMA1>;
+		clock-names = "apb_pclk";
+		status = "disabled";
+	};
+
 	i2c0: i2c@2002d000 {
 		compatible = "rockchip,rk3066-i2c";
 		reg = <0x2002d000 0x1000>;
@@ -469,4 +450,16 @@
 		dma-names = "tx", "rx";
 		status = "disabled";
 	};
+
+	dmac2: dma-controller@20078000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x20078000 0x4000>;
+		interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMA2>;
+		clock-names = "apb_pclk";
+	};
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
