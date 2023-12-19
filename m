Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31022C46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 14:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkqdP95BCwd0S6xRJtKJ3Hg44sMH7PXprQCdpVSlTaE=; b=qZDUSv8uPw4pXL
	lZUxngIJmpKPrBFB6RKfx9Mabds3lmp915UCNm+cluIBunR4m67FURfk3tzM10JX83VMyAlIaxatb
	tngF5HW+fMOGzkiayce13rKScEhd7JTSD5DSA81rWDxpsRj5SMdJ7tOUDLvp5ruTzafd4/2VtAH9Q
	ujFEk0rsf+JsYIDUbtJbeUFCU6Rh4pFiWARXVjxo6ctD4cBRItkNsPl8kqGk0BvjZLo1Y/giPL35i
	pqwqbP8zfr0NcI5dnV7TRY0OWl4XIQcBt/A72cR9EUartMBbfCUnpn3L70z/a3wyGtZndt40HrQk0
	U4fv/+U1qOenaAxyTnXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUv-00ERtH-12;
	Tue, 19 Dec 2023 14:55:05 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUl-00ERm5-0d;
	Tue, 19 Dec 2023 14:54:56 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 920C040011;
	Tue, 19 Dec 2023 14:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702997693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DKABT8hoj9L9ghNNfdmlCq+oeU3JvftP7p2T+VtAYWY=;
	b=NjKcCOgGDo+XETF/Hypet1aJBwghhZr1DhRR6Qi5wKYDb6mF1BqGPpodtuqh75GMYhjxOP
	z1FLdAG/tUcXxg7k4cu6dk5lqrDmC7fqYBf6D0Y+ELnjWyGEpe3RmsKdKnbwoXQRGMDJNt
	f1EahkiGS2OOWkL5WHxMhgkcJd4PXjx6e0EKGlNQGsar1GG8Jwfi2buOGShQQbTTbU+7/p
	djDi4xaa3N0M2EwV0OJWSWiv7VTVDe21LZjMzvP0xb6I0a+1K+qmKX59AVad1tku1M2FSO
	h/lq5+ZJgWcQBnuJgSD8Ap0a7/GWc3PcA5XRJYXP3WwZx8Hoas5QtEUHufssSQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 19 Dec 2023 15:54:21 +0100
Subject: [PATCH v2 6/6] arm64: dts: rockchip: add the internal audio codec
MIME-Version: 1.0
Message-Id: <20231219-rk3308-audio-codec-v2-6-c70d06021946@bootlin.com>
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
X-CRM114-CacheID: sfid-20231219_065455_367261_B63CC6C3 
X-CRM114-Status: UNSURE (   9.08  )
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

The RK3308 has a built-in audio codec that connects internally to i2s_8ch_2
or i2s_8ch_3.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Changed in v2:
 - use generic node name
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index fa34cae915a7..965b7d3230c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -810,6 +810,20 @@ cru: clock-controller@ff500000 {
 		assigned-clock-rates = <32768>;
 	};
 
+	codec: codec@ff560000 {
+		compatible = "rockchip,rk3308-codec";
+		reg = <0x0 0xff560000 0x0 0x10000>;
+		rockchip,grf = <&grf>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		clocks = <&cru SCLK_I2S2_8CH_TX_OUT>,
+			 <&cru SCLK_I2S2_8CH_RX_OUT>,
+			 <&cru PCLK_ACODEC>;
+		reset-names = "codec-reset";
+		resets = <&cru SRST_ACODEC_P>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@ff580000 {
 		compatible = "arm,gic-400";
 		reg = <0x0 0xff581000 0x0 0x1000>,

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
