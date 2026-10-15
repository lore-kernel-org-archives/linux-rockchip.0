Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEFDACC6B34
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdbgGKPN2dLJJ55vq/09YzzilYPrpAU/yo+i3Sedxn4=; b=nVXGNOFTIIKBRi
	l1gR4FHMMBVJGDc0Bw+QKHU3e23KJB0dPkJ6F3uHtL1M+xf/yBR7nqO3NLGmoLb0stXgjY8Sn2E6K
	SeP/v7SBPHch9y4PuhtwFK5NllZmD4alktZjSDxIfA2ggM/yMfZfFb1oDxsyEo5KdKfLIGmGPJsBf
	ZubHZzWwnpcugb6vbhVG1JTre6Na2AT+VquLpeEXUOnVF34htGJ5Kwqw1vmPJS/J1oImCeF+KKAs+
	8rqZR5iL1igRueg9mwyBBCqySnfZ1+YBV/ArjYScqSNX35ost6Uh4Ra/ZVTEFcHVqFhJz89qZXA1M
	aQuBO1ck9AD1Se+o+qsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbi-0000000Gccj-1WD4;
	Thu, 15 Oct 2026 01:50:10 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbg-0000000Gcbr-1d5B
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:50:09 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2e60f9af6e6so12942755ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792029008; x=1792633808; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gxE6KFVupvhvfG6m0kR0QYNTixMRnaDY+YvcWwq9JEM=;
        b=Ku/Fq0pxHBd1tSRfsW7nDr4cnjcBb9dko09P1wTD9AgveRHGIQ1lweXsrmqvNO/9/c
         6ynq9q1x6lBn6aETn9XRmOh5kEG2SdWGB/UkxQvdtJ3heffGgBAOdwPd5isvIoPA9Uzq
         o2x1/e1A9L4lug+grtULVhEKf1VnuIFF3Y41/CwbM6dtlxjISZXJ71CzMoKe2cxYsSST
         W/Z2Jl9DdZX2CLDjmhJhJFWQACHVrxw3cl9lUk2O4lJ/R8o202iY7B5Csx4IU1qzDbbE
         sqd3DJhx4sv2wfOXiI4MzPWAA6NNM2P6+kaHhaZKH2IOaiBCc1y0C7Z9FarWtiExeyyl
         dXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792029008; x=1792633808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gxE6KFVupvhvfG6m0kR0QYNTixMRnaDY+YvcWwq9JEM=;
        b=MWfHSeSJGghx1u3vXLHzy576B5+nHB4pl8fJFI5U6eZX9PqMfGDvCVLgi1fwjJQiyZ
         67PyreD5ERYUTYDY5AOV5zHL+zUQIRV+YpN2CuOhhpzx9BjeYxEeY8gIczJTeUfjzBcZ
         G2r5+wtEWbCah65+G5P8UcWnZgbJ9G+GnqY7d9KWdf9uHBIe374fvwb4MqFY7jfKTter
         9VZLz76/OpBFs9FF4TDGSUaEfrbWMRNHkuVUoNEo2jWU/edejV+zecgvVn3q9PzuXZTn
         d6QAfWRSA4IxC6gtCBHaOiFBpplks03l6x1/wEmzqMTRCM+8CfZy1DUS0eM55hEFT31a
         D9rg==
X-Forwarded-Encrypted: i=1; AKwUvBzYhA0qWgxhMyHqTeU382r1I/JusO+4QsG5+u2b7QxJwAXP6Zx34ZxaQfgWhhvclaoe1RwKrswbK96O01q5MA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJSD8wPt7enp3fEWUSdh21zH17VcnKKVwAI5VNRIsVZEkzg0inr
	BiJ5GN8UPk9dOAyC6hmT3XRAppJWc8Cjde48z3FGxgpzlUTzk5nbwnqS
X-Gm-Gg: AYBFou2aMzWRglJP11qYHXsutBGMVUOwjsO5MjqPuY8gqOCSsTeGtjBEad/6pVdKKSr
	gNA8nciUek050oY2Pajvrj0YbtNc+PSl15eQsrJ5XEBiMEQM8n9OfrxxOaQkDkjaivCrYW7NRiO
	d3UNNYTm6yy4e4iQbe51OovfGm58f61CPZWPEa0NqN38nrSdTupDvZHiaWOyIJHI3LxkisZ0b3G
	xwEpolV7vuOkxviVo3awi0tZzGoKKDfwclyQ5EIwCcFyRvjN89exRkSG043eyQIeklskvlijqcN
	WsEuf/aIoMzQ7jJubQc+XK80585AtvEmyGRTSCTM7Jc3FsgzhncethUY2r7fGPJCWVAv15LYVJR
	79YYZQQ7dedbttIscaKkHdW8Uzb0gcSPK/yEZlvt0B0weXrxhB+gVY/81e0WodbQXJQoBOi4teL
	K79Kv+/epf7a4SuZieasNXfkrLBoK8/miJRRuegVi2R9XJl7FhfxgGIm3jaMJ4HQvxVtSo4ASB8
	pCMy6D/1/8kdWjx0SFBnt+qvEFgc25uouaGPTEki+5I7b/8JsTLIw6HbjBue+jUUwyv6xoGcA++
	isWueK8KVc6D9g==
X-Received: by 2002:a17:902:d58f:b0:2e5:d33a:88da with SMTP id d9443c01a7336-2e842cd4632mr139407115ad.16.1792029007639;
        Wed, 14 Oct 2026 18:50:07 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:50:06 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
	Venkata Prasad Potturu <venkataprasad.potturu@amd.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	povik+lin@cutebit.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Andrei Simion <andrei.simion@microchip.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Cezary Rojewski <cezary.rojewski@intel.com>,
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Kai Vehmanen <kai.vehmanen@linux.intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 22/25] ASoC: renesas: rz-ssi: Ensure the component is marked as opened on success
Date: Thu, 15 Oct 2026 08:43:21 +0700
Message-ID: <20261015014324.5569-23-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_185008_436022_82165FE8 
X-CRM114-Status: GOOD (  14.72  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from rz_ssi_pcm_open_pio(). ASoC only marks the component as opened when
.open() returns 0.

This currently has no functional impact, as the component driver has no
.close() callback. Still, return 0 explicitly on success to match what
ASoC expects and ensure the component is correctly marked as opened.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/rz-ssi.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index b1587f499cb8..5f4a53886541 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -937,10 +937,21 @@ static const struct snd_pcm_hardware rz_ssi_pcm_hardware = {
 static int rz_ssi_pcm_open_pio(struct snd_soc_component *component,
 			       struct snd_pcm_substream *substream)
 {
+	int ret;
+
 	snd_soc_set_runtime_hwparams(substream, &rz_ssi_pcm_hardware);
 
-	return snd_pcm_hw_constraint_integer(substream->runtime,
+	ret = snd_pcm_hw_constraint_integer(substream->runtime,
 					    SNDRV_PCM_HW_PARAM_PERIODS);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure the component is correctly marked as opened.
+	 */
+	return 0;
 }
 
 static int rz_ssi_pcm_open_dma(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
