Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57785CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rph20GBy3J0ETdkAIYbFmMJ1pOGc0rmW7m8Tg80afpU=; b=RgPdBJdIbOgq9D
	XGEXGSAt3wSNheA/S6oA1bO1SnxB4bgWT6lQEieXoRub5fmQhQHnJLEqxOPf5pEZu4PaeKhflizhS
	dgGTDFJWz4epe4SSmk1gQE6vCVWfhFmu8c4/xay/3NkwzzHSFeTtHMG05TOAfMQMxbkptFeGSS6Ta
	uyGRLsp7RqUw/y8SBQu0il7vMo5xsEAp0oWVo1uKswETSjvhcLexYvbqDaMyk1TJuinDcnF4PDdYV
	8n3KPe0Mys4uS/qusq2NT0Be76qjfHKAzowFtuyDp8tOkJPrpeZeHWLDnkGiq7s0tZoh/AxHiXpF7
	vYUuoks2RzNOJSnYKRkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAaU-0000000GcEU-44wY;
	Thu, 15 Oct 2026 01:48:54 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAaP-0000000GcDM-2geX
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:48:51 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2e95b3b52f2so1426755ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028929; x=1792633729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yU/tI1b3Chy6tvjhfXj60ZgAk9bekyFoLKnVljFmz1M=;
        b=Sk+4JYNu/u1srzArGAPSTYql9fsVJOGTUTWQ0mo/1t5OUzuO76OEHyKEsszskjYXsj
         V+/uUFTPQjqArFKyCqPCo6xAw5COE9AV+toQYAwpSQsFvp9gJqlCDvaURThPSgzvZVnI
         Gxb+HP6GjD11puwab3ljEhVDTUQYw5ZAhz64WU/v2eCGtA5+p1QasB3kh7HSvdS3y0JP
         hlUEGe4SjHP57AgDaONMheCfirY0ovAPcTthztxXEQfbr1ZlgHu5x/KPVLmp6k+//j3b
         SpduYAp/QfnSDKh6CmqMQFi3EjtRSuBqhPxi67hsebCrm0VjW6JP5V0qoi36dXHwfWfo
         fJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028929; x=1792633729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yU/tI1b3Chy6tvjhfXj60ZgAk9bekyFoLKnVljFmz1M=;
        b=c9eQyQwb2Ft0GYj/7LAQUAHHgbV2rqymRf4E8kFY8zb+Ber3Ja/84i/AUeMfKoHjpn
         EsR7dQZdRyhxDnnI3HHt+09nqjbp+lP/QTdplIUecWTv67F8ChGNNopokq/lQPvlYBVk
         v5DFLX3J9vM9MT2LGgRc4ehRXILoUlo4inVQTja0fqTVgvYtZt+Ng+i8N/WTLatdi6hb
         reo5WpwAyrEP4GYA/GYYsAAVS5Jqz5rOSW/9dxuhl3lM0C6A7YOv+n/mVpbIeo65tfHm
         PxT63us9gZJo4IhY6V7GGkhHe1YswbohCb4zSxk7D2fTSvHx7ZhWqCWnDkDIyILXBtgJ
         lD/g==
X-Forwarded-Encrypted: i=1; AKwUvBzcAn/hTyeF6IjbuhoY6JzgRlLcd+/il4m3I3Hh3uUUH1ymVjbTvbi9d8czMhZYncw71HtIkEGpk6dAzeadQw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIonmVB9CWn0KnuFI7E7j3gAKXCNMoo47hDtV4sLJk4s3F8Kuq3
	eGq6IqCpmKAJnIlQuWG9quszeXQzW2OInRT6hCB72Ww/rQudg68HdjlG
X-Gm-Gg: AYBFou2L/JMLs8kqvqeQxHMOjxAceM/rylWPpl77C+M9jbxkw7zTaKvBcAPI0AepR1o
	2EcGmBSbAW2TUmYHOV0ZeDl7SC8m4Iw9lLh+NQOTR6sem1LRoQ1oZMbm6b1X7fq3+C0pl34PDM4
	ynJYF3Z1yjgCZMHqfkiVwAXLpFQ2gaX4u2zP8wt6PgUNU+DpTCpBZ36Y5aiynsh3kXWASLeNFPq
	ZuPcF5/v2vZXRyvLQpWqlkxvBzWplXoBP+/DdQUtK1zL9zReMZvBMcZi9VNyTCnwkllhHzZD41+
	f57IZr6KANPRhrVG+tsByvLxMWYfjyZG/2ZAlgmVzJ8fRMcOebQhp0jilOLO7xedLHScuuQtB5X
	2E3D9cfEwVdaX9OuFR/udVUBlDsO4h8iPuN4DDt1rRz9jLKO6uthRjP/MCggeQXxTC+VSZQzatt
	cdpYCdzqxG7c3OnWyNldKcoDRPtY5Z6uOzGEh0EVar8xybVUuiXtue62W1CSZF7wYpOUGIQA8dd
	vR4qndlxeX5WilSXZHExp02SwKq9QMbp/hm5Wey1DLruJ3OOdtHL6qedg0RTcukQFekHXK1AWli
	aO5V4ffzWutgmw==
X-Received: by 2002:a17:902:f786:b0:2e9:3215:c458 with SMTP id d9443c01a7336-2e93215c642mr37739115ad.25.1792028928882;
        Wed, 14 Oct 2026 18:48:48 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:48:47 -0700 (PDT)
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
Subject: [PATCH v2 17/25] ASoC: codecs: wm8782: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:16 +0700
Message-ID: <20261015014324.5569-18-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184850_335283_1D580F2F 
X-CRM114-Status: GOOD (  14.42  )
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
from wm8782_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as wm8782_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/wm8782.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/wm8782.c b/sound/soc/codecs/wm8782.c
index 3a2acdfa9b85..cbf0c823c022 100644
--- a/sound/soc/codecs/wm8782.c
+++ b/sound/soc/codecs/wm8782.c
@@ -39,9 +39,19 @@ static int wm8782_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai
 	struct snd_pcm_runtime *runtime = sub->runtime;
 	struct wm8782_priv *priv =
 		snd_soc_component_get_drvdata(dai->component);
+	int ret;
 
-	return snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
+	ret = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
 					   8000, priv->max_rate);
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
 
 static const struct snd_soc_dapm_widget wm8782_dapm_widgets[] = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
