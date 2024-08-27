Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4653CC54734
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 18:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kN3uj7C9fwWzleiDPL+FifISxLAB0lHaMNv5bubUhR0=; b=UbQvrjMvXEm/hi
	wscv4h8C6LLmpJKYIj73vudFNkXoBUYCfkxWHpaMQy6pLN1xXGHls/xgO/TL/WCBC6dZhTEAMUz8R
	NpmFWo2uL4XHsAQi+HIP/aMPSiKSnWywbWqK3wZMzFLZgEf+nesBPw+cQqB6dzQuaFiPqVGAui/EC
	+fncqUvvIzvpAsVMh9drWvPBSw6GzP8N/57RXwLgG4O+9AChsfXw9TYzZxZAQkJCHfEedKb2M7hzG
	JoFAAwOt3gDhpTBy0alaGT1ElNpfGKBv5PLCNlXgRYSDqnsMkHgWN7LvNR4MFcboZxjGNf/9TgR5G
	xSqJZJ9ujJWRqMfOUaRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj0gC-0000000CR6F-0gqP;
	Tue, 27 Aug 2024 18:12:32 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj0g4-0000000CR30-2qyM
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 18:12:27 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724782336; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LMgi7/NBcxEZkmDljZOPFkoW1DnfJ8dU991UVIRW1hk2wbdOIHDHBk4JEERf6BxGN9lrwlnAvYhjWVLspsxWAw5Ff5hOkDlWLsivXHt9UI1vZQjemlpreO7gmjlaYY+qe9M/J8qEatk4mgXF4bOSHNbC173lLqXI9LgM3a4xRKU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724782336; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7Qw7xQaaRdRo3sbWDfRfnQBuFJO1K2dl+tdXAcckUEQ=; 
	b=RDGHAOz0ni4V3Sq3GshnAjqTT9jB9aDngqsgkwq4c9farVsGkSBVkdFlCynJFfPOmnpGJDJMOJnopUmTsRuPCnZDqydMts1D0Q5Y2FHKrBC5covMMmQ/BmauaOcj/8bpWpwvtALBWEfBxkn5qOrpRtRvnFWClMZiwpK6i6n2hLE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724782336;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=7Qw7xQaaRdRo3sbWDfRfnQBuFJO1K2dl+tdXAcckUEQ=;
	b=UKtnCYcu5tPRq303+Z3hmCNHrJVTcAvTatB+lc3dJrEnnm+f8ZNu+c9h/z+QRroF
	e6SvPEuUw6NBFNcxXcnj1mbyykxuodAQy4cMp6oi1hF6EID5SbJsZOhtA+OSfqzvzZa
	1+2HuR1UT+dNnMb9JWFgxtiycPlPJ7May91bMPdc=
Received: by mx.zohomail.com with SMTPS id 172478233479718.156062356846064;
	Tue, 27 Aug 2024 11:12:14 -0700 (PDT)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E10EC4800E1; Tue, 27 Aug 2024 20:12:10 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v8 1/2] arm64: dts: rockchip: Add VEPU121 to RK3588
Date: Tue, 27 Aug 2024 20:10:20 +0200
Message-ID: <20240827181206.147617-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240827181206.147617-1-sebastian.reichel@collabora.com>
References: <20240827181206.147617-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_111224_804429_3C3A7EF8 
X-CRM114-Status: GOOD (  11.09  )
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
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index b6e4df180f0b..595f129a2d8c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1122,6 +1122,86 @@ power-domain@RK3588_PD_SDMMC {
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
