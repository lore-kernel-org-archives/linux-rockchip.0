Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FB5CA600F
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLKQivJdCFA3p5ArFXbdrO9kpJHL894GhvxEKoyLtxs=; b=J2+mSqinLDFZDL
	zo/MKeAfgoP9t9m7KWQziFabGYwj1HFMuvvEwKdKDfsrPtCvtCoF731wY5s3+u/QBBaLvFWRuUvd9
	tL4x9XqWmWQ6R2ETrOovAAQEP6c1A1edphVEIkokxeuan6aVHbfw61tNcn62riHktD1UbFuD+xF3d
	wS0DDLaeajrAN5FVIZR6aN6nzfwUR/aRr/8f4TnoNGl0gwCACitL6ktDh2YGLvuZBAzdEbDXqFkti
	PzvxG6NALUFjO8aJlm+9KJ7+QGxJIfuVAY2wx58wCYk2v7fd4BtKAoaxLdM3Wqqjl07Jm5YfZBbYp
	yO37zZXr6VMO2D/26R0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZu-00000004ANR-35Q8;
	Thu, 08 Oct 2026 10:42:22 +0000
Received: from mail-dl1-x122d.google.com ([2607:f8b0:4864:20::122d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZs-00000004AM6-1sK2
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:42:21 +0000
Received: by mail-dl1-x122d.google.com with SMTP id a92af1059eb24-150f88d22aeso2387839c88.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456139; x=1792060939; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p0qhtd+efK/Hc1Em0lvih3vUFvGAfNajebBLWEpeLzs=;
        b=CATNrUQIAOKI8cLYCktQ1oKReFuhev6LFuoQAoacz+olBEwhyb5Fcy6LG5N/WRpm0w
         J7r3fYUKLTIImPxL1KHBSaJ2NLYnIWswQQgQGwovpSVH/iAXgxjDI2EKsmA7r37r/2ae
         njftuLPsTEEdnJn75yyoFOwUcDaW9XiDivXk6CurUyoo4J+CU9NVQkiSPTWEW5WpQhJK
         apQsJhqGF1sKiOuFm2rYdJJLjI1JGCZyIQgCNgctdsEc4E8pL0jEnH7KjPOzTCxtoU6q
         NJvTLDLSN+8AGfi5xlecLbq3IupcMbWkbQv11CTlNK7l8WQyUMZOGi6GShDCZoPzLn6c
         4D3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456139; x=1792060939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=p0qhtd+efK/Hc1Em0lvih3vUFvGAfNajebBLWEpeLzs=;
        b=IG/9v0Y/yp356io82AOt/nc1VnQg/TK5uyQyFs6nbbQydygE/R3OGKdMem+mIDvrcE
         4Vz4YcduRT5+HyCBMuVOCTYkathKOogb1+ViTYu3itAB/Jo83n+AHhcSCO3NWMv6fgZT
         AzlCGu5mjMkwy6O2DzBmjHE3ujmq0rZqUMPb6e63VE+eKNzdyt1X3nz93K4P6X2kT6Iz
         HU0CZIqVXt+LedB+E+9NUhh/xI4pXh4qwbx9MVsgf1B86pTJjCtF2jg8KxTQ8wwbqsDG
         T6ZLFVv9U1/MjFtW7/qTZdzSv3nSGThz/qbseknvx1xRltwgpm83tWHGAARAC3A7sfJl
         5NBg==
X-Forwarded-Encrypted: i=1; AKwUvBwaGtole1vHyhc1FaOKLS92sTVDNRl/tg7bQQLfBxjS3VmQmMSd1j7akZ6dmEeh4TH0XiAhIS/W0hjFv7Menw==@lists.infradead.org
X-Gm-Message-State: AFuF++m+oF7LCjd6y7pu3ube14vqJPqEYREl6MmzKN597UWDV8Xm3vne
	qZyxzxUNBqH++dGdXx1HV1W+bpasqzl36zxAOPBBA5fgCIMB/Ff0XS3Y
X-Gm-Gg: AYBFou2faYM+cEUvl0v9Dzlqk/cJpSYc2uI3x7xbEgcJBfsAWQ8snRz1ppQgCmorlrE
	K6QAOVFKlf0BpHx1Q/2pCsMgncEGyiyF3NkQjikBnz/zhcBuTEDEEkcLfbPPLU9BO14jJT7huMl
	3xyIqmICiNiojsotVYoW9UcDpiqTNejglPAaIQh+l9+S41YDSzZGdxSBQL8u5iLFsIuTuHqB9B0
	uNhzdpOLWnc8B9LzQqwfcc0pntCt8SSqPbBTMrWNWbOSSp9rV0eQJs6IIfcxGhEZa9CoqPiuBku
	Vz+1BaRpBd7IrUdaTdAXLDUYL/HnI3Wlwr8lddXLe1ntzev7H9cJWjHtlfGyYCGKbBd0S2tFsU8
	FsSAvnwu63vzQ6+sKCa5zuIqNaSycteiDqPJB5zgIeZP6rjsOOJ75WwRUOfC1pcFOM9/BAebPmN
	IMPtr5bJgFh2tfvawucol6Pl2zzmEjO8xwblWM19tvZLwdyxQ+RMMVoaCRhvm8xi7cCHUuyojJg
	t2vO7fcgqmLzNHRmqHKTarVQbSa6vM+pX+uX+Q/jR4sGviBlXtf85ySvpJiVhwnjSVTUsQIpQBg
	4I5bjm1HX3lNECs=
X-Received: by 2002:a05:701b:4501:10b0:15f:6789:2c2a with SMTP id a92af1059eb24-16207d7c2a4mr5290246c88.36.1791456139402;
        Thu, 08 Oct 2026 03:42:19 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:42:18 -0700 (PDT)
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
Subject: [PATCH 13/24] ASoC: codecs: nau8821: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:20 +0700
Message-ID: <20261008103831.542533-14-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034220_487733_7838649A 
X-CRM114-Status: GOOD (  13.05  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

snd_pcm_hw_constraint_minmax() may return 1, which is then returned
from nau8821_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8821_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8821.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8821.c b/sound/soc/codecs/nau8821.c
index ecadbaee1037..935df063822c 100644
--- a/sound/soc/codecs/nau8821.c
+++ b/sound/soc/codecs/nau8821.c
@@ -829,14 +829,19 @@ static int nau8821_dai_startup(struct snd_pcm_substream *substream,
 	struct snd_soc_component *component = dai->component;
 	struct nau8821 *nau8821 = snd_soc_component_get_drvdata(component);
 	const struct nau8821_osr_attr *osr;
+	int ret;
 
 	osr = nau8821_get_osr(nau8821, substream->stream);
 	if (!osr || !osr->osr)
 		return -EINVAL;
 
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-					    SNDRV_PCM_HW_PARAM_RATE,
-					    0, CLK_DA_AD_MAX / osr->osr);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_RATE,
+					   0, CLK_DA_AD_MAX / osr->osr);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int nau8821_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
