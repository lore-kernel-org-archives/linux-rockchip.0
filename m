Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6482CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWdOyFdYsGKbJ00x/Mhl2wuATQdx72jV3a6BGAOnmuY=; b=gp2sXAU2s+2uxQ
	0Hl0fJv5akWFhKbeyb70cKe1nB5gCEE33FCRihK/m31S/UiHY/63VWefIX3CltK3KVIqvw5lAxxvr
	aPWOjQ+Suk7KHTu+LOvo1JV+n30ad5mjXkM0oDEbTIv2kp6gP5Q9ZUW2MM4poiewaUYk3QAlg63OT
	u4yso+sZKHH8OWqhYFts/oxhbn7lWYUvVbZXvsKK3gaQWCkhiDZhPCXsdROgJkIrxFFndSmQQhgkd
	hDSKLu5pLXC6egBu0rUQMr8r5OggQ7A/Xi4DjDfBtNM32kC90o3yZRVBT0OB0GXSdrz+ImtZwq0GU
	NPNMyiCX15OqyxjfZhaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElaQ-00000004AbT-2G8u;
	Thu, 08 Oct 2026 10:42:54 +0000
Received: from mail-dy1-x132b.google.com ([2607:f8b0:4864:20::132b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElaN-00000004AY4-2exw
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:42:52 +0000
Received: by mail-dy1-x132b.google.com with SMTP id 5a478bee46e88-3515f9a5d25so4191759eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456171; x=1792060971; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xzYVoHEdz3P+bsZXHKAJVN1yBKjLyzB0nPd+jwADmvw=;
        b=bJmq0Sgb/aUN8VltCjsWSIztokFJtQQR9tzDb8dlJS4wrt2ijZHd7P9MyZvdwt7K6f
         8dduc6rjeP1YQmekfw6twWFbU3ey3ZQyRjRlKk1npNdwQ9LnEbUJsyrappP8h+2uHu64
         6t10vTYqRjkp8xxGhfcZpf11ptC50bMF+VoCxOq5COX4GHolxKDIEVxseQIxrjaRNF7C
         RxbplGQBiR/y6IxzxuOZqH/kXoP2R6MP5YkfOKeoxuSUXKbyhilV7+jiye6BxY3MPoeW
         lrsOp7zTnDfLQAFeTf8jbISMjmVS6DGu+mGuMhdzwWMjHyu/8hPHiLU6uy7iGDRNiuN3
         xsHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456171; x=1792060971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=xzYVoHEdz3P+bsZXHKAJVN1yBKjLyzB0nPd+jwADmvw=;
        b=GcDfXS/XMgRH5lUx2P3vTeKY6EN/mnDTzxRkoxWBfr/jnmOVLU8gYpnfDQZi9Hle4P
         HX6rBKkSCYIFMFLRtSN/zBcmZncXJXKCh8MWaUTyBXyiKNU0Cdca7RG4KNlm0ItXD+qA
         ZfGL+ncwMFNG3czcpJBIt2KU6NV3GO+OTCMNmNFV2V+Rx5zUf2uGWj4du3sXbbwqmdL/
         i2aZ5C0NzPCXkiCuI7tutg0peEmCkpOdsTO13OydVxXj8pMeN3SzrGZXLlkbX0RCjz2t
         KhjpEUturB6eT/DfPCxe4egi5UqnSWJKR64hwEZF4TnhzGZva1aMaoT+9sfEQ8lVfwY0
         yoig==
X-Forwarded-Encrypted: i=1; AKwUvBxho0yUWDn5hNwBoA6OKbKepS8o4lKtVNjj79RggxV5hz4WY9rmh/XdMD7LhQe+VXaTnO59T6uRzeFRM+5mow==@lists.infradead.org
X-Gm-Message-State: AFuF++lJyuMmfoEdbxAJgZ+TwZINq4MlYNew3A2ocjLOIFxLFLm60G9X
	rU8Gpbhx1Kyqokruqmyjir6GxK7mYQjusLhhaMnXijAB1hhK32vsuVaV
X-Gm-Gg: AYBFou28vfUpPcNJbEKQp2J/YHcDc1sqO16c9XufawusGK354FlikbuEN77+w3UHJ18
	7KT5bl0X02l2MsASuD1AgQMcmQIjKMIplpbAa1CK+4eL//X7/k2gYhSkgiK9bxulLdM9bu8Oycy
	0Hi4q5r/iy7tOlGJMfIcNMfaihiGABLdWXhRQHNtMJQVzTA5GP9q1mfaZxdWogSwguB1BIaEDAo
	vhZPRg4GRnrv1MdMvH/uxt7V9UdBazU4YsVFg0swh2ibaSxxOMNGaBnygB6TRiGMQueE8hayQzF
	LVMzmqCIUdrFg8dPR8++hdJ7CYX6/UorYCBsmQWt7b390GIhhL3A5BRZfw3XclzpxmF1s/gFtkz
	jAQMKHfAVr0SpJlXfqd5zyWvx1+n2wfrUpvaU74w+uSugWUMczDOIoBhCBVpipBwkDCm+zxfCCB
	rLEDn+F/PJnQ0vwCv2aScIDOJy8xzra4vhKl/wbr86l41wdQ7OYKP0NnLOjH/ZzL+4G99WdjlUY
	eqCUy6PD8UQTv56TIrGTR2whSTU4aAs8o457sMM1tjSSYjlYnY3uoBPrEb9+TvUUOvo4QCuzTni
	gDYfmNEDVVrQGQ==
X-Received: by 2002:a05:7301:8617:b0:351:11aa:5d5b with SMTP id 5a478bee46e88-3515dde8bbbmr5895512eec.19.1791456170565;
        Thu, 08 Oct 2026 03:42:50 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:42:50 -0700 (PDT)
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
Subject: [PATCH 15/24] ASoC: codecs: nau8825: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:22 +0700
Message-ID: <20261008103831.542533-16-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034251_703243_A6DF2145 
X-CRM114-Status: GOOD (  13.05  )
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
from nau8825_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8825_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8825.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8825.c b/sound/soc/codecs/nau8825.c
index 63d927f31409..10bbfbb460b1 100644
--- a/sound/soc/codecs/nau8825.c
+++ b/sound/soc/codecs/nau8825.c
@@ -1261,14 +1261,19 @@ static int nau8825_dai_startup(struct snd_pcm_substream *substream,
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
+	return 0;
 }
 
 static int nau8825_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
