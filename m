Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F372FC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 14:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUJfvX0X30STxW6QfeQUHwipTtHqaAY/nJBxHSzuwOo=; b=4Vv64+hFQoU3PQ
	kiR3/UllHcz9JR8y8P8AQpCG7TNh1GomJFg2UQNWhuvjg2i1+85Rr8CbRaNwdolhI3ToOXMXct3Sx
	8oLEBw6ni93zstfcyQSKEeIA0nKGYyY9K2MeQItk9KP5KIKy6WERH2cjD1FvWdjGkNlXj+YWL5ElS
	MZZM4QdoBexBX7FO8JIzuj0iGNw61V9slb0XGVG69Zxm2tJRphzimuSHUu6tDOXAA4+7emFjrv6gf
	tZfkTYv6+kn3oKATgDwrIey9pg9dHHkN+Wa0Z3P2EMp8nwQFHd53+JMquot7EzWMSFdiPN4PL8KJj
	S4QbfXsOEVwNWWcnSGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUt-00ERrX-0U;
	Tue, 19 Dec 2023 14:55:03 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUh-00ERit-0X;
	Tue, 19 Dec 2023 14:54:53 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8B06440013;
	Tue, 19 Dec 2023 14:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702997689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PDyTeU9usO3nPa3fs7kQ7qNlzGdPYLhGQTUhd4FhxwY=;
	b=B96wPCLjTmdsJD900DmDDyWBYyQR63QedKxMVIFYAllO8UzR/7+MLZMuQRr1oxPqVHLdmO
	wqA6h37ijE/3NphaWd+uLSe0Fc9/ntSHfmhnTu/GCJbS0V6ByORZiqZ6hFaDmI6Dq4+DGE
	3hM4a98hdzQVVOFTBIwayVOkTrig86/1GbL183VD2Ms6bHkdMvjaJ6fW5U/NOJ5+B697U4
	0zV6dplJh/+LM1dQwB0WLOL3A6gpF68bLbPyGYB2O4xiHFeVUFnQYYIZ7fM/if1mt3IVH8
	J9k2qbJT/HRTvmrg+pWtqr853UDpnkCQPJB7sdEYHnoabdV5jV7OhBQj06GG1g==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 19 Dec 2023 15:54:18 +0100
Subject: [PATCH v2 3/6] ASoC: core: add SOC_DOUBLE_RANGE_TLV() helper macro
MIME-Version: 1.0
Message-Id: <20231219-rk3308-audio-codec-v2-3-c70d06021946@bootlin.com>
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
X-CRM114-CacheID: sfid-20231219_065451_335158_4CB2FCC2 
X-CRM114-Status: GOOD (  11.49  )
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

No macro currently allows handling a stereo control that has left and right
in the same register and whose minimum register value is not zero. Add one
that does that.

Note that even though the snd_soc_*_volsw_range() look more appropriate
given the _range suffix, they are not suitable because they don't honor the
two shift values. The snd_soc_*_volsw() look more generic and are suitable
for the task.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

This patch is new in v2.
---
 include/sound/soc.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/sound/soc.h b/include/sound/soc.h
index 7792c393e238..41ba90bdbea9 100644
--- a/include/sound/soc.h
+++ b/include/sound/soc.h
@@ -149,6 +149,18 @@
 		{.reg = xreg, .rreg = xreg, \
 		.shift = shift_left, .rshift = shift_right, \
 		.max = xmax, .min = xmin} }
+#define SOC_DOUBLE_RANGE_TLV(xname, xreg, xshift_left, xshift_right, xmin, xmax, \
+			     xinvert, tlv_array) \
+{	.iface = SNDRV_CTL_ELEM_IFACE_MIXER, .name = (xname),\
+	.access = SNDRV_CTL_ELEM_ACCESS_TLV_READ |\
+		  SNDRV_CTL_ELEM_ACCESS_READWRITE,\
+	.tlv.p = (tlv_array), \
+	.info = snd_soc_info_volsw, \
+	.get = snd_soc_get_volsw, .put = snd_soc_put_volsw, \
+	.private_value = (unsigned long)&(struct soc_mixer_control) \
+		{.reg = xreg, .rreg = xreg, \
+		 .shift = xshift_left, .rshift = xshift_right, \
+		 .min = xmin, .max = xmax, .invert = xinvert} }
 #define SOC_DOUBLE_R_TLV(xname, reg_left, reg_right, xshift, xmax, xinvert, tlv_array) \
 {	.iface = SNDRV_CTL_ELEM_IFACE_MIXER, .name = (xname),\
 	.access = SNDRV_CTL_ELEM_ACCESS_TLV_READ |\

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
