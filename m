Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E4A8C48BF6
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 10:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5WCYoy8lSm9UJd6PXyCGvlneijrKWIXo22YoMzbUdI=; b=o/8Dzn8Mp+DhU6
	mk/99J/s/9VUHqRsFINz+1S+JRjlS1BLQtmoPrpU8VgRZXgUg5+3KnhSSFBwrvt/mxL68VW/dYnoJ
	jepHaZZ0+7pOUVcvzaoO/Gj+srKd944zANyscko+Ms5o7nJeEW078iOlF216n4Ea8PALYBPHvp+yL
	krFlgsA/jHvmbq2lxSMlVJ/xpt5rg8PckKvumLfvEpdIKPh4ZMUwAAiq7BwdLio0I+fGNGODB8KmF
	U/4hVSjYqwIs1NjHT03jwkGDIXyVBL1nwxjSrFL3IHVPexc1KHPtwBBgwPQQaf0UAZ3OXGfK2XuGJ
	hlzbRpL+XLhyiIIGZ13Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjlj-00000000Ttp-0TX0;
	Wed, 21 Feb 2024 10:24:03 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjkz-00000000TO8-22WY;
	Wed, 21 Feb 2024 10:23:19 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id AE329240010;
	Wed, 21 Feb 2024 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708510995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HWbWCTYyAQwf0LtBE1VVskpeIdxRHchlRxwTXwLtd0o=;
	b=gTkdAxdpR2GYxCrFuY6znSl12BPpGG6/lyJx0oiZzfsvqtn76f5mrYOKxDV4bAi1v1l/yK
	qIQQBRnIYmy9fOSGaS5OSTwk16I0OS7+v4k22JApLwCg1nmERTQAW4ES1dKefel8A69RKJ
	quiHMV1ewtMgP0jEQ+RJ5atPtV9BJ3klCly6iq3UWfQRbHHzGVvOsZOH6hFI+NlmSvrmdr
	PaGLF3yGeUdpIb7UoruJcfAjZ3IO5+xW2UjHgzwv9tikmoTtvakiTGO3/P4QKQV0MjI9jz
	zD7C85szE5dFczvrW/zhL9oJTSVTtHs5eVa1z9jgfFuChGm34qCcxlFh2lyXpg==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 21 Feb 2024 11:22:50 +0100
Subject: [PATCH v3 6/7] arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
MIME-Version: 1.0
Message-Id: <20240221-rk3308-audio-codec-v3-6-dfa34abfcef6@bootlin.com>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
In-Reply-To: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.4
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_022317_928651_9EF1BB79 
X-CRM114-Status: GOOD (  11.62  )
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
