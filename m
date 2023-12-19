Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C07C46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 14:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbOM4yE7KB5ToIZXYtltTbl/1RrBaTLRgzES/yzOeD0=; b=asny9ZYCtcwv/G
	tCZZm0tCHfGcl5xSd7tZTYhZoHtlNj+XnUmMuYDDum5lzXvNTF0krdhWNvXSyCEl6A6rk9JQd2MzQ
	juWqzIhTAOoN9+MFJatqmKfS7JVdZxj4rqjrCQiBl5pEOCqgpree978d2Xrb6w9NvHfKFP7xfejHO
	RmWbhwRpp43XzAcrVcKOHyLyVkTMRYNZ03QSkzlOD6o+XV1ryITjyo2MANBbfdBo309OH2Gcd/VOS
	4U8hgUVnGKWh2WypVbnl8HsBqt/edPBfAkMoL2YfkwXZSQqHvZVRFOu84vWw8lIew4DeWppbaDDZy
	pNA68IQr53xXTyYiEk+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUz-00ERxs-3A;
	Tue, 19 Dec 2023 14:55:10 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUn-00ERl6-1c;
	Tue, 19 Dec 2023 14:54:59 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 402C840016;
	Tue, 19 Dec 2023 14:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702997692;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0cYAvtbYQmtBX1+AmSwcKknSfCzuBZ5CMRjyNDvr3P0=;
	b=UFcfiK00j/VBVCdL8RcW9luAA2fO95lbia3p8M4aYIsiw5sDDCbodzKOe2BnFeNJMPluC7
	SsLp+SH5bXVR0DBJmC8UrOwwX1svLnFOgajqXqjM6CHa0/aAVH0NOlKIrYkRIfH0LB950s
	tX62I5atHBh7ODjLIMsf3ZDSrTGSfe5QLyhadCfHFmiKMb6lxTmnxTHqlGfbnHPRrPOfWK
	yoL5MaEyBfZ/73Jwkf9e7SMSFr41Px/SpXikC37AZK+/uKg+p5f++r+t38k9MkMQRORtkM
	d6ANJ03UH2ufbvCohFr+1G8/+1uQzqzyXzcWjQFl03/2K72tYW3n1PeuoQlvug==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 19 Dec 2023 15:54:20 +0100
Subject: [PATCH v2 5/6] arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
MIME-Version: 1.0
Message-Id: <20231219-rk3308-audio-codec-v2-5-c70d06021946@bootlin.com>
References: <20231219-rk3308-audio-codec-v2-0-c70d06021946@bootlin.com>
In-Reply-To: <20231219-rk3308-audio-codec-v2-0-c70d06021946@bootlin.com>
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
X-CRM114-CacheID: sfid-20231219_065457_825932_35DC0B75 
X-CRM114-Status: GOOD (  11.05  )
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

Changed in v2:
 nothing
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 54 ++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 2ae4bb7d5e62..fa34cae915a7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -573,6 +573,60 @@ dmac1: dma-controller@ff2d0000 {
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
+		clock-names = "mclk_tx", "mclk_rx", "hclk",
+			      "mclk_tx_src", "mclk_rx_src",
+			      "mclk_root0", "mclk_root1";
+		clocks = <&cru SCLK_I2S2_8CH_TX>,
+			 <&cru SCLK_I2S2_8CH_RX>,
+			 <&cru HCLK_I2S2_8CH>,
+			 <&cru SCLK_I2S2_8CH_TX_SRC>,
+			 <&cru SCLK_I2S2_8CH_RX_SRC>,
+			 <&cru PLL_VPLL0>,
+			 <&cru PLL_VPLL1>;
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
+		clock-names = "mclk_tx", "mclk_rx", "hclk",
+			      "mclk_tx_src", "mclk_rx_src",
+			      "mclk_root0", "mclk_root1";
+		clocks = <&cru SCLK_I2S3_8CH_TX>,
+			 <&cru SCLK_I2S3_8CH_RX>,
+			 <&cru HCLK_I2S3_8CH>,
+			 <&cru SCLK_I2S3_8CH_TX_SRC>,
+			 <&cru SCLK_I2S3_8CH_RX_SRC>,
+			 <&cru PLL_VPLL0>,
+			 <&cru PLL_VPLL1>;
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
