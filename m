Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5B4CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aK5qSRGo/MwuSQUyJB9saQX8kO5Tr7wjHzkS5dAlT0=; b=cjmjE6QWsmLi+k
	yh9fcVG3ZZVWan9J/xxBFroNNqtUUeYYInO7mjwJxnCRhJA5sMEMAB0Zoe363M8Z3m/9FKw6VRvn+
	ZyPDyIndG9U15OOhHNeUrGF6EFoBW9GWg5xfxYkT3ASmqIB1crP5Rj2RIIE+vYYvM95krsTqoABSW
	OXHxHwodqRiShyGkxOVEN7WxQ0btHBN6BDZ0amYPdnriE+Ss8PYIYVTwSzdtHooLv0Lg0XQ3kAY5S
	noyBjesYhkAMu6+M4cAXaKqQKvu4v8uCrXqtL9w7JpVf7S6putnZT0xx+ttBHNXoal/MwqIewYsip
	2qApphJ+AQaRS1Gnzsog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbF-0000000GcSS-2ptv;
	Thu, 15 Oct 2026 01:49:41 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbD-0000000GcRN-15PZ
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:49:40 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2e7006bbf77so10086735ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028978; x=1792633778; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FVU2me1+3bnamRCjCl3aeaOsDD74U7zM2YYw6HaRgfo=;
        b=eIXCdJUqQ5+vwR+1jCz5oiy8vvN3/jIYTiWS6xrid9iYiMvGNOvFZYacxE2pzk9Fx/
         ddJsiBbqBBLKPZQFHVQj2s0CYXfSYrkHp+TJbjRP+cr+4OUR6bRKGmYBC5LffKMqtXF8
         k2RtD1ApQBwb2vkeyjWYC3p+uDIELPASUK0qQeRRDcY66zAVbJVjRsgYvbFDnI4v+f6/
         clNfY/gNBNPVACPuUEyY79TQiThK9uMSt/3/27CIOajLTCPb9Vi5DVqdiL0EYErPtl4Z
         mPNf02pzot/4qbYRpbPjQAblkgWpJsTK2NSZrIxHo7qmT/3d9iZjAHuNTBaHVdXEJ1WD
         ieTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028978; x=1792633778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FVU2me1+3bnamRCjCl3aeaOsDD74U7zM2YYw6HaRgfo=;
        b=aa4kn6y1NzmJ+8ZHL1JVnruudD4sfgQUMXU6gc9INGgEKiAkpSq5mrlfDfGZg+AJix
         AoQEegc+Z2s3MALkq6IGkV50aHI2lWil3gcyOrYTA9T85F0092xT9ehUGMe41y3Jeld2
         Khf0h2PZOvpiu4Ha7igDFI7Mupl9zogx3JGKwbRHCEXa5BlTtD5wd3ibWyCtePQ7IaX8
         wDQd9QtdYgKDpfqM425miLMGHK4AVwTJNbhv4tUTfjosOBd8eLKSjPym3md8wxw9z50B
         epe/ffJc2iIltf+bjBDd0/O1IruGVQ8hzRiIRwKUqEUnmJsZULXoVmmPVyAsam1H95Y5
         6EBQ==
X-Forwarded-Encrypted: i=1; AKwUvByckjFqIT/WSG1T0EMAza5D65354lKzl2ja5RnntljkPhUYpGIYvucq56d/llCpJCl/gZBvxXpxv07PFRF1jw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLyxWV8BTGNmD8g9+wRF36v+JheuFd25B0rLW/dxH9q/H3njIaI
	nfzWupKKsevPjG95w1v0+R1xGAFEfIpGrGhC97ko5iEocZW/N9X6eKi+
X-Gm-Gg: AYBFou3oYa1wvNNItjnIZH9nL/DlcfovMj5Q4BrVHJ+5I0RqgVtg8eQGHek+1lgIgpa
	MTCpY/axBo9CRhabyAdK+HrNEuOT9+byzGNNZHgGuNrTwYNMars1iwqhXKUaxG4SxHFckKV1T6m
	bFnkJiuzmLAb5jj3GaeQcS917DLQeGav+ZRojOzJYT6dqOjbHKwfUZEDqeS18euI3ZynJV4sfzH
	VQmdS3SiyHjo59gsLcUiT4T3ToOpfdKg8CPVEFyRryOGR3J75SpT0FD/PAAK2gzmonv5XIsNIuc
	lKubFt+GKr4zYTAO966dbs0RxX0JTOrh/m8hTSZvi3MisfVO97y8qHicFC8uMjZ+LD8aMdwdAwz
	9I8RwuOB4N0pKH5wfY/VhYPl+eGvoIR8XO6h4OduLKMGJKuJtfyHztZ7V5bHvzois0TVX2SOFf2
	pOwrczpabZbFZ9qQbXtsFaeT5oreD5GkP0F8NZvStkhYnK4/ovu9FjEljQP5ILRQZAXbi7COQyC
	Lwi+0bpInrWBNka2ewZjr+ZAY42oo0KppfFNe/WUVwRrldB/YBbiFs6i75LrIy4U1VNhTXChY2w
	DQ5sk3mksvZ60w==
X-Received: by 2002:a17:903:3243:b0:2dd:ad74:ac32 with SMTP id d9443c01a7336-2e842bc61a1mr152460415ad.27.1792028978441;
        Wed, 14 Oct 2026 18:49:38 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:49:37 -0700 (PDT)
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
Subject: [PATCH v2 20/25] ASoC: renesas: fsi: Ensure the component is marked as opened on success
Date: Thu, 15 Oct 2026 08:43:19 +0700
Message-ID: <20261015014324.5569-21-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184939_306092_F2A9FD76 
X-CRM114-Status: GOOD (  13.88  )
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
from fsi_pcm_open(). ASoC only marks the component as opened when
.open() returns 0.

This currently has no functional impact, as fsi_soc_component has no
.close() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the component is correctly marked
as opened.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/fsi.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 23b7e63596d3..74e2ea002fbb 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -1811,14 +1811,21 @@ static int fsi_pcm_open(struct snd_soc_component *component,
 			struct snd_pcm_substream *substream)
 {
 	struct snd_pcm_runtime *runtime = substream->runtime;
-	int ret = 0;
+	int ret;
 
 	snd_soc_set_runtime_hwparams(substream, &fsi_pcm_hardware);
 
 	ret = snd_pcm_hw_constraint_integer(runtime,
 					    SNDRV_PCM_HW_PARAM_PERIODS);
+	if (ret < 0)
+		return ret;
 
-	return ret;
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure the component is correctly marked as opened.
+	 */
+	return 0;
 }
 
 static snd_pcm_uframes_t fsi_pointer(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
