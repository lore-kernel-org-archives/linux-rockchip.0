Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16DFBC54E49
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 15:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WN54JnCP9OPbKVeVIrxew2rVtTvN+as2B/5mk6PDrM0=; b=SYTRw7eF2QRLie
	Yc903F3t2AaM6Ac08QkfHFiatA0QtvwgJlvR7MHBAF3UbyX5mb44+u0BKopAIyXzGvwcbCELm98FB
	nNyCaFTe9PADxAZVHmHVPW42X0il+mgenauY/WI713URA6iDcIcYF9ib1VoiDDN5ssctveK5Xp86w
	oUsIe1KvytwlyRMzEDQaMw7ZNWXe8FXEVvKQ3OctSRBttDcp/btAJRBlIycxb6JhjbinQoPRo1uCC
	NrhQdkGQRejGIS9ZXkwr7kOgWruYVhudm8dVWT3uQ4H9xXBQmAKaQlFxmFgvfHdf0vZDA0evIzYEe
	I2W4u1pA59Ltn+8nLrYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhX4X-0000000EKsc-06H5;
	Tue, 05 Mar 2024 15:51:17 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVuk-0000000E3WO-01Xb;
	Tue, 05 Mar 2024 14:37:11 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id E4A82C0004;
	Tue,  5 Mar 2024 14:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709649424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p95wvDK9w0tJ9c5khPTqW4lIM1Qh7HWUU4fVk+JnuSQ=;
	b=eodDd8yvaxNuiRMp7Tv0NwWtjikPDhLFjP8eCHJNS4nB3tqq1reg44GFcHAEQtTJL+ofia
	Ox7/K6jikOHgr4UOllP/BbPnBMxcLp64T8eIiNRK5nWZG247VJtBeGZqASTmvutQ8kQHDA
	xYW8pzH1dDIH06ZPP4kK6ERAeSn3wPzCPgIcBhdFaYQK4czS4yKN6qfXOf9yN8BSO5g6h3
	E6Kaerzfl+C7EvmuNtlrwOBFEc3Ryf/EaCJO/8iNB6DDB22925QedgyzJLmevtg6pzfJJH
	JwKAakhA/lo7+4XKOVYznKKmWDVV7W0mNLBBonPGUqy1rxUzAzhp0ttJ8xxBBQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 05 Mar 2024 15:36:33 +0100
Subject: [PATCH v4 6/7] arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
MIME-Version: 1.0
Message-Id: <20240305-rk3308-audio-codec-v4-6-312acdbe628f@bootlin.com>
References: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
In-Reply-To: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.13.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_063706_627970_4F875D26 
X-CRM114-Status: GOOD (  11.01  )
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

These are I2S engines internally connected to the built-in audio codec.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Changed in v4: nothing

Changed in v3:
 - removed the 4 optional clocks

Changed in v2: nothing
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index cfc0a87b5195..662c55fe9b77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -578,6 +578,48 @@ dmac1: dma-controller@ff2d0000 {
 		#dma-cells = <1>;
 	};
 
+	/*
+	 * - can be clock producer or consumer
+	 * - up to 8 capture channels and 2 playback channels
+	 * - connected internally to audio codec
+	 */
+	i2s_8ch_2: i2s@ff320000 {
+		compatible = "rockchip,rk3308-i2s-tdm";
+		reg = <0x0 0xff320000 0x0 0x1000>;
+		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		clocks = <&cru SCLK_I2S2_8CH_TX>,
+			 <&cru SCLK_I2S2_8CH_RX>,
+			 <&cru HCLK_I2S2_8CH>;
+		dmas = <&dmac1 5>, <&dmac1 4>;
+		dma-names = "rx", "tx";
+		resets = <&cru SRST_I2S2_8CH_TX_M>, <&cru SRST_I2S2_8CH_RX_M>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+	};
+
+	/*
+	 * - can be clock consumer only
+	 * - up to 4 capture channels, no playback
+	 * - connected internally to audio codec
+	 */
+	i2s_8ch_3: i2s@ff330000 {
+		compatible = "rockchip,rk3308-i2s-tdm";
+		reg = <0x0 0xff330000 0x0 0x1000>;
+		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		clocks = <&cru SCLK_I2S3_8CH_TX>,
+			 <&cru SCLK_I2S3_8CH_RX>,
+			 <&cru HCLK_I2S3_8CH>;
+		dmas = <&dmac1 7>;
+		dma-names = "rx";
+		resets = <&cru SRST_I2S3_8CH_TX_M>, <&cru SRST_I2S3_8CH_RX_M>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+	};
+
 	i2s_2ch_0: i2s@ff350000 {
 		compatible = "rockchip,rk3308-i2s", "rockchip,rk3066-i2s";
 		reg = <0x0 0xff350000 0x0 0x1000>;

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
