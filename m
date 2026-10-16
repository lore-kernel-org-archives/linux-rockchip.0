Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4190CC6B38
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFsVerTP8xoa7v8Gy4wQYj1UPeSlsPFSgpVXXnUQvYw=; b=PyUiKCUff0Xy0b
	Zi+m4QKQHF6MVLzqwssFUw0cMoYRCIT062QJXIaFTfnCe/jo6sbWrVENzLVDSSnqZu8PkdJ7utlHL
	68KsgjKbZLu7BneXpjStG+JdUv095D7dR/VZoHyL+lTfSlweAjeeDLt2dWXBZ6EP1P+F24jzFH43f
	ZlJfJVPhxOrF82o28CRbMPagq2YshYGLTH4Rcn0WZqI3pxaIMUKTeSCCfXGCzDCl6Bqlh17F5xeZP
	6K5gyDybs7XnXtdHuowxRXgHtl4zwXg9xoM4klHGoyHnUEN/WQfHJTyqtMdC71bg0/1pLuUeV2In5
	BecVlN9MdmeZP+oWlS/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIY-00000001x0x-3yhl;
	Fri, 16 Oct 2026 04:12:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIX-00000001x0f-0c5N
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 04:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DnS3efznOy4aR/sEoOKiH1O7kNcA8JAEG4dTp1VvwAA=; b=SMGjhRoMJ2lH2nABVwmch650SP
	VZkMCypZx3EYwD3AFef17WD5b3bckyrPdPGttSAcPV++GtIIFr6hakL/IgqztNjTuLXC+WnxQPFHV
	pDdYsTP9Eyvcs72yl2wy3Twkd+EVuAdgyClTERfFB8M/OmzaUvH9gOZvLz0Za6BKmR+UF/8n+e7Sz
	2jAYhtG1dojvcAI+Hv8hTDNmHewMNC97CJbRbSv9puhgc3xVjV8kRl0lDg15EL6OwTSqEdg9TZWbH
	pKy6uIZYTMh2LRKLhwYMRXE/CPBEZYSKQRHA6VClG81xAdyb4Te2FaD1HlNXytuRS/ccZvnK0QjZD
	D0Oy8Kdg==;
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHZIO-000000015Xt-0d4e
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:11:59 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2dd76b1361dso19754615ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123910; x=1792728710; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DnS3efznOy4aR/sEoOKiH1O7kNcA8JAEG4dTp1VvwAA=;
        b=pxzummOWFU5EtdPdiJhYdVXMwLdN+WWYyRqDQZFV44AVhVyXkGhe3Ef43ABOnJrjfq
         UXsbHU1ID0kDDyORtAMh9IT7/yp7fA/Gp/sNqjRJvqX3WzMG+DnuIvztWUWBUp5P2AOW
         s6gcc8f8g1ZjHRqptjDCOXqFG0emgLoN8wyYOw3B0F0/amlK3AXajPKExMJduIqfTsRM
         z/Y3BVyxQD4Ir3i0HMFnQH+WnqLMKLqhBItVUd4eL408CEk2qFH26GPrKhNK/IbXihdc
         gfMuIDjGlgRjx983c5tsU46CrbbES7RACqEbbr27dTxVx7Aa22FcMbbyQZd3S5Z4vpPe
         GZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123910; x=1792728710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=DnS3efznOy4aR/sEoOKiH1O7kNcA8JAEG4dTp1VvwAA=;
        b=KQM267XZYF0PehqzPQzAeX9MbtCuANMczXBLVISm/LUsIRt2LhPdAUKvcXMt/WJvGP
         8axUsc7wjRwVT68fvw3NGLHmKsyF2uMnU3OBsDyqB8KqJJYfXTig1vZImXBhkoZZDjCU
         jjTC9SK2kyMcrUxizYF8EBI1Pb+Pzbwq20ucTG5FJ0PT6uzM0GHZ87mfOB3oq4F6zCe+
         X/W/PZGMmq89bfp6ttw63NYnyx74w+rn3+ebnBobKNpEUFmOxsM/gdZn6iz0tHJVdD9g
         ROVrKrP62yn9av6kuUdWKWh8SZnPWLNhy7MoXmNAArrWHFdGKNg6JJuzSbvU9HNmfKvw
         IcTQ==
