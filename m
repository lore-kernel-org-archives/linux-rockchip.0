Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B07CBC54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 14:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDdsjaJtu9eZ60AIL19qGPOzx9z5adtpO6guJeR3AaA=; b=Ng8bz3RZjPK/uV
	NEYn1gJqQaildg0b1kYXS+SBSuef4h2k8SwZ5wBFahqC5NXkfTI2HhKrqBSPsgiuC2YlqBB6RK6ca
	4jp4oT67ctB7Ud5WyPEkH3vFUsvXj/YRF99nB/iwFHwnKqyQ2hSmIPmZ8JO3hjN50aBMi+ZUJj81x
	lamqKj84KhbiHvAA1VZOMPH5QoPyBWBFzQqQUvjunOlFrLnkJlLlvXHhEr1L5gKijhyyqhjo11ypD
	aq0hq+1f67lUaVastbag9kjGFqAaML8cZnXt44ylX6u84iZgsbVTrob0DVi2qGOl49g2f6DlpbNlG
	ATApOvIbjnuvuYFEsJyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvyH-006ppz-Nu; Wed, 07 Sep 2022 14:24:05 +0000
Received: from relay12.mail.gandi.net ([2001:4b98:dc4:8::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvwR-006oZJ-K7; Wed, 07 Sep 2022 14:22:13 +0000
Received: from booty.fritz.box (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 0F1EC200011;
	Wed,  7 Sep 2022 14:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662560529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H7rApNsDwnaiu6MG3hhivs2ZkGDwqxF3VZC6R02WDNw=;
	b=ipnFSla9jeMfitB27ywlIo/bpDmP92NiUsF+hn3Fzn3jcCIAs1qozgpLFSWa95z3SOS/G2
	mP0E6XtJBj17nE/m4P1L0EDsBM8QEmuPyFyjkX1hPNFSKO6c9ict3RLuo+kUI5KhZYLirw
	6x/s+ItC9bDldSy5sCKwNsYzMO96ntkli2TXFop4rnjDVkoyWRYbAYeqRLcwFoIUj9KUz9
	rpi9CanlYQnxHhhjV6BB7do9tp7SzgAI4UkikKmyMwoktiCxm2odK78norQc44MbYNOgBV
	tkgdYYMAhg0FWVN904llHJ03j0h73wCdJas/l8CMYvyUNuHjzCUVUbs4fEsTfA==
From: luca.ceresoli@bootlin.com
To: alsa-devel@alsa-project.org,
	linux-rockchip@lists.infradead.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/8] arm64: dts: rockchip: add the internal audio codec
Date: Wed,  7 Sep 2022 16:21:20 +0200
Message-Id: <20220907142124.2532620-5-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_072211_859991_6BAEB56D 
X-CRM114-Status: UNSURE (   9.39  )
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

From: Luca Ceresoli <luca.ceresoli@bootlin.com>

The RK3308 has a built-in audio codec that connects internally to i2s_8ch_2
or i2s_8ch_3.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 093b70563b23..221cde49dc98 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -808,6 +808,20 @@ cru: clock-controller@ff500000 {
 		assigned-clock-rates = <32768>;
 	};
 
+	acodec: acodec@ff560000 {
+		compatible = "rockchip,rk3308-codec";
+		reg = <0x0 0xff560000 0x0 0x10000>;
+		rockchip,grf = <&grf>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		clocks = <&cru SCLK_I2S2_8CH_TX_OUT>,
+			 <&cru SCLK_I2S2_8CH_RX_OUT>,
+			 <&cru PCLK_ACODEC>;
+		reset-names = "acodec-reset";
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
