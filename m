Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9BD6C0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 12:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gG+2kLgNwIVQY6jxeyK6nWnImLqaJEXZH596tnUg7yM=; b=zBcsmaridJMLo4
	0O3JMITPhQHyrHBvO8EFltSc6qQ5xoTSQVApXJv2W1YlggRSt7t/LJEqxqlpXa0uiJBIo7FIPSRtI
	KVXIAbkzizmTtGmsXk0m6Oddx0Wp9B7vLDy6COH5ZNM/loAVpU3KEcQcm+fThumnGGeLLqvlJETBR
	2PKDuo1GURAEsVqjntgTyPvxmFEC45IE5xOiuEryuTXi7ae0iysRg+hqwL5I8DSUQCvXa+50lXpH+
	4V//DoEEOtdYqoyMsSnKI59X13XBLbysTIfI2sFKun7LKpv0u3PZ2d/aYXUz9npxozmr7srAotckS
	fH/Lf1z89VrxEN5ulezg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVte7-001eEv-0N;
	Tue, 15 Aug 2023 12:59:39 +0000
Received: from forward100c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d100])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVtdt-001e9i-0X;
	Tue, 15 Aug 2023 12:59:26 +0000
Received: from mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:17a3:0:640:53a6:0])
	by forward100c.mail.yandex.net (Yandex) with ESMTP id F26A4600E5;
	Tue, 15 Aug 2023 15:59:17 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 3xeYJg5Wma60-F18sllHy;
	Tue, 15 Aug 2023 15:59:16 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail; t=1692104357;
	bh=sgHEBJ/UfvG71gn4poD3opvIRRXcBrkFCebOtOAyTGY=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=a2ww5X+y/F8n/yRvaLidHJR47P0kSJQrGupng7h4WPPW1g3QWeDkcvRYHiIlrY2BL
	 wRbxPrPazCnx30yPr5AJsXKyBlTEe7GHP1tb2l8YOsfcigGoK8QQY/evP+27J2LwyG
	 C1DGCOZdypkAHfmlfMsh1aftWGLsloom3P19yJbM=
Authentication-Results: mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH 2/3] arm64: dts: rockchip: Add sfc node to rk3588s
Date: Tue, 15 Aug 2023 15:59:00 +0300
Message-ID: <b96e8d517d431d13eedd9c9606523076d72033bf.1692102057.git.efectn@6tel.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1692102057.git.efectn@6tel.net>
References: <cover.1692102057.git.efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_055925_373130_A47C22F3 
X-CRM114-Status: UNSURE (   9.92  )
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

Add sfc node to rk3588s.dtsi from downstream kernel.

Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..a38a0158fce0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1424,6 +1424,19 @@ sata-port@0 {
 		};
 	};
 
+	sfc: spi@fe2b0000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe2b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		assigned-clocks = <&cru SCLK_SFC>;
+		assigned-clock-rates = <100000000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	sdmmc: mmc@fe2c0000 {
 		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe2c0000 0x0 0x4000>;
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
