Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07B90CC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geIm3+DN2+88YqenzwuAlw0qQTygaBO2u7ymd/DmvOg=; b=CC5czJgieA6Qiz
	hd/3K9IiWAPI8825EhWtdo91AOl4k6Y1lOgJyfnSGNaC4Vfu+rqRU7Xk88x05rI53NIENfZeW/lJg
	Joc3094fb4iLaNParwy15xXesz4de53g/kx1ln3vyoQi/IUbDnlU2LTJH6jmUxsj5gLiYTXmz1dRn
	G/o63+tHMuev85nUbsn2avwEmdk2YFLD1md9dVMC6La4XsKX2LmKZak+oucStpJ5T29Qlhjl/zA7X
	iyJIRnpTZzLegL+b6Cwmml75/iUuq0gQJ2XiRvsrQmVdGotxOTw2AGZrhZYkXsGP7e3GyD5cN6rGQ
	ARCrNtfzr6jXTwoFAHWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAXy-0000000GbYS-2v6J;
	Thu, 15 Oct 2026 01:46:18 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAXv-0000000GbXF-0sKC
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:46:16 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2e8fe8e343fso18304215ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028774; x=1792633574; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kUuyyTReTSIMtXgKEYicRWK2Sg4dljNH29dcQFqlL0M=;
        b=khX0k+CAbDodT0m1e/s5wlcJd8olpid7ryIOpKwpAMOv2KC5S10JPi1088S6JJTNNX
         +7jKZa1xSKSJ2OhV9QFGqhBkWn6oVGQr5XxKRJ5cxsiC/HIgB7aNsp3uwL/fZv2GX78g
         BJKF6tcjerYJebOOqSMewcM88/gqjFIqWDzMnsPn16A6vofkrJZ3RgXpotCrystiLGt/
         uHcSm9hlbt+SoOCvC3zlfipeovPLXHB/+AKEqXMFBtkNpaCFcvWYLmKp+o7pwcPS42ld
         WUTVFp/8iN0WkByUft+0eoD9DXuqvJzaBAcDNDpzAGFt2MfNWy3pHBVIccnMgErKU4VN
         lVMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028774; x=1792633574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kUuyyTReTSIMtXgKEYicRWK2Sg4dljNH29dcQFqlL0M=;
        b=0EJ7jS9ywbP7VG/p2iEGKU+vfnt5kjVmCaMTWflGvUF49+hj9DYcsfuJiCXYsSuFKv
         eEmv1ElIUGueNmxtI7U3FzlpkznxTjJvS7PL3oB2VhOGeMxjxSDayd61o3cwM5njcZ5F
         L2ZWAdkyhUPJh7ExzJWUCi46trFCYCqE9y4SOxWhiDhvbSTsHcOyfl7FA4zNo3SwC+Qx
         DVmA2ZaHf381tMI9q6LSH7j+DQe6Z0c/bhXg0iqY7sAZcF1Mogfo71zgHORk81dfwwph
         cwMBf6orZ2l5M5ZITeUKSpejrO1bJ+4iyPOFDTpXyKHwGkMMPI8/AyZ0bjHdm3OtskHP
         Zc+Q==
X-Forwarded-Encrypted: i=1; AKwUvBzGu1a9Gtu4VDZeX6v+VxUPEiZNJhvdTXXvBiSyzx+i4s7v87KxiifQOpHI8r7wxtEOtrI0tVQCusimjZeFXg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJE2IVqYc8MDV1QJUhPcVx4O4NrsrdIJWfJMucFeGZRCmbI+Ws6
	XlMLa+Jfo9q9paC+/vGxKHE/DMV1H+r+M3K/9qUkXeGspnH650714pmP
X-Gm-Gg: AYBFou0AyFVlwYbdMwXy50I0q0EN/oiw4byFoXzgp4omuxAwdHmC9RRMP8CTbYvyH+x
	TkEje6/5Sjcesw9JlYRWCY0Wn4bHKcL7ShT3sz/Jia4sq9jNRE/QqAbC/3bI9VlDsL0YnA3NenD
	OX6xLFIZROIzSCwLE1Pa0XuSunyT7yyqd7wI/b3gKSr/q5ugDGHqMahafS0af7ud6nDqtlpkJVr
	fNKs1cP++iBwwfeqyiiOahNGYKtNQL+OqaotLuIVIjfoto/q6KnN93SiHWALj/MQfyv5JOqigt+
	6ekhvb65j2lN8iFkuMpZxJBmEtO2H8XJs92xYxjoI2PRmwiskZBYBrrCcHERaU60vUgF1Yh/Jea
	f5OUt/mLaMWnbLXy8bgMLjfMvEHx/smgav/NkzChYMRvrlnL5bV4k6mczP74z20DL30MTp+YASP
	e9A5A/2ny9xJKwKGZYC3hSzuefioWjjbSjFFA+FIxUgReizRfui2zZWIEilc/neltbNKBgAmcFF
	Zz63ro20aywdSywSaeRod56S7/qd1MuEpKuMcEJrA/IAf8z0RPj+qB0R0uZzfayDOjGq+eoqEYR
	kekC2i8Cto8Kjg==
X-Received: by 2002:a17:902:cec2:b0:2dd:c0ff:e72b with SMTP id d9443c01a7336-2e842e02a57mr138459075ad.61.1792028774224;
        Wed, 14 Oct 2026 18:46:14 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:46:13 -0700 (PDT)
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
Subject: [PATCH v2 08/25] ASoC: apple: mca: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:07 +0700
Message-ID: <20261015014324.5569-9-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184615_249261_1EED1DFE 
X-CRM114-Status: GOOD (  14.43  )
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
from mca_fe_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as mca_fe_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/apple/mca.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/sound/soc/apple/mca.c b/sound/soc/apple/mca.c
index be702b2942a5..26022a42a95e 100644
--- a/sound/soc/apple/mca.c
+++ b/sound/soc/apple/mca.c
@@ -516,6 +516,7 @@ static int mca_fe_startup(struct snd_pcm_substream *substream,
 {
 	struct mca_cluster *cl = mca_dai_to_cluster(dai);
 	unsigned int mask, nchannels;
+	int ret;
 
 	if (cl->tdm_slots) {
 		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
@@ -528,9 +529,18 @@ static int mca_fe_startup(struct snd_pcm_substream *substream,
 		nchannels = 2;
 	}
 
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-					    SNDRV_PCM_HW_PARAM_CHANNELS,
-					    1, nchannels);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_CHANNELS,
+					   1, nchannels);
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
 
 static int mca_fe_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
