Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF5B6CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGxwBz47Og6seOTve/b2Rjb2HHgiiQysc9G8GVEGRSw=; b=RcQVqmsUIXpcjN
	1loB6qYjvWmJoNbwEg260XWldVm1TPMllKKXaPcTv2BWg8eaC12cuR5HHTPEfXYZ77sQUjBUThEQl
	rX88/KN4cVZHuhhiRyzKQWHtocW5F5TgOH/E840mpvGvAMzVsTG9CRVLvDFUEgGwTWgLdXYl54az+
	L0m49e/PrF+WB9ZwagLGehGoW9FbR/75bGTBagEtciTHSbY1RQKd+z2aTe0dQkOGnG5tWb7vTT6t7
	h9YMq8KwprpAdYwVPmgOFJEXKDHQOvaTsCHDhEZKFH3+7rCiHstqhr4obNMijOXNMsBSh7hTEoP5O
	DQrhhF4iUBZGlZPTIrbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZG-0000000Gbug-0gq3;
	Thu, 15 Oct 2026 01:47:38 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZD-0000000Gbta-3vwX
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:47:37 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2e8fe8e343fso18310065ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028855; x=1792633655; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qvYpMSlsoaD702JqdWz6T2bQ1dialbnMpsVm+cSYlj4=;
        b=PT5zjxeftQjKYCtbPsMAsxsYYu9W+T29nZRd2hLDj5DPHorWPuUXqfrL3dnAnkOQO6
         6ajaDY808a5mVB8fqwecLJlgaKL/dt8nR6BtRN8daLgdpxCqv4+gdLxyueyrhCCq67TC
         h37KNeUQ4Gqrk4+q/McLrX1Z3kVYX4ZYOZHCMoWM6+7oxj3lcnQiY6YqOgPCbalzGDxj
         JtXsUyZhQpY+eKlJoNhM0HyHwoyZEUPCnHRz5+9sgCLNRFtCkwmpQBRKzWgri1MwrMY+
         lGc0W3NKQld9Sb+sGAzG/2DgLVAtHC5vfcvgEeVrSZEOnyeZEDaUOS28JkO1NXn8Whvp
         cugA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028855; x=1792633655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qvYpMSlsoaD702JqdWz6T2bQ1dialbnMpsVm+cSYlj4=;
        b=VyqYnin4JxVEViQSDx79rrp4+F0nSOS3rfN8E4WtuNS07BqxCTFL7uj7mkbpoT7rEn
         owwMd0Tnh+Di6T3Ey/TVPO8pOhi5fcBCmUCvt0iqH8tQko7auyAKOx04Uc8FDFwAM+RM
         aRCHDJCf35PXssJ1tPJg/MUvkShNntbaD4PaDWSSTrZAnnz2bFUljaFFUWqPnkOPR2c3
         vhJOVu5uvSeVXCLSw+qHjmgV3ri5r5j0F2KHvLn+OEC3Qx5svq5zO4jrcQgkjtJaH5jy
         n0KGpO+DEZgquKuf80E8Omge1hAdN1iA2K6FmIr8XsS/mLO9tFxKWu9FbpOp90Ad345B
         rdvg==
X-Forwarded-Encrypted: i=1; AKwUvBwkvp7E+W8UeW9s0Tsgo8xfYZ8kWrFlLIRoQu7LGB8+nA0fqlXqhap/RTa+Hi8xheePle7PQJ0UXQrxpjVTcw==@lists.infradead.org
X-Gm-Message-State: AFq9FYK0cq73tyV+YRd65S+bkkrOY0y7Bxd2vV5uvtzG68iQmh6c0ML+
	uhvz1Ui/CiG2pTaxAfn3aMqpSdRIACPClaNWIgIG/4MtOepzlJKcMx2x
X-Gm-Gg: AYBFou377qn8wQbmMn0sXm0EWPFmY+tX5a4HmemRi6YqY/BvSXrtBNb6SkgQ9TIbkub
	0wCgXGqLWnO0e0/dxDNHIQWg5aaYnAzhwKvRXsng/NrzBvELz2sykwQ/EHDMLuOGaSk297m4wXx
	kscT734mxGuzi+uL/dBf+DXQHoDJTJXY49cQjX46b0cZNUxZ6fftUkL7mfVL/H5kqzXGL5f5Uva
	QscNGQ8K7ne6iLV6gsf0TOHxXRaxN7wO27dlQ2cy6WhXkPrRjmZ7pSJ+Wsqv5aUBhqrCVC9Q6ET
	O+/qn6oB5HOOiBbVJWO02S8tGSxLMQfNXps4V+4ZhXjk6nvccT6OfbgfSm00vCqyV/E99UNbty/
	rnpWWCqjeSX5KdULe4PmenF/8gqym/aPmEsjNTlclwNvbmvRXBbh2Z0OFKAbNQ6s8Ey2jjZuvNN
	F/M8rCemsa5/tR4zntOfcFiu03FaZE95EuUz+oG9PIL8g2BaTa5VR3HycuQyY6RClSgqyEVHrnA
	An4jdxtx7J3cQ1yRayfmJSqnDJFSdiyHT1EMWoZsNgRi9Qlt4fMypV6WgBVeSTpSG52KiYfrbEF
	ZEsi7eEeGZUpLg==
X-Received: by 2002:a17:903:2442:b0:2e8:422e:19c5 with SMTP id d9443c01a7336-2e842dfd28emr133980465ad.55.1792028855139;
        Wed, 14 Oct 2026 18:47:35 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:47:34 -0700 (PDT)
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
Subject: [PATCH v2 13/25] ASoC: codecs: nau8821: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:12 +0700
Message-ID: <20261015014324.5569-14-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184735_985792_1BAF24FF 
X-CRM114-Status: GOOD (  14.00  )
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

snd_pcm_hw_constraint_minmax() may return 1, which is then returned
from nau8821_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8821_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8821.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8821.c b/sound/soc/codecs/nau8821.c
index ecadbaee1037..7b88ee3159d1 100644
--- a/sound/soc/codecs/nau8821.c
+++ b/sound/soc/codecs/nau8821.c
@@ -829,14 +829,24 @@ static int nau8821_dai_startup(struct snd_pcm_substream *substream,
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
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
+	return 0;
 }
 
 static int nau8821_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
