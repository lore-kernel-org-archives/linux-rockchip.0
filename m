Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC9A5CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvzApiTcdXAUYGv7HNlYglamy49WRzFWSHCn20VV1xQ=; b=OQdOjEcxszFyR+
	OcfcwRowHcyGqs6vgx5oFjT8OEymImC4nrphLBLYPtBU4o9I9RhvRwB4zscoUvdjH2Uv3jsmgUCWh
	lQqQdI67MLw/gw/nv8iB1Yo4an1iibSaunJrjL2cDnR289r8TrN8pYxvG//CIMNCX9Bxn8bXeZEiT
	GPO8BQ/d/n6uE9J1Ug0YS75wfT0qDOm4RxKBs9naUtETO6qd4yY9WIL/YWejUKskina+4EHIFTu6h
	nTZhCG31fERPplVOtH76B0uOWblzE8n/HH7PZxNrccMOH5cpUIy9DUttfizTAboXipWy2VJH5yhqx
	ZQI4mMgQtzo7TyXB1l3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZl-0000000Gc3M-2ctp;
	Thu, 15 Oct 2026 01:48:09 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZj-0000000Gc2X-3qI3
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:48:09 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2e8246b13cbso35376155ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028887; x=1792633687; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E8bdFAa8/cOYz7HxAYkPZAcubK8qZlAfIypauJAM7ak=;
        b=DCFE7+D3+huXd3zzITaHnKFt0HDbzrnk+0p0XdHcTnWOma97et74juhqKGRH3w3RUq
         CubhFDwTlUcFBkBIJdCG7NYdBX8saSLf7q/mF1AHmD4MltjObKychlQ01cDs8ZjB45F3
         1POUAjA1y9SsE62qvWONkR8YrZr7JXT8gwfhOnQKyYjrJRksUH2j8f382iIEuvseQ1U+
         rOCEslK+MHwbRsjw6ceHlmJoGj3g3K/tKMc79yXF41YiRamEKmj3R4LcYa3O7H030Uzc
         r37pFjK8QlbNN6iimr5v8MhFc+itYqEnXA3r1XUO9jLQML/E1z9kzUiA1d0WhhzVTjfU
         h81Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028887; x=1792633687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=E8bdFAa8/cOYz7HxAYkPZAcubK8qZlAfIypauJAM7ak=;
        b=r+lTmp4Jn1vV6LP1sXBhpcT/s6VX5EU7gcxKqHz1IJNe9c9aYDO0Rzmt1TDygTBEXk
         RjEvfFYzjUv6k5Pmb1tpUq4z15q6cpzZLIqQkgkoX7/FFfoNejuYvveAm7So9fDFmb+c
         GGljOCJqz2tybIoqQvk2Iq0Kp/joHParNWEsDkiLb1QpCwnzDKiOFHcm3TlqZMhSfB+/
         9bAPVU5frw2m39L+xjJbnkRGW1tBJYy3qtU3Lu1ciKUsDcNLA1fcbhfLTq7iQpk0+/z8
         k6q/haAGOokK0njfv38lAR5pVCojDGriv6qB0xumh+2e6YvV7Dvdi1xgdNYxqM5+yx5j
         rLcA==
X-Forwarded-Encrypted: i=1; AKwUvBxsl4Hb0e/OAEljH2D9o93+TXKuT1VGqocMCCKoE9nEMSf/8AH/gRABU8TqTVcb1UIYZphjwj/HcQofhwnhXQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIiVODtxLXDnJhia+xCOLVXxG1pZVYsQ0B5vPLbUu1HMCiEYHXE
	7+GkKY86EJZbw2s2JqC+/0zgJoRpMZUS9OoI1dB61j7NJLFkotHb8SgD
X-Gm-Gg: AYBFou3ICFZW+Iq1dM1UDYPbPbbivS2pMKuYjw1LaPUIfYO7yCc1IthUwXFBYZZYelX
	G+i6qg31+Sx41FG28zeK6BTF+BzHBHeBhcWLhjZkiodyRSEOHaA/0xevY5m0EmET/3wOO9Mz2lU
	DX0Dn+9oRgeiBJYkE723wjUlNVta7ctUsX0CqocB7EvY9XTGfZ/ebaTXag3zCHXRuQR3b+3EZbj
	dgW3woB/g/yOPftCpnuV+l1uKVlqOQV2yeW0Dt1ovbbu00Vo7ZQewfEGJB0ayqkgTefH7KaKkb3
	+nnGBx6djprXp1JaJCAW8JBFBu8Bg2H6nqiuLIPwT0JoJV9DQl3ivTrXtNoRB2zb3EZrXXcLgjk
	MR876MJmtP+WndoN1bOmP9Yi+er5q/aLuvJbC9aepi2FbR2RhEnry9DajZVPwssgXnrfldQLQpt
	y7uaqXMSNNDV0navDUQbBn2FeOtmeN21fRm//gFwr0U51srV2jyjMYPA9v8Y5OZiGRDSkOqTgsc
	1x9v7RZCU0+kQWsSqFwEvuO7e440aAH//POwu5fIYppHtjx0T+ppe7f+Ym0GIn90Lmg4Bo3vHI6
	fkHoUy16Q8fnTA==
X-Received: by 2002:a17:903:15c7:b0:2e6:1a6c:abd4 with SMTP id d9443c01a7336-2e84280e026mr162256675ad.2.1792028887036;
        Wed, 14 Oct 2026 18:48:07 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:48:05 -0700 (PDT)
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
Subject: [PATCH v2 15/25] ASoC: codecs: nau8825: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:14 +0700
Message-ID: <20261015014324.5569-16-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184807_964597_51ABB3CA 
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
from nau8825_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8825_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8825.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8825.c b/sound/soc/codecs/nau8825.c
index 63d927f31409..af2a49c893d3 100644
--- a/sound/soc/codecs/nau8825.c
+++ b/sound/soc/codecs/nau8825.c
@@ -1261,14 +1261,24 @@ static int nau8825_dai_startup(struct snd_pcm_substream *substream,
 	struct snd_soc_component *component = dai->component;
 	struct nau8825 *nau8825 = snd_soc_component_get_drvdata(component);
 	const struct nau8825_osr_attr *osr;
+	int ret;
 
 	osr = nau8825_get_osr(nau8825, substream->stream);
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
 
 static int nau8825_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
