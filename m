Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE812CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0eyot6xblKY3b19iHuxc57UlnkBl9gu8D6AUYdHM1Y=; b=cRjs7/DZ9JsvG/
	2mIsJsicHdnp2JTl6adij6gG250ajUYbtsW4SkvBD/0pnWiYhZNMHyUvEpmUGEBvLFHgwr0MK73Ih
	nyWeWKpgcU9pooIOOS+QTJAyMi10XMclbp7ARY75RitJ2+Ay+7KzkB+fDA71xKGspcxmX1UitpEW4
	rrDD8FTXqqUCkB/f4taOqb1SrZ0065XYpXGHHFOOk6uxRvh1wLwPqkND4axoGEK787Wl2B8+MxcN4
	/r7YGMmULaDZM8atX5nPVeLXXynRUERm5orPF7uNszXGmxY/FL9DvX/rgy6xzVkOKzlH4bHXRMmij
	I2fDSd6RLT/hI/Vu1/ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAai-0000000GcIw-1Uzx;
	Thu, 15 Oct 2026 01:49:08 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAae-0000000GcHa-1VEk
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:49:06 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2e812e2b31bso26934695ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028943; x=1792633743; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M1jbxv0B573E/6JvVMqt4p2dOdYoex1i5fkYQYaL9us=;
        b=WrtVhj+uYO39e3W0Uy6yrFcE/V4tH8aS19ZKT+5OkuPLw2BlSsLmSAL7ulG9dBG93e
         t7JT+5IfnYnoHzggKovQHBgSno55raJAEduhv0U9vJUGbNObycLW9/tvg48hWXTbdpyn
         JV8aYeuaeGUoJFOrcFY7/n/CP48NbFk/KvtisPEKTIjhl5YEoLH7zWSg56m0b0RVbj9+
         8ZNJbte3X+bcseVaiOEApC1tU6Ao8EqMDaS+S219H/31ViTqZd0Z0RjwXJM++E/OfdiM
         AJ1jGbWlp0GPt3VcjqQmjWPxZpHm+uLRUZ+p/ZtuiV2ltviTOK/GIZuzu7SwhUGj9UP6
         Eg/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028943; x=1792633743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=M1jbxv0B573E/6JvVMqt4p2dOdYoex1i5fkYQYaL9us=;
        b=V2vrAmoly06tDWLiPtz9TMGpoGcQEkaU7UyHM8IeXzMbg3JTLHJSKjX7b06nm22jaE
         Ub4qqng7yY+CN+CAetuEsbw5PeD3xgfB1qg66S5PrkJcgGej7iL0PUTuy9pfEyf1yVP0
         PE+Sz8V3aoHvK+n9SmAo0hSfo+6SjAqKs6WR/yFLRKlkQRr7FsuGEk7M+mhLDvAeLTzk
         8N8C4TSzkKIINXxiGR9LW3nxylULc5hH8h1QZOzCO6yvKaa74LfVGVxGX+vdhTr/CptN
         Cg7cQ/IIsWyzaqjQ3X+6FVJE/zy7ieWeOGkNMBWYlVIyBu0bzUGeTdHEMDAtiGoAqUSe
         fQEg==
X-Forwarded-Encrypted: i=1; AKwUvBz+H8vwVx1UYyTA4zCjsy+1bPWq9tpTeofd3iMOy2Y24WSgIJCTe6bOP6zUBhjLmxgv2nNbNSXkOZFwoxlL+w==@lists.infradead.org
X-Gm-Message-State: AFq9FYIM4K3vPuWhmaqzYfEeFbc6jXpJtH49KDyIcyK4Do4eL5HLmx7h
	jOesryKJdncO0d3R8a8cPtGI7KufG5GPIgpmewzC1vnVhl982rEKC3XG3YtWWw==
X-Gm-Gg: AYBFou3PWJafVcYATK0U6kcLZ/CFenR5uCH4gTWI03UVN7fDNqVhn5B9MeLZpLLSRNr
	wxCi9rus2hfTUv8GAefHlT93ujcS3cSSKx506gBKV5lPYRTu2FDEfXeKh/R+lp/7bLK+5Uw6uFq
	+Qe2OmEiNWRQU+tPqVAnDW4Pg3sBNb/u34Bu7R44ZA3Qcz5Ef2VBM1oB2I2tKRGxMmAp0Jfs+1A
	HKn04joXE71nHSOC+eVzN/qSkOb6jNpBbNlKST99PuEBN4exFNE6x2XdCVtsES7NpL6wmIpB7N5
	WuDHAegMwf7XCeegHiYTXCelAwBqmpn/qn1o1KpA+QSsQpy3Ued/tpw4b8W0KSpPLDfLzXuCvhE
	+fmDlfKr8IXvNC4t7vm9mUN94LUUr/FEGQeaJQxDcYYdEJeZxVwYLRvi+Hr94QctlphlHvrN9bB
	3nZuYVDQi72zEIPoWKfgZfALUVAzKMsxFCOVYX9VeAI/5R9sdTxgFbs0ASOdiDUZ7bODx+g/i1W
	nkNZ0rMDPsU+kkSm3REhewP9B1QBUDnw+qIX3DPvvI9YiNvWo9IAipLQwbiZ4/qu6U6YLh21DXx
	9NJKSXuRhKlOKpFK0qLCu8AS
X-Received: by 2002:a17:903:41cf:b0:2dd:7a0d:e51d with SMTP id d9443c01a7336-2e842ab64f2mr171051285ad.16.1792028943557;
        Wed, 14 Oct 2026 18:49:03 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.48.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:49:02 -0700 (PDT)
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
Subject: [PATCH v2 18/25] ASoC: imx-pcm-rpmsg: Fix imx_rpmsg_pcm_close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:17 +0700
Message-ID: <20261015014324.5569-19-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184904_402227_EDDFB6EA 
X-CRM114-Status: GOOD (  11.90  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Chancel Liu <chancel.liu@gmail.com>, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from imx_rpmsg_pcm_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 3c00eceb2a53 ("ASoC: imx-pcm-rpmsg: Add platform driver for audio base on rpmsg")
Reviewed-by: Chancel Liu <chancel.liu@gmail.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/fsl/imx-pcm-rpmsg.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/fsl/imx-pcm-rpmsg.c b/sound/soc/fsl/imx-pcm-rpmsg.c
index 7086fb7fc1eb..85b7c929a28a 100644
--- a/sound/soc/fsl/imx-pcm-rpmsg.c
+++ b/sound/soc/fsl/imx-pcm-rpmsg.c
@@ -269,7 +269,13 @@ static int imx_rpmsg_pcm_open(struct snd_soc_component *component,
 	info->stream_timer[substream->stream].substream = substream;
 	timer_setup(&info->stream_timer[substream->stream].timer,
 		    imx_rpmsg_timer_callback, 0);
-	return ret;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 static int imx_rpmsg_pcm_close(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
