Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5884DC07E96
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 14:35:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 205BC61159
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 14:35:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 205BC61159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9QHI9T16IhugnZi5q+ca4ofgt/mra/KOTuBWUD7jSk=; b=erxBX+nShs+Pxt
	CGpn8ZppvH8TQ7qNoqL0GnmOM7ir+oQya7MZ91peRLb2MYGc7v09HUXIlYc/BIKYb+wMndzxD2cfr
	CW7wvLS/Jkh9w+aTfEcuQXjlK8Mwhj8wX1AtThfNYPUehy7fbL9F+TKPAr1hEfehmhnzenbh3vMZ4
	BM8cQiCLpegaVgpAJWw6Qk2XWUjCLu5qljYLQrwKZUa7deaaIMpjOdzOm+1R+Csi8J5dDvqWeIPjU
	N4txUeQlYT2tF8DvGbuu6yz/djLaCJcobaMB4Xk96iMLLyw2EL5zvy0IPu3DCjJSOcHmKX5a9yi1D
	3vjFEnB9EqxqMDrObHFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2aXw-005Aya-0G; Sun, 11 Jul 2021 14:35:04 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2aXZ-005AuZ-Tb; Sun, 11 Jul 2021 14:34:43 +0000
Received: by mail-ej1-x632.google.com with SMTP id c17so27931235ejk.13;
 Sun, 11 Jul 2021 07:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KMpCtnfaLEg5DaHCw+GoHXChsJFsIMroC3QE08V4048=;
 b=EZpEgBlLKsCstEcEydwcr4vun9+LrNiEq5MFO8775o54SAj02ymkNSFN+culRhxVSm
 +rxheICDsx/zjDVGnnbgY76XTWaFaoONBwFBRmR2TLdTRjbk3LJlA/1gvRwihOEvVX7B
 ET0RixME2xpU79S6ogcbb9dSUZNd50V7ygn//qOu6BNhfcN4kTFhRMS9EDNSfbEE6cYb
 lXYQU4ZMeX3onmmDdksU35IXakP700XVsEOUkep7YUdpAW7smYtIX7gSJRCAsokHxYJo
 ZzZl5xqUnieNLnhjtb8oteMBB7yL4jgtCDcThjTZm3wV4BTJ2I6/xSwmpjBDUcjin2hZ
 4wKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KMpCtnfaLEg5DaHCw+GoHXChsJFsIMroC3QE08V4048=;
 b=TCrqd/N9twc6NdHhY3yd6Sif2oXanR46qYemBba6F3NmWuL3/6cuWrryEjpglfPWjN
 2jAVrxvMVfO2fkYajKtTiMvuST4FCn27RalFqLwAe2YmGRexPPVLIlpLQ2fRGyaNV1WD
 t3FJVhhf8oLUINDoNsW2aoZXmW20sPKWEGS1MnDtM4+2DEVy8OOPWzBgNKl0588bEEeQ
 WJuiE+VmWOjDM0eYQUsdnbBxrHhfTf2KY//k28XKFlCC1yFNUhntgzN8AYBFGO6uX+6B
 plXPT0wHmlnF+rF0nnui1hQX8yvbImWM0q2/0wup8n/m6lg7REQ6N3Bu0nSkduN7x9JN
 6yiw==
X-Gm-Message-State: AOAM533HZx52v1Uqdt3inl5aewtyfOAQ3ZSLxhOfviEzNDyg+xL5zhhK
 F8YkcXApxU7h1oJqUXwd0RY=
X-Google-Smtp-Source: ABdhPJydr21UCMUsXHZCCZ+viDDPIXWW3OglmgYv2AhQ0Jl9vV1o7k14ED90Syn/Ta2DpBDDClurJQ==
X-Received: by 2002:a17:906:1344:: with SMTP id
 x4mr48974884ejb.44.1626014080406; 
 Sun, 11 Jul 2021 07:34:40 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a23sm4687076edt.42.2021.07.11.07.34.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Jul 2021 07:34:40 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: remove interrupt-names from iommu
 nodes
Date: Sun, 11 Jul 2021 16:34:30 +0200
Message-Id: <20210711143430.14347-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210711143430.14347-1-jbx6244@gmail.com>
References: <20210711143430.14347-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_073441_998574_24A569A0 
X-CRM114-Status: GOOD (  11.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The iommu driver gets the interrupts by platform_get_irq(),
so remove interrupt-names property from iommu nodes.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 5 -----
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 5 -----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 --------
 3 files changed, 18 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 8c821acb2..becc1c61b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -623,7 +623,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff330200 0 0x100>;
 		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "h265e_mmu";
 		clocks = <&cru ACLK_H265>, <&cru PCLK_H265>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -634,7 +633,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff340800 0x0 0x40>;
 		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vepu_mmu";
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -656,7 +654,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff350800 0x0 0x40>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vpu_mmu";
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -667,7 +664,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff360480 0x0 0x40>, <0x0 0xff3604c0 0x0 0x40>;
 		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "rkvdec_mmu";
 		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -700,7 +696,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff373f00 0x0 0x100>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vop_mmu";
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 4c64fbefb..4217897cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -709,7 +709,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff900800 0x0 0x100>;
 		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "iep_mmu";
 		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -721,7 +720,6 @@
 		reg = <0x0 0xff914000 0x0 0x100>,
 		      <0x0 0xff915000 0x0 0x100>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "isp_mmu";
 		clocks = <&cru ACLK_ISP>, <&cru HCLK_ISP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -733,7 +731,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff930300 0x0 0x100>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vop_mmu";
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -745,7 +742,6 @@
 		reg = <0x0 0xff9a0440 0x0 0x40>,
 		      <0x0 0xff9a0480 0x0 0x40>;
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "hevc_mmu";
 		clocks = <&cru ACLK_VIDEO>, <&cru HCLK_VIDEO>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -757,7 +753,6 @@
 		reg = <0x0 0xff9a0800 0x0 0x100>;
 		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vepu_mmu", "vdpu_mmu";
 		clocks = <&cru ACLK_VIDEO>, <&cru HCLK_VIDEO>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd8..aa5d7dca3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1240,7 +1240,6 @@
 		reg = <0x0 0xff650000 0x0 0x800>;
 		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vepu", "vdpu";
 		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
 		clock-names = "aclk", "hclk";
 		iommus = <&vpu_mmu>;
@@ -1251,7 +1250,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff650800 0x0 0x40>;
 		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vpu_mmu";
 		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -1273,7 +1271,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff660480 0x0 0x40>, <0x0 0xff6604c0 0x0 0x40>;
 		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vdec_mmu";
 		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3399_PD_VDU>;
@@ -1284,7 +1281,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff670800 0x0 0x40>;
 		interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "iep_mmu";
 		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -1666,7 +1662,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff8f3f00 0x0 0x100>;
 		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vopl_mmu";
 		clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3399_PD_VOPL>;
@@ -1723,7 +1718,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff903f00 0x0 0x100>;
 		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vopb_mmu";
 		clocks = <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3399_PD_VOPB>;
@@ -1761,7 +1755,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
 		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "isp0_mmu";
 		clocks = <&cru ACLK_ISP0_WRAPPER>, <&cru HCLK_ISP0_WRAPPER>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -1773,7 +1766,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff924000 0x0 0x100>, <0x0 0xff925000 0x0 0x100>;
 		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "isp1_mmu";
 		clocks = <&cru ACLK_ISP1_WRAPPER>, <&cru HCLK_ISP1_WRAPPER>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
