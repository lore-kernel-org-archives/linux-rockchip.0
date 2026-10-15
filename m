Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B08CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7RFIhRrXDpwbASf5+2Rh+enZ+7cVbFHpbPK2ifrRXE=; b=Yn8szrl4OrEK+m
	vLznKnhknUCSmvwgKXCEVZo7kWuzLaQPj4cBvC+/RXFLfsomln17hXInaTbIKrSXSeEnKa7EZAZE5
	3xaCNAp7z7JBVUxuB6OHaKgAghkLfbNlC42sW2fpRTUrwB6pFa/W4P8ZHAyZAhoSV9zJ3CGFY/emQ
	cX/dcy2aD5PFnj17ag5r+95e3+X7m0BWOsgB/+DQpUcxMAVU7ZBTaaXIxp5pMO82wpnhXxY6fccBQ
	Iklt7pKQnTUVzvEHAJb9cAyiOqZII5k0mUWZclzf7by++UGu1sRb2/aJiPVlC0HAxfmABhxcIAsuV
	WfpctH2jxOQVvJ81Q8Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZW-0000000GbyT-1ePD;
	Thu, 15 Oct 2026 01:47:54 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZT-0000000Gbxe-3gbL
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:47:52 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2e8da6ef7ddso10610625ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028871; x=1792633671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=r52r7lHoOPMhC++VZB/BAS85K3dCRyowF6eP319pd4Y=;
        b=meS9Niq6Jy3vWEekjCNVqWUSopS2MBNFtK2014xkveGMeCIPP2VI6S8t0qycLpE13Q
         FaQlpLx3uI56eFiv/ONqx8Y8KrCBwppeS8MtI+44g9EimkwQ3TH8s4SFxAavD/WgK+9W
         CymO+g/jX/dRoNCw1nBtomXdHRE1zDqbu7ajZzMvEMmWjUfrSg3vPQKCjqhVM8ExdyCf
         yJMlXm621ZIq3L3HFLIz86phVqWHEOjxjwbGoyyh3TK9M53kQXgpWQhT2MreaOecAQGS
         dyWLKd5KE/nMAY4JJA+Arlae//dqE2BWMFfuxiJNA2Ogyzn0Nh8VD3uv6JAsTOmtQesB
         bTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028871; x=1792633671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=r52r7lHoOPMhC++VZB/BAS85K3dCRyowF6eP319pd4Y=;
        b=CDIel/3/432fGlHDKrVL7UIdE9eiIciFMO8MCN2awtc/DZv+fWMFfN+FXYc0JAsmCd
         GuegdW5xPh5s0NEdhjBkZ3T9daUhBqQ8JQykS+WyWpDwXRKRQLhtO2Hs/8sZCuXF3bY1
         hHd/JyM/akyz4QJHlbrYgUDHM/bDbCCJnJq7DCOwP6oU2+3ruT1z+DIji0bIx9PU1r2X
         ry3W40OkrHM5tXoHDnWdLCVOuwMA0IhwwaxhZeS/jZCfeZKnfAXE9M7fleu/OMAHV6fq
         AyX9ThEG1ZvxRO3H7ip4BIMPAg8JCa5zkvuYhjvNBx2TejJJ36k43TNMocQxMsFv9gWn
         UgJQ==
X-Forwarded-Encrypted: i=1; AKwUvBwoiyW140L1cbs4OIubVcK1Z0RfcmQVjEkrcRxGmFLGkJCX/SkxR6oxl4RRqGHPiEulyiW4we+ayvF0eBHJ5Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYIUrQPH6tlsPtPPWY2J/RjqU2MVy3UgdJJJInGsWv758H0dFBXw
	zUskzNTYUk53caLgOEGHJeXf7VSqbWeo5GP/CCPqUJ+QLS0o0y66BGnc
X-Gm-Gg: AYBFou1negwZRCAemS+c3nIA9xvWuDjQBSIkAhytbIExiWlO0YNDYZc1P51uAWX04+V
	6Lab0HStwwuWOAatg1DbV9Ch8YpdK+b+ZcFW24Pa68Fs7uOHINPu9iVABjXV3Dvj4csQvqb7hkl
	LwGzk3rOfwYkmkB3AjsnzcRMwXXWhw4NWN6hGC2nks/xdSgm6cwrHiAfCP5zVcsysrr0g4Y18ij
	9U4oWO9w0i+6u+kb2sUvbX/4h/CzUgNbpDi0hMMk1dGgCEWNLyYWu8HiDquU5oHNdRnOIe/SW8T
	1ENkmmV0QQjU8jeEUZ+7UAsKrV1l2gP4Wk8OszDhomZLxpkxEt46+gcZKekI04TUM6rI8NdVMqB
	VfGPkcNqc04jBinDvqjErk2OgI9UfkzZ2T4zeh9Syj8QCypHWEfx9tqGm+MnjAc+WY9M2uwMfpc
	21RtFBwnvrFycv608cDwG8RQe7DKBU4ciSWEWQmo0xfGRof/ZoYOkYq0uqsrC5jSo+Xrr9zg7yG
	eEI4sVFK8kFeheRZ+E2oMi+RySU3H75NoybIP0WoAy+XoarmpO+KocYRCy5qx0DYoIf0qXB2d4+
	2uqL9onwv9CPsfk=
X-Received: by 2002:a17:902:d4c9:b0:2e2:dbf6:3744 with SMTP id d9443c01a7336-2e842ce7d6fmr143717775ad.42.1792028871192;
        Wed, 14 Oct 2026 18:47:51 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:47:50 -0700 (PDT)
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
Subject: [PATCH v2 14/25] ASoC: codecs: nau8824: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:13 +0700
Message-ID: <20261015014324.5569-15-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184751_923299_6AFEC03D 
X-CRM114-Status: GOOD (  13.90  )
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
from nau8824_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8824_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8824.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8824.c b/sound/soc/codecs/nau8824.c
index 853eb9472af9..046cce9192b7 100644
--- a/sound/soc/codecs/nau8824.c
+++ b/sound/soc/codecs/nau8824.c
@@ -1061,14 +1061,24 @@ static int nau8824_dai_startup(struct snd_pcm_substream *substream,
 	struct snd_soc_component *component = dai->component;
 	struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);
 	const struct nau8824_osr_attr *osr;
+	int ret;
 
 	osr = nau8824_get_osr(nau8824, substream->stream);
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
 
 static int nau8824_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
