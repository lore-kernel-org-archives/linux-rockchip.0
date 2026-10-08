Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19D32CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70YqodF5BGy233wFnXHI7Ncc0no/xxdFmT0taDRjjIU=; b=vYcWYdqSrvvl5q
	TD+flDbGRN2UpzLgBHF5zmSE15/qwmrKTzlQHcU3XOHwH2XP4ay5bFiOArYex8qIBc4SAKe4AEFo/
	NOaf5lHHOnwcNY2UX2SSu9ssFH17PUKExD/eO1d15I3KeNRM81QLeAQYDe2oMhEk4e+Z3HumoQ0Z1
	hLQlrcr1VddtQWmA6FinInslv9D7pDg6mJspM50ywMph2vIiLZUNsEVs1xgKTkNnnX93yuBF5xsjE
	h+4zSgAJwcvO/GkWOwsR5GHdBxX5eJP3vfXcl0jbV4ZPvnW5XMD3Y3lAGAMh/RFME00bl5TjVSG5z
	WCwbO5LLu4V1wARrOowQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElav-00000004AtV-3vTx;
	Thu, 08 Oct 2026 10:43:25 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElas-00000004Arg-3HYf
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:43:24 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-3115c4451c8so4255124eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456202; x=1792061002; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tshzH2hs2YBcBixu+hfpqJYKGYNe4yJtAc6VriLVkyE=;
        b=kdSiFOu+mF1Qavof3rqaDoasm6OMABDfD6NHMTk9iHyFX9SrqWWDlV5V/0wkMZGV0T
         9xi5CuhZHxpNkTBPgR33vx324H6xHHReyyy7JFW5Jo329WkhH+wZg+YFk+frrjzvKG5L
         xvDMVv+1gpi9nrhBovjvasSIrwDItzC5yvCMaHl9Qmw3nfXzrHMrwQnY+ZFfeK97jomd
         OWfLbJvs6m6RGpEUA+JpBJJXTSvICBuaazYnF83ovxx7RHG/Nbdgl2+V6CsCEnudJ8xn
         tbDBwCvIp+D4tsuLDvjd9r+NFJ6rBeNwECPeGq2N17gGgmHCSvG7v9sBQaebpPZ/r7U7
         BA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456202; x=1792061002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tshzH2hs2YBcBixu+hfpqJYKGYNe4yJtAc6VriLVkyE=;
        b=F8xhITZOePx52A55qi88+PlOT+JQGN3ax+Jy5pufYj4KbgjT3t4D35Q/QTFAEogi+l
         M6CFeyi/M0wnx640b6VCfD0vOeqx/WQcen3v71/MBL/SDzqbVYmYatqhqVpExhdc8E+G
         DkBUc4fLTbwX95wzvlVV8DGqh2aOFhjrGk0mNpz4Mn1IpNolkKzAz3p21X7CyuXYCe/j
         JoPaF3NEymXpVYOupJcsykT50vSOuKhTDEbpmTiL8zuNAJ1e3gg3moVu+VQN0crXtRl9
         h1ov/rlqG4fS4aVZgtj5bIt/12gZDvJU/CJyvnFMUXVo/9S49IiOK3LaXFbhwCIc7kyO
         gB2A==
X-Forwarded-Encrypted: i=1; AKwUvBydrlZtUWXCAYx5g/36SI36eOC1ROzTE4h1ql+31AKXB6lxTAEnC7SJ1ErXkL7oO3p80sNVNbMRzbib1qC72Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYK+PHSTVNG9fGtq18JgKVQVKS5nom+nY3jJeAVoZbrYqc91kGG6
	yCRpHvY3obw445bK7e/LTi41mNbMzqZ2UFejrflhCP08VW2221iq/QXw
X-Gm-Gg: AYBFou2jbM0V1cKPxr7oUH2OcXcge9/Ha8umGZutxU60ndoCYoMPVS6AwoTVs+gjKo9
	uatUgWjQdGwe9VfyM+WqRPBArg3E9pB+XNiH8QDqlGUogOxHyQGitiXqt4ccn173nD2soMrzxTt
	asiT/0XblUE21AeHa+jMhWdTtTujYN8rBAEnyV/+P4+x7grNNIszJs1Z3q9HmJ+4UTVXQHb1Tom
	/rInEnXhwztj+ftE0AGVJba3GuEbYzkQ5V0XPJfY0F0gYlU1axNjxnSFnA7Xp21dYEJ+N7jbV9A
	i+Zo5tSJoaoRsUhNp7r9w7/ZprVcQ78IxGzR/F6itu9JWM0WkOz7EG7x9jCmobysdEJxjU790NZ
	rZIyHXPitgncq9qxrouLHqlukrPgJ8ZKkpPbQWSmYtccHrqjGhxu+HF066Gqv9K5mzGDVWXb5/C
	mJnOiStSsbVJsQ5McjLEoCISt4Oh0MQ3+W1ruq7xAuvttk1eYkWgt6r1/Cu0Pk+P9THo+R3HLsn
	ugr2nXMxogAoFVgEBwQK0TJz+0EPTKljLO1z+2bmqiD5jxJxMSKTCOG55Rfa/FhSM33uwQEKsSy
	SrlpCG9chMVOuQ==
X-Received: by 2002:a05:7300:601e:b0:351:2200:1cde with SMTP id 5a478bee46e88-35177712b66mr2416825eec.8.1791456201448;
        Thu, 08 Oct 2026 03:43:21 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:43:20 -0700 (PDT)
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
Subject: [PATCH 17/24] ASoC: codecs: wm8782: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:24 +0700
Message-ID: <20261008103831.542533-18-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034322_825879_1D7D95E2 
X-CRM114-Status: GOOD (  12.98  )
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
from wm8782_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as wm8782_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/wm8782.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/wm8782.c b/sound/soc/codecs/wm8782.c
index 3a2acdfa9b85..767251ac4f89 100644
--- a/sound/soc/codecs/wm8782.c
+++ b/sound/soc/codecs/wm8782.c
@@ -39,9 +39,14 @@ static int wm8782_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai
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
+	return 0;
 }
 
 static const struct snd_soc_dapm_widget wm8782_dapm_widgets[] = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
