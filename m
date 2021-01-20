Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47174C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 23:42:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C476223603
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 23:42:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C476223603
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iqBluNaGVbog4wu5RCgTEDia7KR1F/P7+DxAMfUgFzc=; b=ImhBevPtddwWHNLaL232xtpMzJ
	eQ1CleRoS9l1ZBmdF3JP/aeFy8CgBm+daxHCs6k/NZ2lyztlMqzGe5PjSHvTTLHV1yi7aI2UOpshE
	eCvrDI0c6x0ukzR36Dtby+40TXz7rKYab6hJqrU1BevDlnMdUdyHqGO/wwDvUoIp17B8/YAz/StKU
	4VefIsI2kAPRK0KVyEvHy7p0Kq6b130EPYy5ZgvVPNJjEHv+01l0VPYVT8UBLqMuWplikbgcunoZv
	RS3d8ojlm1WYVLlMEBRATkwHZ2ALVEsK2S8+Nvrn59NZyFtuioNnoSZTZuv4ogei0kQe5xAxIJoKF
	01QfwzhQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2N7V-0005nu-Sp; Wed, 20 Jan 2021 23:42:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2N7Q-0005mE-Ow; Wed, 20 Jan 2021 23:42:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B354AD6E;
 Wed, 20 Jan 2021 15:42:29 -0800 (PST)
Received: from DESKTOP-VLO843J.arm.com (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C3A933F66E;
 Wed, 20 Jan 2021 15:42:28 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: Remove bogus "amba" bus nodes
Date: Wed, 20 Jan 2021 23:42:21 +0000
Message-Id: <131e0ea065109760ea3b59c4bb90cf4fac7826f7.1611186142.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_184232_897781_AE867502 
X-CRM114-Status: GOOD (  14.01  )
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
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 25 ++++-------
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 45 ++++++++-----------
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 29 +++++--------
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 55 +++++++++++-------------
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 51 ++++++++++------------
 5 files changed, 85 insertions(+), 120 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 2695ea8cda14..86e1f0f26624 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -703,22 +703,15 @@
 		clock-names = "pclk", "timer";
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		dmac: dmac@ff240000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff240000 0x0 0x4000>;
-			interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC>;
-			clock-names = "apb_pclk";
-			#dma-cells = <1>;
-		};
+	dmac: dmac@ff240000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff240000 0x0 0x4000>;
+		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC>;
+		clock-names = "apb_pclk";
+		#dma-cells = <1>;
 	};
 
 	tsadc: tsadc@ff280000 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 2560b98771ca..fbf15c822e99 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -513,33 +513,26 @@
 		status = "disabled";
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+	dmac0: dma-controller@ff2c0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff2c0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC0>;
+		clock-names = "apb_pclk";
+		#dma-cells = <1>;
+	};
 
-		dmac0: dma-controller@ff2c0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff2c0000 0x0 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC0>;
-			clock-names = "apb_pclk";
-			#dma-cells = <1>;
-		};
-
-		dmac1: dma-controller@ff2d0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff2d0000 0x0 0x4000>;
-			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC1>;
-			clock-names = "apb_pclk";
-			#dma-cells = <1>;
-		};
+	dmac1: dma-controller@ff2d0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff2d0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC1>;
+		clock-names = "apb_pclk";
+		#dma-cells = <1>;
 	};
 
 	i2s_2ch_0: i2s@ff350000 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index db0d5c8e5f96..63b3b55c4670 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -142,24 +142,6 @@
 		};
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		dmac: dmac@ff1f0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff1f0000 0x0 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC>;
-			clock-names = "apb_pclk";
-			#dma-cells = <1>;
-		};
-	};
-
 	analog_sound: analog-sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,format = "i2s";
@@ -504,6 +486,17 @@
 		status = "disabled";
 	};
 
+	dmac: dmac@ff1f0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff1f0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC>;
+		clock-names = "apb_pclk";
+		#dma-cells = <1>;
+	};
+
 	thermal-zones {
 		soc_thermal: soc-thermal {
 			polling-delay-passive = <20>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 3746f23dc3df..eff2039d1bcf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -136,37 +136,6 @@
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
-			clocks = <&cru ACLK_DMAC_PERI>;
-			clock-names = "apb_pclk";
-		};
-
-		dmac_bus: dma-controller@ff600000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff600000 0x0 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC_BUS>;
-			clock-names = "apb_pclk";
-		};
-	};
-
 	arm-pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
@@ -399,6 +368,18 @@
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
+		clocks = <&cru ACLK_DMAC_PERI>;
+		clock-names = "apb_pclk";
+	};
+
 	thermal-zones {
 		cpu {
 			polling-delay-passive = <100>; /* milliseconds */
@@ -532,6 +513,18 @@
 		status = "disabled";
 	};
 
+	dmac_bus: dma-controller@ff600000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff600000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC_BUS>;
+		clock-names = "apb_pclk";
+	};
+
 	i2c0: i2c@ff650000 {
 		compatible = "rockchip,rk3368-i2c", "rockchip,rk3288-i2c";
 		reg = <0x0 0xff650000 0x0 0x1000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index f5dee5f447bb..7dc6221450d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -200,35 +200,6 @@
 		#clock-cells = <0>;
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		dmac_bus: dma-controller@ff6d0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff6d0000 0x0 0x4000>;
-			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH 0>,
-				     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH 0>;
-			#dma-cells = <1>;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC0_PERILP>;
-			clock-names = "apb_pclk";
-		};
-
-		dmac_peri: dma-controller@ff6e0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x0 0xff6e0000 0x0 0x4000>;
-			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH 0>,
-				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH 0>;
-			#dma-cells = <1>;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC1_PERILP>;
-			clock-names = "apb_pclk";
-		};
-	};
-
 	pcie0: pcie@f8000000 {
 		compatible = "rockchip,rk3399-pcie";
 		reg = <0x0 0xf8000000 0x0 0x2000000>,
@@ -1351,6 +1322,28 @@
 		};
 	};
 
+	dmac_bus: dma-controller@ff6d0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff6d0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH 0>;
+		#dma-cells = <1>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC0_PERILP>;
+		clock-names = "apb_pclk";
+	};
+
+	dmac_peri: dma-controller@ff6e0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x0 0xff6e0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH 0>;
+		#dma-cells = <1>;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC1_PERILP>;
+		clock-names = "apb_pclk";
+	};
+
 	pmucru: pmu-clock-controller@ff750000 {
 		compatible = "rockchip,rk3399-pmucru";
 		reg = <0x0 0xff750000 0x0 0x1000>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
