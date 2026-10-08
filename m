Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA843CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhRHQQvBMs+HPVaVikE/f6gIlexfDQEqFyTWqi1VGHU=; b=wpTz55l1c6giw9
	UHiCou9ehnV3eWB1mHEB/Z6t1W1g+zp7oAiqivdWfC0gm25EUbOCpkOGmZYzgy3M5Nv5aI6MVvgjd
	cGmBtGc/8lRcjjH95IsweYaF6HO7NmKvqvMRzMC8j2lTIMoWKbd/qwUZX7c0AJNjmnD3DUdi18VtJ
	2MGzFvO2cs5cdBkbzc4YA50dk0LPHhRTOZx1Y97kjIJMvdkb45kRuioGV8NfvbVduPZWG6hW5oDKH
	jR2qlUUS5CMXmHHz7CSXYbhWplMXzbyM4TdzrfvSef8rP2KPGm1K7KvRQi4IkS2aM+APGNR9At6MK
	vHlvrL6Dthg+6HiMeJJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZf-00000004AHN-28fz;
	Thu, 08 Oct 2026 10:42:07 +0000
Received: from mail-dy1-x132b.google.com ([2607:f8b0:4864:20::132b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZd-00000004AGD-0Ne9
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:42:06 +0000
Received: by mail-dy1-x132b.google.com with SMTP id 5a478bee46e88-30b6dad2382so6460094eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456124; x=1792060924; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+TNcAidsp1/YnKu0SMvrWqoUUNkBNLGyi1C+4A88wdo=;
        b=Nw09uqT7C3EetLrRpUka01a6DvEsRhj8xTrJ/UMXV1D5rfa0vm9zZPmunBe6ATOTY4
         cC/J573p5j443WQ+7BV34B2yvMzaXEWzMcBK7nH+n94dS2XgDFEuzLdUeTDl7jZBT1QE
         V0GeiVDbfx7l5j02R5S2cXEdFPHhx1ovu2cIuda4eJp3J9zaLejv8TIvWXFFk/2z+PNl
         OR6JB1KNLivDgpIxWArdlE457Zy3hf2JUAYwraPJOdbcVGzvsyo1rOXCKJrmOj16zgzg
         zascqie/HsGlqMf+OzBVbNLwmvXuUai3L0JAVB8qrJccTOzN+R6TZdNCgytdbVyXknTa
         lF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456124; x=1792060924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+TNcAidsp1/YnKu0SMvrWqoUUNkBNLGyi1C+4A88wdo=;
        b=o61Zthyg35Kflm0Ho95uozkyaeeLPpjTiiMQEvz6J90CyYaJxgZfyh4eyN5AuuHhSN
         8o7OBuAyJw8MM7NCAtZ9oiCZWSoariLGqwegmmQ8OXfY1v7yFv/sr3zo5iqxUdkgCUc6
         61fYjF8ObdVf8fITaoa5WG7NAuR+QIwCWvwbWByPUJfCTAB9VzCAJe+CAzJfk5xAo83w
         6sb+cuR0gtuDOhKKvSoHky7nwOQESeVlPDWaD0d2disXEPzw+m94A+BONgifmEFNW0Lb
         ukfwSGP34rMWOhcwZLuPzfh+LZc97xcOZo8WMVqkiI+hj6/zq9A0usNMEhPrCB/vpWJ9
         oFag==
X-Forwarded-Encrypted: i=1; AKwUvBwGrwc9uUVYSAsCU0hvCE1tvhXqC0OoUIaKDf3irsQjXYDqMtSopN8h6Et/hCq4UbqJRMYmCvXHG+CcB5E5Cg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIrDTXiSa4Sd0HiOYWFc7FNd725sRsLdtYKgWlpK2k11mh9v0GL
	LwowHnSCjRfV7oHs3d78Ep0e3K6KgFWjm6pFl28GhUWEkC0DYyMp2mSj
X-Gm-Gg: AYBFou0WT9w671/H+P0E9OMSFOVxWYwuM4McIbOEJnmUqvsYSwn5q6UNUX/GNpE38hc
	lZlunAE4hDb/rOdoRPenhRtQ4Jw5j2cvtgVU54IpWtlWlviR/RvAcDeLg39KCnnJ6eeE/q8kqme
	bVNwYU72wSxecesJMJdXN5I66llFEiJU+fQdHZEpZkvbKxd7sMYIXVBl8MxyvwwfgrPcgiZkfWl
	Y2sWo0bJJ9IWwO01vKz7QT4AbKPFaFtmyzp2pmEWLqx7tHVVZnHae1ifM0Khn/5/J7JJ2AaN730
	aTGJN/Xf+a83Ycm1amLcWuJCTLU3bSTlhmCY0wjwZFeDP/ImwTf6wT+vg3Uhk0Gt/11m6eHhBzp
	e7hNlyTimKbuiJvou/kTTDKrRXSFPpjhBOP9YUhJGBRYPVUn1WhDru6MvB0XdeEDbHgsWotJ+cn
	DxO1YDUZ2WMunkGyruIf5Pmq8MpvDi1VWj9EGRscirg6gggrPSZ2Tmjyiv5xMxkvr/WkB4+5y2s
	FMwAi+AgwNJYsQktmSWrsQFBvgM8sCjL+zXTquyNnFEmWvWH5t2FwLDcY4Neh1Uyb/9ZEaJrO4u
	QgxzZsVHNqaHUA==
X-Received: by 2002:a05:7301:7a0a:b0:351:1230:5087 with SMTP id 5a478bee46e88-3515dd3322amr6214040eec.12.1791456124010;
        Thu, 08 Oct 2026 03:42:04 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:42:03 -0700 (PDT)
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
Subject: [PATCH 12/24] ASoC: codecs: nau8540: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:19 +0700
Message-ID: <20261008103831.542533-13-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034205_125944_683E3D29 
X-CRM114-Status: GOOD (  13.25  )
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
from nau8540_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8540_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8540.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8540.c b/sound/soc/codecs/nau8540.c
index d4211a76b096..9484388ab262 100644
--- a/sound/soc/codecs/nau8540.c
+++ b/sound/soc/codecs/nau8540.c
@@ -419,14 +419,19 @@ static int nau8540_dai_startup(struct snd_pcm_substream *substream,
 	struct snd_soc_component *component = dai->component;
 	struct nau8540 *nau8540 = snd_soc_component_get_drvdata(component);
 	const struct nau8540_osr_attr *osr;
+	int ret;
 
 	osr = nau8540_get_osr(nau8540);
 	if (!osr || !osr->osr)
 		return -EINVAL;
 
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-					    SNDRV_PCM_HW_PARAM_RATE,
-					    0, CLK_ADC_MAX / osr->osr);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_RATE,
+					   0, CLK_ADC_MAX / osr->osr);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int nau8540_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
