Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 015CCCC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlMDo+W5aLe6BV5Hb4Qhn+4DNL6rUN0dY/9pjGNlURw=; b=uq7NQlPRy4+rYF
	R8C3fwrTfEyE5cJLY3HNiQLvCGLMUKT5czXSEti+4CM1njWvPiU5wIncjxW19FHtX2wADAK1cP0FT
	c6QWoLy25FWLiwAqEf0aQcA/gnCwMAyfSc+gTiH1aUgQWQQFIsuCqZYxIIo1aS5Waz0P3n5kt4Boc
	qW2kF+7bIqNplI2TdB4cpPV/j7kpP9lPC9n3r7Gy/++3oo4m48vFG30ijad7nMebCfNNhuivG+yJ9
	i/l5SUPIqNP4XxhcyZnHjUeDwSI93HRSTkB0WM4LktKYlPKOrNoO3gYwUeMXIw0bYx52vdmmfToDO
	pVcxaUKM7ZkFNpElQY0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAXG-0000000GbLA-3QG5;
	Thu, 15 Oct 2026 01:45:34 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAXF-0000000GbKA-06OL
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:45:34 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2e95b3b52f2so1419885ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028732; x=1792633532; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eK8UF2f8kXq1TEqWl9Zyp8tJ5HPyvJ/UCpsqtpYFERs=;
        b=QdMbe+ApLXm59wXPocPCSX0NQNN/FT5Pgdp2e0mW/tgw6/y2R3tyLV2QH051Fn13CP
         d4bQt5OOvvvwkAWF8IYPTTnDQDnmD9l5EYccOI28dh5cOL6MFrbO75ahrBzUoiMPHaxL
         7pEIdtjK2p4PIW0QMQ345z9Y+bSV6TlZSD7dCPEQ9xfxAY4z4ZYdkeZQ+oKEt3wULDyX
         4R6UKIePJ7m+TDQNK88eGzX20OoHWaMWULMegAVNSjcYI3HbanuY+vopOg9dcfmIK27i
         sVtfAQNhZg/UoAohIj6BDx7+azCpH22gRBBeaJYENFAxDXcsVXYnSOXkZ5rr1a/aaqMq
         8BQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028732; x=1792633532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eK8UF2f8kXq1TEqWl9Zyp8tJ5HPyvJ/UCpsqtpYFERs=;
        b=nPBGANeDOCnQ8aEAPlfqbJh6SePtRsOjoiIEJnRTPQ9mchDyPBC679YrXa0CgM0GfG
         36AOJy3Tk7HGPfr/hi39niPyi8LIRBytKyLiI2k1OyjfVA7lsmEoJYfNhHSsNEnSfzru
         NhPA6oPZsU4fOj/vJ2vw4n5KQmTmAw7oYBO72EMqo3IHUA1Pg1drEGd3CUKPBMR3TEFg
         aIZopP110B9i5GairyDCmy965ouYpKNO2eJEooOxxL/Lslct2JRGAXxltpoSpojJ+g8c
         Jw5t74nzZR1haBhdmpKo4XkEcGi7aW1PLzern2NGOiKqP7CTMBAm6D11C8vBm7OW9e/j
         d6eA==
X-Forwarded-Encrypted: i=1; AKwUvBzL98iZCaORniKI+F3JlUUHhf8d4/lYBX743wuu9GmxvPJ9ErrKCC2NtRiPm1K5wHRc2yzBBrCz0N+2cbb6Xg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKOFCltlQOS4/aG8nyV7a3ZmGi6veCpY9sHIl2FaJgyXrOmHSfY
	zkL5UUbHrz6h+bBHUAVHRwKBFu883naHanCHF7Oz5fd/WKM7WhKhIsQp
X-Gm-Gg: AYBFou1ENxVEDNYLz8cREMlQn6m1/SO2iN1P/nlf33+b78rTn17FV/wI7r7cCMPcWKQ
	mTWKJePufkx2jAQhTj95VVqTChTFFWkkVUf4eQJArZRQfdJdwISPZcsWEuzetqXyepAs19J2ZI6
	qvMdOm2byW6+WycUk79KyqhpeO8v8plphOWfCibtWsSPNyQOMgsYsYcB9ddjF5whXmzukRQypVE
	vswLHvCP+LUwmb6YfccFXAhcnF/E7OfaclHdljBJ/AIKeRYEg80eZ6Z9S4rNzFz43btVirrUPsm
	TcWpV1m8t84nzpc2Z6DV0HAnr4w88lSImcsZzNLC1RwX1JBuvTEefd9KovdmtGTFMvqSPch2Xs9
	Xm7kY7J1+/Hi2yiZ1zilxiXm7VkI/VEmLQjGZ3/RT2o+L1z0Ow/hksQFK7kgGOF+5WN1G9A3Ecf
	/Lel0hmeP2mCFxJor4g5eE7qc+7QBkNkGgGFa2ScuteR/RpXHgEWPAjVeiqG+NRDsh9VYEZLBlt
	lIKDTrssEtJ4EgJrAz6UAM1wLovrjTBGWxibwQNgkfJq7hVh6DACZwNbzIt0kC2CF/ViGXsV7F+
	FgOkAMfN3IYjFA==
X-Received: by 2002:a17:903:19e8:b0:2e8:79d:15ec with SMTP id d9443c01a7336-2e84280afc4mr161680265ad.6.1792028732357;
        Wed, 14 Oct 2026 18:45:32 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:45:32 -0700 (PDT)
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
Subject: [PATCH v2 05/25] ASoC: amd: renoir: Fix acp_pdm_dma_close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:04 +0700
Message-ID: <20261015014324.5569-6-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184533_070015_C43C60E9 
X-CRM114-Status: GOOD (  11.94  )
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
from acp_pdm_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 4a767b1d039a ("ASoC: amd: add acp3x pdm driver dma ops")
Reviewed-by: Vijendar Mukunda <Vijendar.Mukunda@amd.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/renoir/acp3x-pdm-dma.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/amd/renoir/acp3x-pdm-dma.c b/sound/soc/amd/renoir/acp3x-pdm-dma.c
index 3f59b753243d..89dc60849c06 100644
--- a/sound/soc/amd/renoir/acp3x-pdm-dma.c
+++ b/sound/soc/amd/renoir/acp3x-pdm-dma.c
@@ -233,7 +233,13 @@ static int acp_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp_base = adata->acp_base;
 	runtime->private_data = pdm_data;
-	return ret;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 static int acp_pdm_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
