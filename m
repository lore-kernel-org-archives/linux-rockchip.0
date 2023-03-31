Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AC60C6FD18
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 08:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NH+EkS8HMG4+1fdrUriDIWX7RJ4Gb/KeprxMgjp5xOM=; b=Ap3uGEtkvkM6+H
	kiV/8lNvaB23hlDPlCU6GVbuiMGDmk89lLE5d61Ac0BSU+5gxjliO8MLecFR39CdVaG1p1MQ901r9
	3WEMQ4psWH84TaueQx+UP6L0VFe6NDD9aNKclugJr8uGwKexbxEs0QJlgfVZAFBZ9WajbRnRgwslC
	bHXBCOnsoa9hsr4ThPzdbEcahSkqDRRj95yq6w17oPMzTmv8hxx5nZ+ITI0U+78awiMywyPfq7dEs
	fBFqQ1F4wzsrbIoGadBt+42LtD9tcx//8Ihf6VRSRRcnXv+sT+/Q+yrVkiAYJOjgAvEZZuZOClTXb
	bPojVTqEwIVsFC3HqY/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9sj-006J4i-2O;
	Fri, 31 Mar 2023 08:13:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9sI-006It7-03;
	Fri, 31 Mar 2023 08:12:43 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4B94B6603130;
	Fri, 31 Mar 2023 09:12:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680250359;
	bh=VEHW/c/2s4Nzddue0SQRQN8yI6FlgApEF6XFoJ9BplU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jl6ZovPdDx+rPOAQgtUzYm5GbNL4w2nABSX0veFQXNFGpiD39FK0gh8cf6ZGBfc77
	 lIwcQAzeDvLrfTNHvpbx6+WXzmms3dk79joh1k3SJBbt4/6Ya1EAmkKoB6QGHujXqe
	 v0wbsiTdQh0JthrbN4Df9srL6CFFX4lansfarSkXutfE51RPJhQ7a1L2MfdP6v864o
	 lfqALpPVPaFn/xPldO+zlyJEHBHGA4n7q/ZJFdgpdW5XUZemt4Xbd+6MjTGEYVo+dU
	 UC4cmVW70CAK3HtVOgWzZKhCBznqebfXHjwyFncLCdH+OTQ9C0/HSsxsTRtyEFaH8q
	 XjuvaGsHyKAmQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v3 3/4] arm64: dts: rockchip: rk3588: Add I2S nodes
Date: Fri, 31 Mar 2023 11:12:25 +0300
Message-Id: <20230331081226.245881-4-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230331081226.245881-1-cristian.ciocaltea@collabora.com>
References: <20230331081226.245881-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_011242_186136_B99DDD2F 
X-CRM114-Status: UNSURE (   9.98  )
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

In addition to the five I2S/PCM/TDM controllers and the two I2S/PCM
controllers shared between the RK3588 and RK3588S SoCs, RK3588 provides
another group of four I2S/PCM/TDM controllers.

Add the DT nodes corresponding to the additional controllers.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi | 68 ++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index d085e57fbc4c..8be75556af8f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -7,6 +7,74 @@
 #include "rk3588-pinctrl.dtsi"
 
 / {
+	i2s8_8ch: i2s@fddc8000 {
+		compatible = "rockchip,rk3588-i2s-tdm";
+		reg = <0x0 0xfddc8000 0x0 0x1000>;
+		interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru MCLK_I2S8_8CH_TX>, <&cru MCLK_I2S8_8CH_TX>, <&cru HCLK_I2S8_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		assigned-clocks = <&cru CLK_I2S8_8CH_TX_SRC>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		dmas = <&dmac2 22>;
+		dma-names = "tx";
+		power-domains = <&power RK3588_PD_VO0>;
+		resets = <&cru SRST_M_I2S8_8CH_TX>;
+		reset-names = "tx-m";
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
+	i2s6_8ch: i2s@fddf4000 {
+		compatible = "rockchip,rk3588-i2s-tdm";
+		reg = <0x0 0xfddf4000 0x0 0x1000>;
+		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru MCLK_I2S6_8CH_TX>, <&cru MCLK_I2S6_8CH_TX>, <&cru HCLK_I2S6_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		assigned-clocks = <&cru CLK_I2S6_8CH_TX_SRC>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		dmas = <&dmac2 4>;
+		dma-names = "tx";
+		power-domains = <&power RK3588_PD_VO1>;
+		resets = <&cru SRST_M_I2S6_8CH_TX>;
+		reset-names = "tx-m";
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
+	i2s7_8ch: i2s@fddf8000 {
+		compatible = "rockchip,rk3588-i2s-tdm";
+		reg = <0x0 0xfddf8000 0x0 0x1000>;
+		interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru MCLK_I2S7_8CH_RX>, <&cru MCLK_I2S7_8CH_RX>, <&cru HCLK_I2S7_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		assigned-clocks = <&cru CLK_I2S7_8CH_RX_SRC>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		dmas = <&dmac2 21>;
+		dma-names = "rx";
+		power-domains = <&power RK3588_PD_VO1>;
+		resets = <&cru SRST_M_I2S7_8CH_RX>;
+		reset-names = "rx-m";
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
+	i2s10_8ch: i2s@fde00000 {
+		compatible = "rockchip,rk3588-i2s-tdm";
+		reg = <0x0 0xfde00000 0x0 0x1000>;
+		interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru MCLK_I2S10_8CH_RX>, <&cru MCLK_I2S10_8CH_RX>, <&cru HCLK_I2S10_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		assigned-clocks = <&cru CLK_I2S10_8CH_RX_SRC>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		dmas = <&dmac2 24>;
+		dma-names = "rx";
+		power-domains = <&power RK3588_PD_VO1>;
+		resets = <&cru SRST_M_I2S10_8CH_RX>;
+		reset-names = "rx-m";
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	gmac0: ethernet@fe1b0000 {
 		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
 		reg = <0x0 0xfe1b0000 0x0 0x10000>;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
