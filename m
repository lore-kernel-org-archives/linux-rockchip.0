Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048DDCC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZ4ESAAK7nxDyxd4nx+j2pbuUrSt53rTYwf5sxWlj3M=; b=1wzj1cOZDN6oHt
	Hewhx255cJbc7cXX7TSvzgnAGpFz73mcq9QGuvxwFSZwAUb31lT008YxVVmSs6e9GTacidJG22E9Q
	LqRe0Rr4JnPusXcGnG+J0QF7bsPDi8t+sauNSr2TYHVi9D4PyJaT9ebopAZKxh+cWmVOnKgOUUHOg
	bu6TRzDGho1K9pMh7McHyVK8c9BFqDZ489jdgmwVp8LqiLMRyjfqRRHxDbc6JqN02of6AcwUcehIN
	2bxHzrRqmZ6NSkarS/Evp8USulpukprFg82F09qXP8tujyhcTgSxzrF+u6wDI/ls/rXpFzNXiy1wq
	7SPO5CrN8jZerNq5c3HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAXX-0000000GbPU-1OGb;
	Thu, 15 Oct 2026 01:45:51 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAXS-0000000GbO0-1C9s
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:45:47 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2dd1dcdcf95so25009475ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028745; x=1792633545; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/n4smlFZhMXZJQElrsN5vEKX5hOiO4PseO+WVYrBqMc=;
        b=LTui0INjQJPZ6BJdNCIYt62T18HRwVa7lTxvfUtbOM/NehkJZeODrNa20axmENSZp2
         aFd1pCxdqXdxLeptdiHHXg6VnfjzQgHNVnVOAS9dcqnvVJZwqnkGJMAZeWxlVg6BSfJe
         gKvCqaTeKDSh3elMTWgAWNiZHPm/NwVyFaMLmWcOpG77TzDO+wKsj9BXQ9+ZWUnTQ9jp
         10buqCjErCmhRJFU+I2W2qUgFRmgf8iNGMuC1gmbOon+uKyUV9sQte1zjbxSt7FqZHzK
         Z108uCRdNWi/krZa/Y/wcge2QjERJYF4Q+ErkbgPb/p2LBn8qBFChlx5vUguAsyIAJe7
         FqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028745; x=1792633545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=/n4smlFZhMXZJQElrsN5vEKX5hOiO4PseO+WVYrBqMc=;
        b=UC8S68WHHXjILQkR8HwIw65FC8VIBSklznkEGvkrIiUI5tq+5LrSyumrl6Pg+W1JXC
         fEfG9NsLgBD2Ia9yhHwNID2NiJ2P1g1v9GmEyYMF9ixkcXEDv7SWxWrFYwNiimTO9I1M
         v30pEgoYZ7qBnUefxUhCmVlLafvZ49+tsgWnObObhgJBfJNHRqGtk1+nlzBZ6xy3sLJu
         /J0AiCoJCvBFD0puNX48I5ruvaEmqOqkAEWhKgrDIh2I7Rjfg8/SlwVVMM9pFrXy/CP/
         QJIWraiZHHAoHqzhu5zkpKkKBrD0rOp0PPlYqE3NePFUdiw+Ke3Ayep3f65PVUEHEgSL
         nssw==
X-Forwarded-Encrypted: i=1; AKwUvBzgJH/truwpbwfXOVdzVt8cl+Gh4U0vjLGzEMuOB4S3AfEmF9B1USOeSkmHgMtOOp9SbKy98NQOCww1BhERbA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIiWMkvC1jDo760X7fP4Ex1E8hkeJPOJ/fE/6SNmlijiEw0X61Z
	p9Z51wfeA3zzVuJWOfU1RndADFE9GtVsHQFNz2eTB2uZj4puW3e2JP66
X-Gm-Gg: AYBFou2ivAu8FK4g9c0Sml/PIgLuVZHI10tA6owHjtuZ7Ng+blR5PPHxaGsQ5l5KJKb
	C7QSzBfJ0gMzL9moSOtrFMFKfD4/wPC2CZFCxSsL8AH6aL5djHkrM8gXtugOZKWOhXXBkxZxMMa
	JLv1Obvr3YDY14vuaR4aNa5KunFggupPfyxIoul4IC1xuNAyo6jba7zk6N8GivOLxpdPXqQ6rbg
	eSAV6RVRokAFknMFyYovNF/TED/HfWhCSOhZsds0E3Fw4DjMv0ml7rZ8DExdlAWOIFiYRKGBRop
	nBV4Jr3DN7q8Op3NaW35pngMBpCVBIwfAmHTTp+kxBr2NDYT8bN3PxwcA8DBMblRAtJ41z/7eN5
	/yQ+wX03gxTRPm4rJmbvArEw/jLxaLJZ+Csx7cKMJx+vzuScSmWZsuriYm8U8z6lPWaoCyBhJ2j
	ug/xpVCiK3++KKVghhnwJUe65M33NAYg25IpVN8ZKg95QCHafSPx0VXhvIQuA8EP2WfzxEQj1rs
	MAiaN0haJol/2OTowWsO6bQ4SkBwvM6hgNfIdAark8T41xAqaNIPfaqFICiuBjDT+8RVyWJ/iOZ
	LzMy+fsz6HfAgw==
X-Received: by 2002:a17:903:1b70:b0:2e6:e9a:eb48 with SMTP id d9443c01a7336-2e842f2d257mr110492185ad.41.1792028745495;
        Wed, 14 Oct 2026 18:45:45 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:45:45 -0700 (PDT)
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
Subject: [PATCH v2 06/25] ASoC: amd: vangogh: Fix acp5x_dma_close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:05 +0700
Message-ID: <20261015014324.5569-7-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184546_486342_E6A33317 
X-CRM114-Status: GOOD (  11.83  )
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

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from acp5x_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: cab396d8b22c ("ASoC: amd: add ACP5x pcm dma driver ops")
Reviewed-by: Vijendar Mukunda <Vijendar.Mukunda@amd.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/vangogh/acp5x-pcm-dma.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/amd/vangogh/acp5x-pcm-dma.c b/sound/soc/amd/vangogh/acp5x-pcm-dma.c
index 831e30e9b042..72050fa2de80 100644
--- a/sound/soc/amd/vangogh/acp5x-pcm-dma.c
+++ b/sound/soc/amd/vangogh/acp5x-pcm-dma.c
@@ -231,7 +231,13 @@ static int acp5x_dma_open(struct snd_soc_component *component,
 	}
 	i2s_data->acp5x_base = adata->acp5x_base;
 	runtime->private_data = i2s_data;
-	return ret;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 static int acp5x_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
