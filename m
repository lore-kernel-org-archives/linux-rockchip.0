Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C6BCC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8nV6/BL0hBljEyGbDCPMwR1nGzySZz+AdesUZ3k7B0=; b=Xxr4EnJUzenUql
	D6STbd+fUIpBObyqZ4h0yJ/eiZ4SZTYFu+L59tCp6J6IOBGgflAMnYVm/LVFUlT3XSzBQFEw9cWBL
	/n21Rn1ssB50Vq2MhZbHY5dIAVofSeoCJbw2LuzlvogjzzPKrJSTf9VnPYOURUWRqqD1avru0ZxJw
	Fbw3a5L3jjv/S8G5f/tteNAtt/gZGdcJ5eGqt9eKuz/uQTFLx0+1zAyNzhBfgT2jKjiJKzZj+8rM/
	gp8Ibmzf3u036vksGSjU5GunCsBXBP+G8vYrl+wyxa2FjH0kqZUTSvw0oYeYvxWxTQBjR7QpORZ/Z
	dk/yEjySFirl9Inhmk2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbw-0000000Gchw-2cP0;
	Thu, 15 Oct 2026 01:50:24 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbu-0000000Gcgg-3SIj
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:50:23 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2e608cd460eso25837295ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792029022; x=1792633822; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=adbLjE108wpHReKKgrEkXzgfA1DRZ6TN8trHQTyRjGk=;
        b=V3+afcqhPhntv35lYuy4YQntMsTZwUD3vrs9wY/qwCVlXkXPHV+0/qFaXIbNyM6NrV
         1AjmAz6YgADnPbCoC+Oar9e1v74Ak8QHLsf66JyfPYFN5OUG+L1sZU92l3yRNmUREOaH
         uUlD68yvmqywbF/MsuZzHynq28m1yLjsEjvVmy3wHuA2wnO6zhUPhMzDg6LDSVIMxc3W
         CQSQYTUe8KBBHhRX/t6Gc9zTV31EYIFpWF3bgSiAMdQqG9ClN00R44JCmbVlwF6GA/IO
         QGeVYcXrzTeD3LGBvQWZG8duMjo7gZ21Sv/TdA0JAXJBDDt9EG5xn8BrRXYfth785F2h
         In0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792029022; x=1792633822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=adbLjE108wpHReKKgrEkXzgfA1DRZ6TN8trHQTyRjGk=;
        b=ZU61OxLUTXPbFyb6a6dXNLxrGtCoAABeuosoIgmhV0WjIMcmu+6NviiLJ8LiUSqVMr
         1AIkZQfyQIE8YWM09QeyQVD0ZFVDAXLeoldYfYoo46ecURj4KrRTyhQQl1B3kLOiZa2Z
         R+n9EcgX+pwX0FiUWIdlQPwteJZItkZAlPpbDdQ4OlAedNhGYYW8CoRCMV9xf8uh6EC1
         Q37slbBUvMnSqDgYZq9nQtCVCmlU2p/D9b5YsZcpU1daiXUWXrNUnsaDcr9QRbT1lgaS
         rh8/opRWUiuLakfvYHv/MPqz4d9njtmj255KC9RldIr3uy+GzCQD5DBuW6vrERaR+blt
         4SxA==
X-Forwarded-Encrypted: i=1; AKwUvBzSPLCaeMCxa96jskyN6pVcT6BiacHS74flSYNP/i05BFyWjMJ6BXimqrQbP6c0SapA061BIRZVz4lPzjkV8Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYJqVpr/cHJZ0nAE6B8eseG89kjrrYizWzRdYIKuV3j7zbAP3vez
	bEZiw071/J8ibPtavFF4E0QGFUXTS6Lp8p7o2adTu9QDzMY1rJ0HTKU3
X-Gm-Gg: AYBFou3+l5LlDdvg3436r+IG4fmRZKA8MCIzu/OHxDvuL0icv+8dV2MZOxiSSVY/0nS
	FBE6UvmG6Yb+MsQNOCtSLa2ZSXDCc/oYmrFx8WdYfJShxwST0OHVQC1SrfGLj31Z2/zcPW1m+2H
	I7zNmHm7FVyxKqhXtdo7yxp3U0fdbPcS2h9SP0EOryEuI+4wlzEmLABhC49Kvywrz3BxlcD4xsA
	IEEvU3EhdSPtqudcDXGsnh6QXIsDI//1YT/orOCDJFush5hdQo2L7gr27863DnCXKdeM0VJ74pC
	sb+L75JfVKKE6wguB4eavsh5vSVxaxOuPll3o38ROTULrddU6v4sLmb0U6KGLRQDs9F2EZ9ELOk
	lDy6G1I/RBLcJ1WjEHdAB9uomrelSz3122+M6dRGh4sh+/wNw8WKB59O6klwWRtN7Y8LfzOmbGn
	jkQQ3ijdiJn2Yd7RgUpFUFzt3NeT6fBi6G92nsW8APMlCkflHEBLGryJvAz0zxJ3SbvFxE0emtM
	VSu2D+v9c6bHCk2CNky0utJBaefLT5O0bXs7cSe3BrlARCq83BqZlT2mHTH8rbu0qtmpRoklYPU
	UW7ILaq8KYughw==
X-Received: by 2002:a17:902:ef44:b0:2dd:c100:7cbb with SMTP id d9443c01a7336-2e842bc6930mr140413355ad.55.1792029022012;
        Wed, 14 Oct 2026 18:50:22 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:50:20 -0700 (PDT)
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
Subject: [PATCH v2 23/25] ASoC: renesas: rz-ssi: Remove redundant component open callback
Date: Thu, 15 Oct 2026 08:43:22 +0700
Message-ID: <20261015014324.5569-24-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_185022_863563_B7E75B44 
X-CRM114-Status: GOOD (  10.16  )
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

In DMA mode, the generic dmaengine PCM component already applies
the integer PERIODS constraint in snd_dmaengine_pcm_open().

Since rz_ssi_pcm_open_dma() only applies this constraint, remove
the redundant component .open callback.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/rz-ssi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 5f4a53886541..9a0781bb072d 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -954,13 +954,6 @@ static int rz_ssi_pcm_open_pio(struct snd_soc_component *component,
 	return 0;
 }
 
-static int rz_ssi_pcm_open_dma(struct snd_soc_component *component,
-			       struct snd_pcm_substream *substream)
-{
-	return snd_pcm_hw_constraint_integer(substream->runtime,
-					     SNDRV_PCM_HW_PARAM_PERIODS);
-}
-
 static snd_pcm_uframes_t rz_ssi_pcm_pointer(struct snd_soc_component *component,
 					    struct snd_pcm_substream *substream)
 {
@@ -1011,7 +1004,6 @@ static const struct snd_soc_component_driver rz_ssi_soc_component_pio = {
 
 static const struct snd_soc_component_driver rz_ssi_soc_component_dma = {
 	.name			= "rz-ssi",
-	.open			= rz_ssi_pcm_open_dma,
 	.legacy_dai_naming	= 1,
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
