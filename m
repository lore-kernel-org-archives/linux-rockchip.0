Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F700C18E7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 14:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0JpRefJa+76c/nfr73YP3s3+y77QH0uuKDrM6FLsnQ=; b=3l3Dh8QGSkKDOp
	NNWwnsR/KTHDwnPw28y41Cn3o9ZX/e6szozZFPq253cEtXGYqE3jnDLEgUB/JqG80IS61eQFZqdkg
	zf7N57tXHETpA1d0Gy+pbs49CW0ICvc3l/z8DB3jp3jrKT88vHS+tyfAYxRFiEMI1WxfPO3rK4R18
	puhIO2RTuLGVAkckrJR9jYMURI6E6QmV0GZCcPjQi86HhKvCBeB4ucdT5SV/7pTuja47QpzmwSXwX
	5iVW9INOZa+J7eIhRSL+bI8llsfJWQ2CJpltdKjxu3ovVj0o+Bnd/7ygcM9gEJ+0Xuli5iT+5rLl6
	913HkbpPoPh84/96M5AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnI9s-000000041md-31k7;
	Wed, 26 Feb 2025 14:13:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnI6p-000000041Db-3VLq;
	Wed, 26 Feb 2025 14:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gE+DoygJHk7LwLMt2mguR3vh+dirYo0lkI+9kyHltus=; b=bkg6BcNipUZa9RfptKX8x+a98r
	TdkcfFVy6xJZHCHfqtHlqTVG+7LG4BqPkE0Ya0oMmfEOaLcQXFYQsmuufb9i42zfCWkzzuhm48UAw
	SIr4qeildYb1InvOlBEcFGCEgIOHSpOJDVrL0ydyEADc+ieq3x8DFHJ7DAggkTr1XuRDICr5Yafdz
	LQh/9OfLh5YPfbCSDS821QUuDjCab3UkkXpcF1edctHm4tARELW7W0HhKTVVirkmVtQbCLPXr5WRU
	uiMmakB7QD13rtMv3oRjR0wJRbl3IlrYa/peClxrUqpQpfIJZeNK3BQQ33WveCieQaNVZYL5ug6Kh
	fY5XZPhw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnI6o-0000V2-J9; Wed, 26 Feb 2025 15:09:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dse@thaumatec.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v3 1/3] arm64: dts: rockchip: add mipi dcphy nodes to rk3588
Date: Wed, 26 Feb 2025 15:09:40 +0100
Message-ID: <20250226140942.3825223-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250226140942.3825223-1-heiko@sntech.de>
References: <20250226140942.3825223-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_060959_872174_9ECFB8D1 
X-CRM114-Status: GOOD (  12.25  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Add the two MIPI-DC-phy nodes to the RK3588, that will be used by the
DSI2 controllers and hopefully in some future also for camera input.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 8b497eb5da16..5535d5d905f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -574,6 +574,16 @@ sys_grf: syscon@fd58c000 {
 		reg = <0x0 0xfd58c000 0x0 0x1000>;
 	};
 
+	mipidcphy0_grf: syscon@fd5e8000 {
+		compatible = "rockchip,rk3588-dcphy-grf", "syscon";
+		reg = <0x0 0xfd5e8000 0x0 0x4000>;
+	};
+
+	mipidcphy1_grf: syscon@fd5ec000 {
+		compatible = "rockchip,rk3588-dcphy-grf", "syscon";
+		reg = <0x0 0xfd5ec000 0x0 0x4000>;
+	};
+
 	vop_grf: syscon@fd5a4000 {
 		compatible = "rockchip,rk3588-vop-grf", "syscon";
 		reg = <0x0 0xfd5a4000 0x0 0x2000>;
@@ -2915,6 +2925,38 @@ usbdp_phy0: phy@fed80000 {
 		status = "disabled";
 	};
 
+	mipidcphy0: phy@feda0000 {
+		compatible = "rockchip,rk3588-mipi-dcphy";
+		reg = <0x0 0xfeda0000 0x0 0x10000>;
+		rockchip,grf = <&mipidcphy0_grf>;
+		clocks = <&cru PCLK_MIPI_DCPHY0>,
+			 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
+		clock-names = "pclk", "ref";
+		resets = <&cru SRST_M_MIPI_DCPHY0>,
+			 <&cru SRST_P_MIPI_DCPHY0>,
+			 <&cru SRST_P_MIPI_DCPHY0_GRF>,
+			 <&cru SRST_S_MIPI_DCPHY0>;
+		reset-names = "m_phy", "apb", "grf", "s_phy";
+		#phy-cells = <1>;
+		status = "disabled";
+	};
+
+	mipidcphy1: phy@fedb0000 {
+		compatible = "rockchip,rk3588-mipi-dcphy";
+		reg = <0x0 0xfedb0000 0x0 0x10000>;
+		rockchip,grf = <&mipidcphy1_grf>;
+		clocks = <&cru PCLK_MIPI_DCPHY1>,
+			 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
+		clock-names = "pclk", "ref";
+		resets = <&cru SRST_M_MIPI_DCPHY1>,
+			 <&cru SRST_P_MIPI_DCPHY1>,
+			 <&cru SRST_P_MIPI_DCPHY1_GRF>,
+			 <&cru SRST_S_MIPI_DCPHY1>;
+		reset-names = "m_phy", "apb", "grf", "s_phy";
+		#phy-cells = <1>;
+		status = "disabled";
+	};
+
 	combphy0_ps: phy@fee00000 {
 		compatible = "rockchip,rk3588-naneng-combphy";
 		reg = <0x0 0xfee00000 0x0 0x100>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
