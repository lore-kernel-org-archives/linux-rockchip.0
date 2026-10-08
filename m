Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5362CCA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZ0o7NW1Qf0t4HRDLo6BV5ux06RFBgY061eoBTRLRD0=; b=Aw+SkrNmGJ2Sow
	MBeBC/M/9LE9nk93EvUSg7u5pdhR/1VZcQIMSfC5GB5zm1OZRmwPdsTQreqzTGeka6DQl7GbrsIjr
	KtV8Iv1qaOUDRHvhjVbNkcMV1xTJBA9u0b1BLymiX6nva3+szqaH3dTeLG6zaGJ5n5w56Xpnq2dOC
	5jBtA9X4bJCBJQ7v46lRwQeogOpJZp4IdLMT863lTWSN/mTMAUM2WJebB0JeP0LqhxKxxi3B7a13M
	BIo1qtYY7jXAxyJsaAt+6MNoqRfHD5eRhpQZ+reKZWaIVaYPB/Nw3FMrQkT4d4MHyCtgr1x9Cyaih
	0ey0VnLUyT7U2Zy5hOrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElY2-000000049dx-0Oqq;
	Thu, 08 Oct 2026 10:40:26 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElXy-000000049cq-3ee4
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:40:24 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-34bb8b31647so7925304eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456022; x=1792060822; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h9Ry8JRaSeFrVq0Ud0+uxs62YoBNOy3ejKA8MS9Fs2w=;
        b=jiL/zILzAhRkao46+rwiJ29wKapEuKJUyBvTzV29j+SX2Fr0X7xS8s7+2yzDoll7Gn
         scyOIt034EylWYwUZZxu1O8UkDrgH1eZzDTaHj9vdOZD1CqCOZLWKqztrjZb/HMuGJ+k
         rCcjlD/s7OTnlCSYQAe4muaqmAPNaa5EQS1csf7GjiBQJiP2zJbR2TnbIqU2U6drkTkg
         cWGzwpRG/7jdHSqVjuNd6o2kFF8n7DMxUxgUiVjRgtb5KBn3fCxLxV2YcrY+DMZBjRWL
         32lREx3IFSC6HPGmUVzbIuJbPM+f4Kv0O03qlrYmsSWtwoRChN3qRKA/bzgiA9fKSPvF
         ob6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456022; x=1792060822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=h9Ry8JRaSeFrVq0Ud0+uxs62YoBNOy3ejKA8MS9Fs2w=;
        b=tdw7mveOcomqjB7GSaA0XHMtLWG6p59sPhqKm2Z3q9lktdA411Ao/38k6E7ClA93MW
         QgaRomKnzGNYOZhPhSPta6iO9l1fMqU5kmHCJXC58T9GXLgyVvNeX4whZPFgvZgtbvDR
         YDreiJ0kkZbfPpcqAHYj0FIMcOhexrSai8ttZLBItvLbZ6Ux9vKmVFPtTvzM8l3puFaR
         wNRkOn5tE1WuUd2yPCtsPzUjDXCx5cgHCD4T86dYYqK2MvAyK+aahG5nTkmLK48/Qydq
         Zwek49ZKMbCkPZK1cK0BFrhZLGy79hlSEm/IZw+GQRLt0hlqAUTzrNuruMzhQPgbyEgu
         oVGg==
X-Forwarded-Encrypted: i=1; AKwUvBxBpOa1Y1R27eZvfRvH4T9FKnia2+hOM1V4/QTPYnLdpr0vGFDJMrVyWM92sz7XjhQH21a+8/yKNyYDrDFDIA==@lists.infradead.org
X-Gm-Message-State: AFuF++n+7O7m8Nyvh3AygDFo0Nitg+xwgv/bB6FTCcq5cjQJmspuxdCH
	ZM5iuP82YhpSVyhEhDjP3GGYmaRg8x0JsHnkp5tRQKGEmng/4VpYMurz
X-Gm-Gg: AYBFou1lb6s1oQeVDklDRXVqHwnp31mQEbjGVJwO+xhmm3+1u/cITCI5om25ZvmaJfn
	FVovkQC2XeIYrF1IxWe4yskIHe8BuqAjmiF9JQAxazDkfpZFy9PTBIrvZnV8fJIga6o3jpHSsRc
	ftiEoeEG8P6yDKK46jkDPyreZm5Hw0sawifbZYU0S0KQaVbpn8L60+Ns5mUmuJ1FmmDWhi7RIUQ
	9UIwmttBk2OvcXhjxjyOtqsMamDRUYWinpEV4rN7gfOUlgeSsEI0OC19cwnHDx6+XRYbrPR84g2
	1IIWatQ5V1XYgSt2XPgkaNDCWj8mvFA/xpTcv36ayHbMPpF+eAB/HxvNCQ6tC8BfiDHH42vwkgk
	UZP7WhwGcNJeWqXkhc6BZijVJjYARdg4blaEr+b5jDJw7mfOPGI4wRAgRkxzAkgBiWTeFbeeuhY
	O6eYCRiFinjl37/pvgf4tXWbo6SE04KFt1HqJPV40AcHlfBWyPL9ZaU6OD5FNni80LlecpoIQZQ
	eyPYQXlpjZCNe0wT5M+rCiAIF+6RvC6VACigRAW8CrjOifGR9aJRixxWLrIZE77iLrX/AKZ/8lp
	qfYukYK6zFYkzdgRadEgSOnv
X-Received: by 2002:a05:693c:414b:20b0:351:1e2e:da4d with SMTP id 5a478bee46e88-3515def434bmr6671263eec.23.1791456022013;
        Thu, 08 Oct 2026 03:40:22 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:40:20 -0700 (PDT)
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
Subject: [PATCH 05/24] ASoC: amd: renoir: Fix acp_pdm_dma_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:12 +0700
Message-ID: <20261008103831.542533-6-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034022_911681_0E4405D9 
X-CRM114-Status: GOOD (  12.09  )
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

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from acp_pdm_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 4a767b1d039a ("ASoC: amd: add acp3x pdm driver dma ops")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/renoir/acp3x-pdm-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/amd/renoir/acp3x-pdm-dma.c b/sound/soc/amd/renoir/acp3x-pdm-dma.c
index 3f59b753243d..c0481a9ba858 100644
--- a/sound/soc/amd/renoir/acp3x-pdm-dma.c
+++ b/sound/soc/amd/renoir/acp3x-pdm-dma.c
@@ -233,7 +233,7 @@ static int acp_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp_base = adata->acp_base;
 	runtime->private_data = pdm_data;
-	return ret;
+	return 0;
 }
 
 static int acp_pdm_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
