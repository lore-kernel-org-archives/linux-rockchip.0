Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61677C282C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 15:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNUliwWy1LzK03JtGMsM/AtdJuLLivks6CbPi90j2tY=; b=GjX8ZdQjx2N05e
	/B6FqlldfbojO3OgLD+UyZPUbXnD84rdNtetYhnDcz/nFTaHlLCB8kQBNCdU4+79gJbu6J3rO6cAR
	qkUbZ1+Wy7WKrZqz7vcQxvV2CdHREETKd7UFWGIjDDeyxUoiR4voTGkuRcPehVKfNXSs0UrVxMcgz
	UtuO7OwC4z5D8EJNGiwKMHBKfXJnYmCYXAAAhGIspjwGIh+TQXImaiOZj4DFlWZVz/oQjNVJ/Uk/F
	bDhyHudromrWoruop5YjNUDRyczh+CwReUHGhsBqLrWTvYlSLkHK3/pss+1g8O1vi6K8+xoi38fwA
	U5FmOFiysgn1rRBN6Fzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to1rv-0000000BN9u-293h;
	Fri, 28 Feb 2025 15:01:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to1jr-0000000BLBQ-1BgC;
	Fri, 28 Feb 2025 14:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740754397;
	bh=A+OjilsXusgmzLCL9Wv/h1+R9nNWJKHUhBgcxvTFFXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C+oLPH4dgjkKoYCRr3GNEYn5OL95zVUY1cCvrY68xREqyQVL7Hil7Vb+qR9HOQYvx
	 WnnV4w89SmIY75Az/cAjt9m320+RcdbT9htkuOAxKzjWEFlPBo2BexErGv8y7p5nwX
	 ekWv1RG5DsPPnAQequ8hqicUWUzzm+YJ7YxDb9ZK60EmSRkV0VEGiKj732D7llAwD5
	 wxDiT75NdpbQUxJmSsr3aSwOSJ3qM60hRiifLCXSkTluxG1/h9B4/Thk60ZpC3CAFN
	 USJjQW8QU135NUTR6IXqrjGVEujK90Ra/pWySpzKyCGGDw6QDkDZ84P+IeOKkOFw1c
	 /Ozm7bxahVp/w==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BBF3A17E0B13;
	Fri, 28 Feb 2025 15:53:15 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Stephen Chen <stephen@radxa.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 1/2] arm64: dts: rockchip: Add SFC nodes for rk3576
Date: Fri, 28 Feb 2025 09:50:47 -0500
Message-ID: <20250228145304.581349-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250228145304.581349-1-detlev.casanova@collabora.com>
References: <20250228145304.581349-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_065319_461910_00D404DB 
X-CRM114-Status: UNSURE (   8.90  )
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

The rk3576 SoC has 2 SFC cores that provide FSPI functions.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 4dde954043ef6..a9849003c8dd6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1221,6 +1221,17 @@ gmac1_mtl_tx_setup: tx-queues-config {
 			};
 		};
 
+		sfc1: spi@2a300000 {
+			compatible = "rockchip,sfc";
+			reg = <0x0 0x2a300000 0x0 0x4000>;
+			interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru SCLK_FSPI1_X2>, <&cru HCLK_FSPI1>;
+			clock-names = "clk_sfc", "hclk_sfc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		sdmmc: mmc@2a310000 {
 			compatible = "rockchip,rk3576-dw-mshc";
 			reg = <0x0 0x2a310000 0x0 0x4000>;
@@ -1260,6 +1271,17 @@ sdhci: mmc@2a330000 {
 			status = "disabled";
 		};
 
+		sfc0: spi@2a340000 {
+			compatible = "rockchip,sfc";
+			reg = <0x0 0x2a340000 0x0 0x4000>;
+			interrupts = <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru SCLK_FSPI_X2>, <&cru HCLK_FSPI>;
+			clock-names = "clk_sfc", "hclk_sfc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@2a701000 {
 			compatible = "arm,gic-400";
 			reg = <0x0 0x2a701000 0 0x10000>,
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
