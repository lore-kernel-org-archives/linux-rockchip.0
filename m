Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 565CCC77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 23:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wP9RsBe+4OdIlw7/G71d9q5b4RimjdaGFZ6iBmTpJsg=; b=XVa4qPCxnrIe2i
	ZQAPxhTdc4fMYdYX2GQ/7bf5UcaTm5BJHuF/horDvL1mCk+w9DiGifOVXIscyBfT6dKKt+SpNWfYY
	byPL87b7qDIVIyhjFoFH8SmP43cRrCdfck+Eswuyni/x5q167Wj1BlK3tpM6joCsMVoqnlKKgI0K7
	XWlMYZdmYzaQRbyKOJc0Z7O3AqwIOAGHyNUD5iMCPKQCXx0pFR3w73KNNBWql/OT4Bu1G4rnBR2i2
	m6ZiIW/nGr3CAGe66DWTFxUehIBOUbIzNaSFnVYpfroVZ1qaIxaTHon/WSxkQiLhGjR5Xj0xVaNc0
	o9v1l5nmWbfjMrEex0Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3i2-007OLJ-1p;
	Tue, 16 May 2023 23:03:58 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3hy-007OI5-0S;
	Tue, 16 May 2023 23:03:56 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DC69E6605906;
	Wed, 17 May 2023 00:03:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684278232;
	bh=lDz/zDew1D+agp77cTWfGbMYmza4eMo3EHXMw7US+9M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TwiO4uSHH2bl0609n6yUlQY6/QBubDltJLEdZGoy0Y9KYXrk95H3DtmAhq1XV5m9V
	 rmZmcsvhlXHpjqjn7cr/zKNXkgUs31KNFxdok+0EmMqGjBDa1XMKxqCr8qjFt75z87
	 IwN4lOtCWV2UHh+NBFM5jOqGYC3sTXAaQKbwF+GJ0wCO4fOf7ZnlBgN4ZooocPDIBO
	 RIf09Gylnz7UbmCVxRYXkDijGZsBjnRjlqeehqnBHjQcJ2N0Nkgu1qyXkBDcFMZSOF
	 Z8BmHBwcjOm2SSOz9Ql8ehIw+Nhpc1sqVVWCQ4UO2dC5zBEzR2sb1UmQlVGIT8/nsA
	 32VoFv9tLdoAA==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH 6/7] arm64: dts: rockchip: Add DT node for ADC support in RK3588
Date: Wed, 17 May 2023 04:30:50 +0530
Message-Id: <20230516230051.14846-7-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230516230051.14846-1-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_160354_312747_5F597228 
X-CRM114-Status: UNSURE (   9.15  )
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

Add DT node for ADC support in RK3588.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 657c019d27fa..6c4424bc4b1b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1825,6 +1825,18 @@ dmac2: dma-controller@fed10000 {
 		#dma-cells = <1>;
 	};
 
+	saradc: saradc@fec10000 {
+		compatible = "rockchip,rk3588-saradc";
+		reg = <0x0 0xfec10000 0x0 0x10000>;
+		interrupts = <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH 0>;
+		#io-channel-cells = <1>;
+		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
+		clock-names = "saradc", "apb_pclk";
+		resets = <&cru SRST_P_SARADC>;
+		reset-names = "saradc-apb";
+		status = "disabled";
+	};
+
 	system_sram2: sram@ff001000 {
 		compatible = "mmio-sram";
 		reg = <0x0 0xff001000 0x0 0xef000>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
