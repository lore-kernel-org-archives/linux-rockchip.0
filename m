Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F7CCC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yS5ULCUfw4bwucFvd1vCJOcViS2JfR7RKULnt1X9Cu0=; b=15c/bY7b3ZnGY2
	LDB/WeyJk4LVEOsB8pKyjS48xgKu5GkbT05s8/w6EValoh4AGEDnatzcLo4lCpSDLkmz+D213yIZj
	9QcDNOnwYlgnI76doylJZcxsL1IEMNOGEVQWvuTuToRFCPLOtSIij0WRDSRRDWYgAOSiFS6hD0s1/
	qC5czG0JNvGqXJ7z4DRe+IwgMxXLJYpm7sqJDtn1G+vX6A+T+SLUFqjT5XAebeS4XAZtBG7YFhGWv
	8sclGUu5jhrG06YtSg1TOiLmZ8SF8nBv9aFTFOgmh1EABAKYzPFXv6gga267Tz/9IEOWC5ZLk6XF+
	pp5RMuBM91h3abU1DSqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAX5-0000000GbFz-2SjS;
	Thu, 15 Oct 2026 01:45:23 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAX1-0000000GbEg-3gm4
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:45:21 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2db80fcdf8bso27561145ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028719; x=1792633519; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LV2XZk4JI85UeqWxHMk6K3Umo8587cjHfY2RFPxWAV0=;
        b=YYN4u/c1xPmWqjKb+HjLweAZ0SCXBI4Vu2j85xbbdbNIriT92DxvNTCH6SvlCq/2/i
         6H+nevrWMWdQOL70LDFr10psbWBSipyChkSNQaFw4buWnE4v9O6y8kHQLDF981633vXJ
         rGRxu+8VP3Dg8N8dGVgbec+Lfpy+if9HIC1ph1y4i6ps1jn0Z6WiUnOh6UEC2Kel6kHQ
         mEMorscZyAw3ZcasqZeIHr0j3MYjThBxl4RYGSLERUcOONmCKr0jSy0ho0UdX/1U6m6T
         f4uOG5pu/p9m22MKnJ7G08/RXIQ3J5g/JEfUy0XasSHR6JkSzO91uje4AYwQ4rClgAMx
         aYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028719; x=1792633519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LV2XZk4JI85UeqWxHMk6K3Umo8587cjHfY2RFPxWAV0=;
        b=BjrckcEn596e/ta2bmvr2aKBFlfQloxFmByKygSho/wYjezSmVB2ofhCYRGFLtoBMS
         Qi7oNodpzWpVFB2c19ktZekh1LKBzpOizHj5iVQONTH2vzPm9NxgFXw2JQEhAtx2SLWP
         QyzRwUbeUGsOfKDfwhEBOpdhEFrVJlzre32+gnJu9zMyswORhg7N4YLQLVILfQerOqFu
         dTJdzBafuP2v00A+BkQL4fThh9aEfP21exohwHM/usoOmi9eExbBqVXy/cIISyL+gZMy
         9PdUzQ1/gftUsxxgjrPPVX/2Uv9OcOA9Dsuz4OuWEPRRyZLl4F+UlkiS2mtBl+9IxBQB
         fJjA==
X-Forwarded-Encrypted: i=1; AKwUvBxHRFf4Zqaw8sl2sHvfW1dcqJWOezSQjFKPV5GNynKo0rekZEBsr/HJxMpaKx/oqPYpfDkOAdQL4Ia+QDxKGA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ/17RN2hGuA8KJ9dLMLPU+v3c+enrBPE3NC1W2QLIOkFNFszgq
	6svFcDXfaK813VgXAv9cN4esRB2gH6OHLI1FJnQcU5mFDWeyPQpz1sGF
X-Gm-Gg: AYBFou1Sf5hQ67gj8Se1zHw+g99qeeKhCv4xY5eHjMMpkpXzyqcAlhL4mXgregdarZZ
	LXaoTmDVtW7f/Ugk9M+ewspcxGnagOu8aCx9Z3Z2pTuPBAn9q6boXXWupm+N4POlx40owq51H3I
	yHU7qEGhYnFt1NnynKmG+PbmNSOuUO/RRLwuRJza1OA37rHsplU7RKuM0/t3cKTqpjMqDGljzbJ
	HLPDY4h6DU8L80Hi/6tqE06HdxXMlryfAGfeXQCNXgwTnvIrc0gs9j/M4+sbmZAEnS+2oln3+VQ
	z5mjurLKrPi1jOBGmBKE8SOl1REfpET/VUZvcO/JDb8fBJKB70vAEIU9jq6r4AnM2HeeAUgLB/e
	qXDUQBR1szF7jAb1OP+LGSgAKE8qbUU/vtvP7uQ2WN/+Akell1pmyKvIzqwXOWa2DmI+ldahEaD
	8+klyYr44NajVNRu0Z3oNV1i0uHIUUnzk41GEhfMz2VOIV4TFu3k7q4v/pKH94FYnbzThOs1IOP
	SP6gqZjK+FVFrB4J9y6UP9qqEZUN7LN0W/VUG8pQEKPo+1EerozqrnJu00VlrYbf5HoA6k3T32+
	MwJ1qRjS/ZbpXA==
X-Received: by 2002:a17:902:ecc3:b0:2dd:ad73:5b6b with SMTP id d9443c01a7336-2e8429ab7acmr151706215ad.27.1792028718870;
        Wed, 14 Oct 2026 18:45:18 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:45:18 -0700 (PDT)
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
Subject: [PATCH v2 04/25] ASoC: amd: raven: Fix acp3x_dma_close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:03 +0700
Message-ID: <20261015014324.5569-5-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184519_915635_9E841E4F 
X-CRM114-Status: GOOD (  12.08  )
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
from acp3x_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 703a6e22888b ("ASoC: amd: Enabling I2S instance in DMA and DAI")
Reviewed-by: Vijendar Mukunda <Vijendar.Mukunda@amd.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/raven/acp3x-pcm-dma.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/amd/raven/acp3x-pcm-dma.c b/sound/soc/amd/raven/acp3x-pcm-dma.c
index 37ea5c572eb9..765057499021 100644
--- a/sound/soc/amd/raven/acp3x-pcm-dma.c
+++ b/sound/soc/amd/raven/acp3x-pcm-dma.c
@@ -237,7 +237,13 @@ static int acp3x_dma_open(struct snd_soc_component *component,
 
 	i2s_data->acp3x_base = adata->acp3x_base;
 	runtime->private_data = i2s_data;
-	return ret;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
