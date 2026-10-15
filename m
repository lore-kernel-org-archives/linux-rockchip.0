Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 888DECC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTPDclGMI3cqGqOcrdK4MyxF6rpwo0bfaCf9PznZUR0=; b=Djw1i+nwAWAuCM
	2SV15eL4KMNVT9V+fE+boCvqXbfHbzYxjgkfYsTWEj8CvWy2iuf9jzXaRAAHM7lFiTxe0QP2kChj2
	L/a4G+fw59+dwQnHGqPWH1ahLzSsgL6b/2qr7Dm1QDeuuXm385VXKvI9FU6JFQF0Lopv6D5iennxt
	z2qNNrpZfVbA3yuucEQ9I/VzolhGTL7lgapTqACIbY1qfM/KRPt26PN2ued4vcO8AbTa/g2bnJd9C
	rM1E10sdkuMvzZmTzwMc1BUDrAkpIk1vI06aMXUDYuDvMks/WhYzMo5U1s04bZBWenfl7jgllHyo7
	tSimlFMkxD7b7f6wrPXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAa2-0000000Gc8G-0gPG;
	Thu, 15 Oct 2026 01:48:26 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZz-0000000Gc7B-1UgS
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:48:24 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2e7e742a2c7so32173985ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028903; x=1792633703; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=t6Pl3gMBQYmN9D7oerWQplIq1HLxsu+OxdUd7erjjPU=;
        b=OOWGZuMxpP3mDB9/2aLngupvEHRNM4SFGM59Z33tigGZO5Mn9LKRa/pd5iS61q0MYD
         F9n/ieFF+UgL2VbaXO0esRQgA7yCyrjTo5XstaO7R/lqW0oGZAQj8CE+Dq4o0dC7Uk6x
         VWOHk+KnD10mcihGIw7hnEDvu1NeKFRyFOX77AZwPykNgZoC8eLw/8pDZpwkJXZqHsYY
         pzUhjcVmrbA+4Z2K4Pf1VCdfM3i5swdqBHIwvJgE5SHAB5tJcYx8255pvW/0rA+Xhx+u
         BsJALySYszKARkrdcFErKE7SMhDZo9Edp+e8HHQGA4SLRSYvSgjm+bmQjoHQBDYAsXid
         uiNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028903; x=1792633703;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=t6Pl3gMBQYmN9D7oerWQplIq1HLxsu+OxdUd7erjjPU=;
        b=aOyFxxOJUPUh47yX+m5RuQHnMuD615UlagyABhpLkP03vYf2D78L2MKDH1Oe25D3kZ
         bO/GCTzrjF/vL1lyuYkLKKmt7PWNzPVyCrj5s8S0sFyCNd88qCpHOvi3B0d0Z5GI9fCN
         0Bg9qoenv0rQu8Gtyke5Wd6KtgReR9G0RWAzYlCaWrZQVlyvFJ3SHFv/wegJ+VvCZvA8
         4Nkeu/PfP30x+qD8oSl1LpADgyLCgG5on6aWcqZaKGR2s5qf2twcWH40KyEKYhoynZWH
         gzci8iNue0iKo1YaEtlRa4qZ+eBoMRDxnJGb+RKSCKJSJdhQR2wKlDaCZdhWfZQNAdtO
         5NaQ==
X-Forwarded-Encrypted: i=1; AKwUvBxqwo9MN786+FpqjBLe3/9K3dM+Es8rxWs7iuVF1uZFf3yC5HKCdunepP17EIDpmFF4E0sbJ4PCQkq7lmBwFg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJUu+OUP4I7dvOZi0Q2UnCO9r1Cr115fXD82sr4/8U2XVcimCbH
	0ewD/ub6JSZ73ix0r9+iI0+bEOLmUTUEwwby6xJckNtm90lGN2jnu1jD
X-Gm-Gg: AYBFou0RoOVvaWIdU4BUewoJx7GR9WxKwb0/aKhFnJPfZbKcLEiMIwLGsxlD7W49nDN
	JbSqhULi4oLyaDMLVtvIVMBrjlu3DYVr4zUNxRk3kXVl6BpKoho21JOoRKr/uPCexOw1sdCDDRq
	boxNFBf+t3hLkKpa/5/hDJjxfhSYABf7vuhM1MurZNJ38xHrCCZnskJ1tlxYxSfEnFcO+WqBFdI
	0wZgWylVlb5L8aH3DqDNCZWQ/s2Fc7ah470ChMju+C0lqymdxySsOT/dL9BH9OoAk67TYDCZULh
	n6rQseuMcnNluVbDc/GTMQnIybSYFh+OUHxNynjAKHqn4uJp/EQXezkFQSC2DPRwfNbb0zcKKdR
	uYKu3Ihx+Sj9oJFnNxOCO05spdxIF2cA9BM9sTjbC4VtrGzSdZfTp6T7dGjFyN+zjUSBRQcYCvG
	G9ZsEvIDz8/tgNfY/iuqztt7aQE9wH6PyI/00sltEqIr/sCVNoCTCdBPgPBh3BHPUP2pzjE6Do2
	/aFrtQN0+G3nuDWbFoOLnUwWXpviciXAj1QVk6S4kU9pJ2YMk3sCbhfAvk7GvdQm0tPWlWM+GDD
	paKfbufFXcb5q7Y=
X-Received: by 2002:a17:903:1b06:b0:2e9:5d1f:dfee with SMTP id d9443c01a7336-2e95d201631mr3403435ad.25.1792028902474;
        Wed, 14 Oct 2026 18:48:22 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:48:20 -0700 (PDT)
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
Subject: [PATCH v2 16/25] ASoC: codecs: wm8580: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:15 +0700
Message-ID: <20261015014324.5569-17-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184823_407145_AF7802FE 
X-CRM114-Status: GOOD (  13.87  )
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
from wm8580_playback_startup(). ASoC only marks the DAI as started
when .startup() returns 0.

This currently has no functional impact, as wm8580_dai_ops_playback
has no .shutdown() callback. Still, return 0 explicitly on success
to match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/wm8580.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/wm8580.c b/sound/soc/codecs/wm8580.c
index 9bc5d1e795dc..cee80da8f753 100644
--- a/sound/soc/codecs/wm8580.c
+++ b/sound/soc/codecs/wm8580.c
@@ -852,9 +852,20 @@ static int wm8580_playback_startup(struct snd_pcm_substream *substream,
 {
 	struct snd_soc_component *component = dai->component;
 	struct wm8580_priv *wm8580 = snd_soc_component_get_drvdata(component);
+	int ret;
 
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-		SNDRV_PCM_HW_PARAM_CHANNELS, 1, wm8580->drvdata->num_dacs * 2);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_CHANNELS, 1,
+					   wm8580->drvdata->num_dacs * 2);
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
 
 #define WM8580_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S20_3LE |\
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