X-Forwarded-Encrypted: i=1; AKwUvByUZn3EFBbU5GNKv+WuEeUOTHEypcKvDut4GHwTCo8ynKIRrlW9EAaEviiJh0zYVkGwWgzbS+T+qmSxBD1ISw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ/9BiwNbdUSSaijtmrRFfEfy3/bUlvUsZGS/JavpC9nEGbB82W
	KlmVAeXiz8lPtJ+RmSYj808zQ2WLMpIZTCx9lIJzw6jmOMemD2I9YUrA
X-Gm-Gg: AYBFou3tIKpdInlTg96loSPTAK9lv7C2bAXAuje+2ftZpWawOBmbK6YRVL6K7Izd6nF
	79yg8geIOtcE6MfoDrH66xwUoPYNoPsRGxgF7ZnUXfKgOdrHKyparjKvk1fbz52VszuXeg25VJW
	7NY71U/QXxLlTF3LGvunz6A4PSGggODUECvoUdcJFDHtUPDuIIC6n8xPl9WckZ+p04fNlX12ETF
	+CuGYlVLPKBbvS84Cg06NnnzDxt6dlzr8Wb3OG/aeZIpAmuuEDUg1zfC58ns1EfPkNaU7iNU0la
	gN0vOqGkVXW3z9HYonGonBuZU3qs5II9wSRIq0wU09qhdJVvJA80W/W/GYdFzbnkT6L+ehTBPRr
	S4kYz38DQVYRQ/sQwlqX3WaveaPo63elxodoqL/slcB6dLzqfezx5o3DQryWWP5FnLZPa1/Qayv
	gXt3GcfQ5fCuv8a3A+9WL1TTdmDTs2X47OtTp+ac/bDBTafmX3ct5/LSkDia+Fk/ptguBxI6P0M
	pm2NLZ8e0n2vSvGdxnQUKql/RN3Dpwyih3v4oSQuHQwItZjkLHOsWmwD48nKuatLkrW5L6behjx
	G/RXZPhEi/wp+w==
X-Received: by 2002:a17:903:38c4:b0:2dd:c100:4257 with SMTP id d9443c01a7336-2e842f11875mr181177615ad.59.1792123910214;
        Thu, 15 Oct 2026 21:11:50 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:11:49 -0700 (PDT)
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
Subject: [PATCH 08/11] ASoC: renesas: msiof: Remove redundant period constraint
Date: Fri, 16 Oct 2026 11:09:43 +0700
Message-ID: <20261016040946.521195-9-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_051153_038524_F79BFF51 
X-CRM114-Status: GOOD (  12.42  )
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

snd_pcm_hw_constraint_integer() is already called by
snd_dmaengine_pcm_open(). Calling it again in msiof_open() is
unnecessary, as the constraint is already applied and the second
call returns 0.

Remove the redundant constraint call.

Acked-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/rcar/msiof.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/sound/soc/renesas/rcar/msiof.c b/sound/soc/renesas/rcar/msiof.c
index 9fead9a22cdc..11a6f22ec0ad 100644
--- a/sound/soc/renesas/rcar/msiof.c
+++ b/sound/soc/renesas/rcar/msiof.c
@@ -419,19 +419,13 @@ static int msiof_open(struct snd_soc_component *component,
 		return PTR_ERR(chan);
 
 	ret = snd_dmaengine_pcm_open(substream, chan);
-	if (ret < 0)
-		goto open_err_dma;
-
-	snd_soc_set_runtime_hwparams(substream, &msiof_pcm_hardware);
-
-	ret = snd_pcm_hw_constraint_integer(substream->runtime, SNDRV_PCM_HW_PARAM_PERIODS);
-
-open_err_dma:
 	if (ret < 0) {
 		dma_release_channel(chan);
 		return ret;
 	}
 
+	snd_soc_set_runtime_hwparams(substream, &msiof_pcm_hardware);
+
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
