Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81666CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V20alREr6nrKiqwNFfP+nJsIi2/poiSj7pY1Nd9y3+w=; b=Osttfinx8e5rmJ
	I4VE1DtimowO+7OClB1hmfQW7QRpd4NybWmWjoPJ4I6v4xhT4KCzOYIuowdzQc6jNOsNKf4C9Eowf
	arkA+R3B0laBWD3MbfnAERC7OqnQ9adGu4k6PivHCFhBIR4J06WWyyYfoRRp7vp3hx9yotMc7mI1I
	xCCH6+ICmAzzAqruuUnEE5N1uxKid8zIrqgyPLUu9a8NmBEFBdeDNqQpKXTj3kmxd6Pz9mpPGTJHN
	ZFbFMMQFlsmA1Sbme7thBaMNawp6XJbOx6ns05t/CkjP39TzLAdEOJVUbXWdKIenzLwq5Fc3Udtfx
	Qm/nvf2D745+puuHoEmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAZ3-0000000GbrD-01OK;
	Thu, 15 Oct 2026 01:47:25 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAYz-0000000GbqM-2SPh
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:47:22 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2e8246b13cbso35373585ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028841; x=1792633641; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sl+xZe1w/+ufceVKXDka/4tzEgH/pdjCTIAX9h5M0vo=;
        b=LUSwSRpQWCFzvz5p3fFxud0GWXAgcrNyxRacsWd3ItUa2bl77cdHJge9npWUSc4D+4
         xjf24YPGa1f3LbHB22st4QnqoEY/IbDOhFio20U/j38ZZL6XdX4zXvIlzBXj0uDlHdGq
         R3ezgxFIt5Fun/AwKyge4Oq1bceXp7iEUGpKSUabPPQwz+bS5/8M5Rf2To9tQimg3lYf
         WiScmxYQVzRd717tRWOwPrJkAcfo49mRaQlwor6O3PcMqcwucTvXOG5i4qNFaIkSmvQr
         M1j4YZjCMIdE1QcaoZzN27T1S6A+gLh75PWbVPKlxQi38hz+1TB3yiNoRfpf/RpkzTFd
         rjZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028841; x=1792633641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=sl+xZe1w/+ufceVKXDka/4tzEgH/pdjCTIAX9h5M0vo=;
        b=l+QepyaiBe/res5suDCbQkkMEmpngI8cXAobBoLMNhOEchprwQXvEXPhXmdSID8nnL
         THvFq0I8fJzHettsBIXx+yaMgZRbtDrRtTzzfpUvgWcBxQOszpaOUg4pnAprCNeSEy49
         dNOLwG1R/ednHBp9IxP0sd+WHqkOvL4SholV9Oa1xCili2L1ys5VG9Xnr9Hap9cDlosG
         PjGjl8nhcuwxdGeJNZ6xlOu+k/0z+8UCdgZi6fDBrC28oSqTLi9UwDnGu2hKe+VFocGe
         /0Nh0/axmPlI0CtPJWteaTwM2b+VMyIf3/8GZSRop445SE1o+A6DbMBZpQenS1nIAH1K
         hMhQ==
X-Forwarded-Encrypted: i=1; AKwUvBwDUBPlhouA916wT29IB2FQfxPOBLUfHnsZIvvEPImdn+SvZ6IKp+L5j9gN5/pO8r3d5UrEp9t0plLt1nnQzw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIke4KvPDZVuv6KImCdNI5lnESyxDPrXxJLnKaswyjCazXtV9Db
	SAi3BhDANXd/5VySSHO+N5hq+MC57qIQOjKs2lMsgS5qIWwwetkXr0xm
X-Gm-Gg: AYBFou1G1Kq/UcJndau3RKn4wumEVdtUiXqBMdf3vDZD4BxhQrt6QYamtrSW2aYrmHK
	sxsQS1kjbRb4ZOkY3P35+VbCT+ZDAqpzHTxoReDDkTttj0r3R2thEftT3zsuyoGNKqfkH4D57R6
	4utIBR4zI0JmxFk8jieE1n+Oofy1VTBmSGUiCYoJ09EtpOiTPRvWp35RU8RSHP5qC40kxfJv7zT
	5wQvrKQnuUBO3skHukuoMjA9KlGKeid/gPzkobcTvp2I1+AKyIxi1VMHwzSpxJMCICh7dyMg4pG
	MwranuVZUmJZ8OlAxIb1XDqC3e0Bj2zHFv9Wr67EzcG99FAxKgVAoBOSMQ3MY6nRfzZ1VtAcQ1J
	P2qSP/mWHajllaaOFae7Ge2rheaCMnmogt35uG89R8TWNoXH8ZSbztuGTh/Upm7ZgsM2YDQHbYv
	vx+iusJcDyRltoi/T0JTrema0t/DagshgqUWW3EtyH6r4aCcTCaLVLfR/CqNlYa9MlXgZlZqsk/
	HDEIoGpaADUMCfJjkkv+HWERSIiXj0fQp4eauc2ckcMhf2fvdUr8MtZKr3QapUJU6w7JAjavtNQ
	k4d1BNEc/ae1Uw==
X-Received: by 2002:a17:902:f54a:b0:2e9:628d:e9c1 with SMTP id d9443c01a7336-2e9628df363mr1150385ad.26.1792028840848;
        Wed, 14 Oct 2026 18:47:20 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:47:19 -0700 (PDT)
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
Subject: [PATCH v2 12/25] ASoC: codecs: nau8540: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:11 +0700
Message-ID: <20261015014324.5569-13-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184721_622619_1C4D263F 
X-CRM114-Status: GOOD (  14.11  )
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
from nau8540_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8540_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8540.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8540.c b/sound/soc/codecs/nau8540.c
index d4211a76b096..09e7f31a904d 100644
--- a/sound/soc/codecs/nau8540.c
+++ b/sound/soc/codecs/nau8540.c
@@ -419,14 +419,24 @@ static int nau8540_dai_startup(struct snd_pcm_substream *substream,
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
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
+	return 0;
 }
 
 static int nau8540_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
