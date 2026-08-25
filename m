Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B511C61DC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 13:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JAxZlh276/rAw/aIkM5/r8YJnoUMX3uZ+cKtHkydN8=; b=GPWZXiMoNRJEqV
	4PiyrJPaBaRKsU1tj9h+cVOxSjxsFPF9jnq/id7rK8fQC0CLsbp1nHBTvY841NwVA2kJzEP/ZvQm+
	PB/EveMc5Wu241neYzjxMvWw8kLx/KOOPczJ4RX8+4LE2GBn/1VisM+VcSF660juHiDuSFpREroAm
	DgdTAHClE/kJ14XyYB+rYKH8OKCJvmIReAb2Q4eB/tG45tRtCQRCghmudOjDVU+/KVb7AKTh34NfE
	dBXN1cxrYUD1YSLYQCDWKNNZH3bto17qRDRB6o0sxoXpVkT5g/Vy9+LCMCzMQOyfY7n5nCLAaINog
	DOWCBQRkv5AnsHn4mMsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyrUC-00000000tIS-2QGv;
	Tue, 25 Aug 2026 13:46:44 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyrU2-00000000tEb-3XA7;
	Tue, 25 Aug 2026 13:46:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EF7AD202495;
	Tue, 25 Aug 2026 15:46:27 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyrTv-003Hb6-2c;
	Tue, 25 Aug 2026 15:46:27 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyrTv-00000002q5P-2wss;
	Tue, 25 Aug 2026 15:46:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Aug 2026 15:44:08 +0200
Subject: [PATCH v2 3/4] arm64: dts: rockchip: rk3588: Add JPEG decoder node
MIME-Version: 1.0
Message-Id: <20260825-rockchip-jpegdec-v2-3-86af859a3266@pengutronix.de>
References: <20260825-rockchip-jpegdec-v2-0-86af859a3266@pengutronix.de>
In-Reply-To: <20260825-rockchip-jpegdec-v2-0-86af859a3266@pengutronix.de>
To: Lucas Sinn <lucas.sinn@wolfvision.net>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787665587; l=2122;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1JJVz9r1I2YKlPh7YDn7HbtgjT6XpDzjfnEG3nPQua8=;
 b=Wi2480iLQQCiZhjQA5if/BpVpRKBgL0njE5CWZhPdmlYmSrt7oWmP89oCYAN7Je6Z+ylgTQzM
 UiZtPVLqugGAPH1kXptJEvDO5eJdsN6qUWw4kECyhByDTwA8jexMoND
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_064635_039033_9171A9BB 
X-CRM114-Status: GOOD (  11.12  )
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

Add device tree nodes for the Rockchip JPEG hardware decoder and its
IOMMU on the RK3588.

The decoder is at 0xfdb90000 with its MMU at 0xfdb90480.  It takes the
AXI and AHB clocks and resets, and sits in the VDPU power domain.  The
AXI clock is pinned to 600 MHz, which is the rate the downstream BSP
runs it at; it is a dedicated clock, not shared with another block.

Both blocks are entirely on-SoC and have no board dependency, so they are
enabled unconditionally like the other codec blocks in this file.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index fc1fdbfd31622..ce02a0f753e33 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1317,6 +1317,30 @@ rga: rga@fdb80000 {
 		power-domains = <&power RK3588_PD_VDPU>;
 	};
 
+	jpegd: video-codec@fdb90000 {
+		compatible = "rockchip,rk3588-jpegd";
+		reg = <0x0 0xfdb90000 0x0 0x400>;
+		interrupts = <GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_DECODER>, <&cru HCLK_JPEG_DECODER>;
+		clock-names = "axi", "ahb";
+		assigned-clocks = <&cru ACLK_JPEG_DECODER>;
+		assigned-clock-rates = <600000000>;
+		resets = <&cru SRST_A_JPEG_DECODER>, <&cru SRST_H_JPEG_DECODER>;
+		reset-names = "axi", "ahb";
+		iommus = <&jpegd_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	jpegd_mmu: iommu@fdb90480 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdb90480 0x0 0x40>;
+		interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_JPEG_DECODER>, <&cru HCLK_JPEG_DECODER>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	vepu121_0: video-codec@fdba0000 {
 		compatible = "rockchip,rk3588-vepu121";
 		reg = <0x0 0xfdba0000 0x0 0x800>;

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
