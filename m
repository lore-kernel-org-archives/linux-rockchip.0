Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BFFEC48BC3
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 10:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXP9ppDs9kFJYfceOI98KNhnemRx1v6wVhcomqjQdGQ=; b=TTu51J4vRBVA/V
	mh1NE/9OoQMaxcp0fy/Io1fTbssmQP+fZAxnJLTru//tTh844IacbK7wWr35wh7oMhQvVmVQEIKSV
	mWl5PrTw10lEt6NBWPdzNPJ8pGE8aiMhZLFV52JkQFKVWblwCogsYkxEs9ivNQ4mtdlbQmgsYNV3X
	/EJZagO3xTyA1NLHAO5e7YrHiVrPfHOSJoHlaj1gHS4gERTcn7X1CuAVZD0eWF0JkFlhxk76mu04M
	oGj/Xd+9XyEw89sb4CBWDC6qH3CBQ6xdEcyAwToRgKs8URnLGU2w+VDUGqLbuLxjegNTwzkF9gvrl
	Rcmr7Qjh8SvRISy2459A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjm2-00000000U73-48We;
	Wed, 21 Feb 2024 10:24:22 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjl1-00000000TPD-0892;
	Wed, 21 Feb 2024 10:23:20 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1D51F240004;
	Wed, 21 Feb 2024 10:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708510997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rq+wybioC8LqyCl9R5OUbd29VCY4wio0dhlATjVMPPA=;
	b=oUycE2NWHhr9JKpRhvcQI/qQWVSEfDFzrJhUFpN1vSjWU6AyQn8imRa92hSo3TxEO0kEKx
	8rz7RIMtA4OqxCLr4Kv2NabqEcl0leme9LfP8D1gdy9lOJg1N5r55IEj/tXQdJkCj7QW5w
	s4Wi+m8Nw9sPf4+XrNb7w9ptO7eo0MIWpUDYylPlmG0N/aCX2mNsgbr2A3+5+/Ksc/jTAP
	2X02jS4CIFw+8y0eKzejrzdcTV6EKU5l7IkD5+t4vj3qeK/oT9nr9HGH+l7hV7juqO+VXK
	SiNNRFp7lKrPzNmt3vIVYHH4x+2Aw3e9fCkkCfZ/aeBusdC+fbyEEzQdLRIuNw==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 21 Feb 2024 11:22:51 +0100
Subject: [PATCH v3 7/7] arm64: dts: rockchip: add the internal audio codec
MIME-Version: 1.0
Message-Id: <20240221-rk3308-audio-codec-v3-7-dfa34abfcef6@bootlin.com>
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
X-CRM114-CacheID: sfid-20240221_022319_414306_2C47FB1D 
X-CRM114-Status: UNSURE (   9.29  )
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

Changed in v3: nothing

Changed in v2:
 - use generic node name
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 662c55fe9b77..962ea893999b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -803,6 +803,20 @@ cru: clock-controller@ff500000 {
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
