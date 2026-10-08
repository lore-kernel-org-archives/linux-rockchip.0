Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBF82CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCVzGpMhNgAY5twpN3sKZSN5/XUC5Z8jegtLY3C8G6k=; b=klXiQgKUIe5Axk
	/jiG1iSGjHP9cHkIDvZSn+RD2CtVjgeW5h5yGonr7ep+eQludKt7oZG2f9DfhDuyUlju2Lk4HUDrM
	Rd8ir4hTtbjFQ0oZLKTllV2j3NQOJp2QtbLQWLuCUkfXqL2Wzvd58lFWTI3mmVmzalUolI6x9rJ73
	6PB6EZTZKfg4q7CJCh8GVWs3Te3oaz0JpYANCltk2Jqz8FHyHnN8qST8bxWkDYpCzZBURJBdOtrhI
	aCC2cWBKtTk9u9PNnxTjHcrIjwYATlN83CV0qkjAc/o4R3k0RCPr87hVZUq0RJxeWUOZxOb5JLpuy
	IvwYN36AkMcpxNefIjKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZQ-00000004ABC-32nF;
	Thu, 08 Oct 2026 10:41:52 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZO-00000004A9f-1ufd
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:41:51 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-3518cbe59b0so250847eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456110; x=1792060910; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dx+SAHqrRwjwnSaJfYRo4lbib/UhuPNUGHZg46FBeBY=;
        b=At4eH4Jy3f0MacDcMPXKB8lSWL3tI70vXE6Y1EduWN1wQpZqZqJmYQx7XCxxrFTcIW
         e4y01lrrsL7jZCIk7PPRqvjgWmGQGBaVkm2zKQ3Aip3212XsenGWODUKXxSFx9n0oRGY
         b3VY69AoCOVXe5IHrDJaJtMAPgNETsxVuw29Z9NK9ogPIgQwo4N0gAeJDwOM73BfAmG1
         qkoZYzvPg10VN2VnmCEqHPRKSp4gyKn/aYc/PXmkUZ5sHlNiHr4ZhnxfITMmcpaqa0Hg
         cuEG/VsbM6yOr4EmWMEqi+X7TEduBq9JRL73lxDaHt9Y0ENzjBhiDcvBxPbCJze2rvpm
         2Eog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456110; x=1792060910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=dx+SAHqrRwjwnSaJfYRo4lbib/UhuPNUGHZg46FBeBY=;
        b=IQlavV3zd4Edjk7VCXXUNkRqcWhvXrDVpPLJ5FuI+Ig/vlsLXhMX3mDEeYB4ycS8Zc
         Dhi6dRwAEEv/8Reup6nHiCFOjAlCTOOzjp1AxDe5IEMk64srUFI+fZ8M6MWtN/4gY60x
         8WVG1t27erzLWhpF11RL3+9b4V7XzCXh3cDlLdiGD+zxo91h9UA+uTdAH6GzncE+V/Iv
         /tJ+g8PzC7OOacvtaaJnGg/500FKPasimkwo8D8fFAEDt2D+8PW+kR7VLMdAOyYQVZZ0
         BKxHXBgfLhmqCbMm1Sft8A8rnq18rXNGXXFAloXfvRu8W+NYmnjbKuld5gtW4oijXH6g
         tR9g==
X-Forwarded-Encrypted: i=1; AKwUvBwG4vcpnZT9sIBywSPR5J4BNKlfvaykaFcTNXu1QjyZF3uZ7FpsRfzsL9ir6TuF0DkelU96iEQQFqg05DN7bA==@lists.infradead.org
X-Gm-Message-State: AFq9FYLKQzgerQxcUq+7YlxjElsDh/stTqbYchgx/GXEtUhRd5VFrYTb
	1D1wc7A0a8vjbvNTQPDwA2OIsCTn+wy/NeVGpnG/etSSXVUJ1NkUXk73
X-Gm-Gg: AYBFou0yrFz3ziVDWYc/98ds9js3uk7SVGA6Y3e54Ol91FH0Lp49Rm1/L8Yefu500BY
	3pT3JgRLDnYsntsLy9knKooJmDmwhXyWSRGPIBMLH8ISCBg+SVq90KWpM6afBPDwIkgvKgiVhIo
	+FH+PeFJJX3F/btGp4s1x7GXmLHCEO3zlMZe6qPmxLvyVygKSgriZZZp9RPns8JksfwjNRrQILV
	XoDe1E2JdbXXlTmHB7MEaXjkxIpPW1f2XkY+PMmmaQiCOmzCp5JYN7Z2jlvpA13uh0nb4VkU67M
	NbtXssXdwvh/uOLciCwKu9r94a5Wh29P17AUlFrGcdAJj1LoYa+JqzVxO0Q7cZOkOOgyr5BsHJD
	9MUrFfd3AXYsj7vlpxxNh1iU7tC70XXDkjI3QYSjFgV6CsuDDqsGJ8L2doxXJ3KMxlCImNEGLyW
	rR8yiGsAl1KOQXQ5+Qri1V/oKJgJe4cX8tJoHjANZ2aS8eoK6k7l6ho2yhwbLrMtRE2MHwkaBjl
	tzINnkLgev61ctGzKtPWuF0cKsnvEwlFR0ixVIFKZBVUQMP/99ajAs2oYLxQwizX0zE0fqBWn7R
	iQ9LbulWsHMUoA==
X-Received: by 2002:a05:693c:87dc:10b0:353:58f7:9b41 with SMTP id 5a478bee46e88-35358f79b75mr44405eec.11.1791456109537;
        Thu, 08 Oct 2026 03:41:49 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:41:48 -0700 (PDT)
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
Subject: [PATCH 11/24] ASoC: codecs: nau8325: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:18 +0700
Message-ID: <20261008103831.542533-12-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034150_499457_7046E722 
X-CRM114-Status: GOOD (  13.23  )
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
from nau8325_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8325_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8325.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8325.c b/sound/soc/codecs/nau8325.c
index 2c95ed00a681..0902a7d7730d 100644
--- a/sound/soc/codecs/nau8325.c
+++ b/sound/soc/codecs/nau8325.c
@@ -489,14 +489,19 @@ static int nau8325_dai_startup(struct snd_pcm_substream *substream,
 	struct snd_soc_component *component = dai->component;
 	struct nau8325 *nau8325 = snd_soc_component_get_drvdata(component);
 	const struct nau8325_osr_attr *osr;
+	int ret;
 
 	osr = nau8325_get_osr(nau8325);
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
 
 static int nau8325_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
