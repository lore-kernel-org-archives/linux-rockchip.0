Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B0D7C27C6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6p84Hhpt2mPRRamp6hfzb+/r5P+Mbac6UvTo8ST9Mo=; b=RMQAnhwMDg8BBQ
	RnXLz82lafzqeqHb0UN+LsX2BrqUCxQ0kpib887RabK5Yu9zK07yBgfjw3f5KA/ctv9/9AtbkAwr6
	t5jDIA3OG7ODaPMULS+zC9SPsyDbKroLTQ6h4b7sPQFODXw+c00ir5pPqBzi0tO2LqinCLm4uM6C5
	w/DOb3w4YZJFS+BwY0346VaxwvzCRF0+VjJQmJTpNHejQJ/FeKrrJduLGO+bVtpSnkA/8AL6M2aVY
	4jGebjbDAhuJOWm0H7ZpzCMTJCZaS0JhqsxoTkPtBVSsUlwBfwwfijAOlUBI2ANmmRXT0de6j/WTI
	HB8eDOUEs7iDmKhPY5Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkqm-0000000GpE8-3IXZ;
	Thu, 13 Jun 2024 13:50:48 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkqe-0000000Gp7P-3E8y
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 13:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718286637;
	bh=JWRpO8n0qfJ/LE7k1lFWnR99Wqz0mOCN8aOE7S7nk+M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oLzfqXLMQHV0tQG8tRH8y30stFVoMzixKnoDXWXyxXfM3g1ZQw9J6MhtWt5j5p3rX
	 mWif4R46rm68J4jx+HjKZv6+SfuAK/al6Zb/Hgv4AsfcMGEqgs/JKTfeObFgiPtT0B
	 IvM2CJr/RJpgb3Y9kQpApJO9O2tjYhOCPHxObteB4pMEfWa/YYqAGS2/QpIACW3B8w
	 ZHx+o4+qICXJ3E3rFhQ3G1U84OO/+CxWezH33355FLVgYp6qjDXuopgBV0aBRc0mv3
	 eIxAb6o8tLCRcFrB2whr32Xy9ATKwIwBsKHHkw5MAyr2/YGkGN2YaxvCo8nbPLacNT
	 yV2wo3kpa9KUg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1773537821B7;
	Thu, 13 Jun 2024 13:50:37 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3A4A04800D0; Thu, 13 Jun 2024 15:50:36 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v6 5/6] arm64: dts: rockchip: Add VEPU121 to RK3588
Date: Thu, 13 Jun 2024 15:48:46 +0200
Message-ID: <20240613135034.31684-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613135034.31684-1-sebastian.reichel@collabora.com>
References: <20240613135034.31684-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_065041_015548_0F3C63A6 
X-CRM114-Status: GOOD (  10.98  )
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

From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>

RK3588 has 4 Hantro G1 encoder-only cores. They are all independent IP,
but can be used as a cluster (i.e. sharing work between the cores).
These cores are called VEPU121 in the TRM. The TRM describes one more
VEPU121, but that is combined with a Hantro H1. That one will be handled
using the VPU binding instead.

Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 80 +++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 6ac5ac8b48ab..dd85d4e55922 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1159,6 +1159,86 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};
 
+	vepu121_0: video-codec@fdba0000 {
+		compatible = "rockchip,rk3588-vepu121";
+		reg = <0x0 0xfdba0000 0x0 0x800>;
+		interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER0>, <&cru HCLK_JPEG_ENCODER0>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu121_0_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vepu121_0_mmu: iommu@fdba0800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdba0800 0x0 0x40>;
+		interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER0>, <&cru HCLK_JPEG_ENCODER0>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
+	vepu121_1: video-codec@fdba4000 {
+		compatible = "rockchip,rk3588-vepu121";
+		reg = <0x0 0xfdba4000 0x0 0x800>;
+		interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER1>, <&cru HCLK_JPEG_ENCODER1>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu121_1_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vepu121_1_mmu: iommu@fdba4800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdba4800 0x0 0x40>;
+		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER1>, <&cru HCLK_JPEG_ENCODER1>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
+	vepu121_2: video-codec@fdba8000 {
+		compatible = "rockchip,rk3588-vepu121";
+		reg = <0x0 0xfdba8000 0x0 0x800>;
+		interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER2>, <&cru HCLK_JPEG_ENCODER2>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu121_2_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vepu121_2_mmu: iommu@fdba8800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdba8800 0x0 0x40>;
+		interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER2>, <&cru HCLK_JPEG_ENCODER2>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
+	vepu121_3: video-codec@fdbac000 {
+		compatible = "rockchip,rk3588-vepu121";
+		reg = <0x0 0xfdbac000 0x0 0x800>;
+		interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER3>, <&cru HCLK_JPEG_ENCODER3>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu121_3_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vepu121_3_mmu: iommu@fdbac800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdbac800 0x0 0x40>;
+		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_ENCODER3>, <&cru HCLK_JPEG_ENCODER3>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	av1d: video-codec@fdc70000 {
 		compatible = "rockchip,rk3588-av1-vpu";
 		reg = <0x0 0xfdc70000 0x0 0x800>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
