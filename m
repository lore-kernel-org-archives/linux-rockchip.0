Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A678ECC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBQFjTYi9Tck9SeVvLP4V30tW6aBLTEz5DtB2W0j4G8=; b=ZCrFisQf2AA6dG
	nnBjY6Pu7rnxrd0xEMDHJAvZbIxl78YaRmD7pWMnEXiL/c4w/+eFFFI0fvAa4iSD0Uvsn+8uq7Ljb
	jmF3h+TH8EatrRKMcSfd4dgghRekHM/f/tUiPT62GZbs5P3C2FU19H+tBY2NG6koEp1QdILAXhUVr
	CbveYZgqteO9IEKF3JnGTfOQFkJagSWJTHJA5Nicjy0ltvbcP75Yq6nVBa3ABF/IMmopivtxg7eWg
	qXBF24p+DR34qh3AyMspUA29A0iYjCeceFXkU//IgweDT3wXu9TWPwkh8TOyC7uA9gCK3nzMdCvAa
	37HQ8ndg40YszrwDjH4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAcE-0000000Gcp9-3Xkg;
	Thu, 15 Oct 2026 01:50:42 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAcA-0000000Gcnn-1xL7
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:50:41 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2e8fe8e343fso18322425ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792029037; x=1792633837; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Lmt1bwfRxOTKjQOsp9tkvpG9ehM8yzZulL3eFnlXWR4=;
        b=ZNliK27ogDgK2FkrtjDyThWU1wktQ7/ju0WzZFFt9NXncn0/IkicbEztRfOBAO9Lpu
         N9dOS+qHr7QDfixJd2kyiswlBTEWqalw/bfpttihUpAopnZnKFYMDLuXNDLK3iUuAWm6
         KN3zMMHPBPoe9hZ0JYqqeYJM3Xfp9xSJIfY56p1DFTh6sAc/dgJKtmhYkraP8rZ90Eph
         afdaecdZjgomuu/KK/WovohqNtVls1/4cQf3vB7d5m8Xa2yxgMXzm85ORYCosDw4VbXz
         t7bcH0ESqXwp3eisooaJbT4sYp3XRaIK0FqjpVR3vXfGuGn/Q/xGgRTwXAoQ1x3CQFWI
         o4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792029037; x=1792633837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Lmt1bwfRxOTKjQOsp9tkvpG9ehM8yzZulL3eFnlXWR4=;
        b=zC4Tr1/VFk9jEcEd2QUGYVh7qiqe0lfqwFqEB4vdGsJw3Wopx4kf9p8yykZmig+Vyj
         dP3CLTOpo7qX1HU7e5wfaCg5WX6/NqfqggJ/R0Md/L24CbVaOnnhMMp1VoC+c6Jn4T/l
         vE7Hb7HMjyXksd2Q7vSHPWy2yXZINyWU06wjL65H60mvuIotOI8wOsu23h/vvvbLsYSq
         2uTB/EmgRznWOFhqNGA9bNnR/n9HwyHcmQ4gIX9+G3KmzREl/ey0f3/Ni9MqCn9KXuXP
         Z42GTlVagyU3ZqPIO+lERPRfHxuTUnDM+mbGVCvXdnV0u8Phxm7DBynXHcHr7a1Y7FF3
         aYfw==
X-Forwarded-Encrypted: i=1; AKwUvByPqSV6v8Ic2ZO3Quii8EQvppdmX8AqEGOCKZFXcbsln73NjPBhtUu9YTgRNKan7o/7xtMV3JtuFJNsZ4FuZA==@lists.infradead.org
X-Gm-Message-State: AFq9FYLkJetBSQ0a5yfOO5hKZzHTZbYymvvloVkto83jXTq8wAXameIc
	TZyXGiwOqx5zZCOklfM2o0ng5gj5LZHuHGIp8LuYllJngtA4C5Jdj0DK
X-Gm-Gg: AYBFou1Bpk2W3SPjBAWHnnYajKh3ZlNo4pa71KhdKo6GSgvViVnaMONgRfsSsSJfyjI
	EL04EVJ61eA6ZN6pstDuTSvBBQn34gum4jRnPIbCnsKeS05Sn7r+0yEtObIbfwPeK6pJn8duXpd
	gmXxjxEWSwN9Zq56nGXtmlmxZU5Czq2QXSaqb5ISoJoBzZsGmJAH9bDfKbaeTbh+StnE48mBbox
	zqej9375ZkGRiAGCWvIA62o4y9e0UGVnuFsa9MmtsjjTfMb82i6X5pt6Tk/XKjjhRcfeukm10r9
	7aKhxAmX4IFq89xHEdhQMOH6bw+TZINBPwz/OGifbGtq6xVpxvKRLskFua4RoXb1HdUcNnS6hl9
	q+ScuHNdT9GpdHoORf+SHT6iFUpl2xMnioaeyMzXzkXEw5iaLSltmtLLziBbSEnpkLdlZKNKNh4
	3ikpsrbdv4LIX6juBtgxMsbc005MIT+9mdj/gbY5V5Rs4s2mMsUzcRIOvAru0QijxRmFE+5o26I
	KTrmrklxmrC51joUwTNKyreVAG5/GzhiY3RSaH2HaeMMkXfIn0sK5O77UJIb/at9wvQ+wB1a2H9
	nfJ93zldoR29Kw==
X-Received: by 2002:a17:902:f706:b0:2dd:c053:82f1 with SMTP id d9443c01a7336-2e842cdb110mr149481055ad.40.1792029037428;
        Wed, 14 Oct 2026 18:50:37 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:50:35 -0700 (PDT)
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
Subject: [PATCH v2 24/25] ASoC: rockchip: rk3399_gru_sound: Mark the link as started on success
Date: Thu, 15 Oct 2026 08:43:23 +0700
Message-ID: <20261015014324.5569-25-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_185038_503139_1EC10022 
X-CRM114-Status: GOOD (  13.93  )
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
from rockchip_sound_startup(). ASoC only marks the DAI link as started
when .startup() returns 0.

This currently has no functional impact, as there is no .shutdown()
callback in the relevant snd_soc_ops. Still, return 0 explicitly on
success to match what ASoC expects and ensure the DAI link is correctly
marked as started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rk3399_gru_sound.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 04e7bed8275d..d4a0daabfb42 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -258,10 +258,20 @@ static int rockchip_sound_dmic_hw_params(struct snd_pcm_substream *substream,
 static int rockchip_sound_startup(struct snd_pcm_substream *substream)
 {
 	struct snd_pcm_runtime *runtime = substream->runtime;
+	int ret;
 
 	runtime->hw.formats = SNDRV_PCM_FMTBIT_S16_LE;
-	return snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
-			8000, 96000);
+	ret = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
+					   8000, 96000);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * ASoC only marks the DAI link as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI link is correctly marked as started.
+	 */
+	return 0;
 }
 
 static const struct snd_soc_ops rockchip_sound_max98357a_ops = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
