Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 260A4CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQU9wDJe4laXZGVV9reJ/LJPaYKv0aYZ9gc4o0GKE8M=; b=GKBQhu5UKJ4s3y
	xCKP9bnnF6/bAy/b7oquV1pk7wD/FlziO/ADxuPBH7qMRBvlegaCLkshxqNKkp3PlXAjrCexjgJBZ
	jG+HOavj4hb/ZSVKxvppP0ui095M2S/1aRFxrkxaYbXrKZ2J2ZGp56RpjvZnk8byYwUTCgI5JTdJg
	XgROI3jFBK7bTZDhUdTW9fY8uevzaP+Y+s8tSj2B4o5QZ6ktNr6uXe1tgkj5otjRRXGucz/oJSQjr
	tfDalh35YD/BnO7b1Jf+poA6oit9cu2n7loHKbd8Q8zhqPzAAaKQzXXyx+qbRLi5A3EOnFpOogsy2
	afwylS2vuysBZMwkUZGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIo-00000001x8n-1evz;
	Fri, 16 Oct 2026 04:12:18 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZIl-00000001x7O-2iO9
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:12:16 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2e60f9af6e6so22926625ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123935; x=1792728735; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7AZDJdjhNuFXFYn0yeoBtoVorlOWOlf41UfMI392qg0=;
        b=cSOftT/LP9ehiGaf4qpmivnHHW/pzFgAxGepCZ1J2LDd4d0h4XbDtS7Md+M2SfOWtm
         8d99aZLNSOUGe8J02f+9xFtdkm4F8md/uc0jM55TFCvMplODnq9GR9iRkUs1bup6mOik
         JqnPuODj6y05C2HdJcVYN4jUw71p0i9pJ3zEZ6XrpQXP5nFer8GdD3BGxbwLz+2AGXHu
         AmAiNVD3SLjE7mndvHBcI8ZnFzYOPkEbgIWvnycMmngh3gGTa3pW3C7iLGqeX/x0C7fN
         5xLrj3ZsHH/zH+8ZtU70DzDN60N/YNLuY6CjdjdIjLbiebEWkotdM6lr+yLzsl8eQej+
         C5Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123935; x=1792728735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7AZDJdjhNuFXFYn0yeoBtoVorlOWOlf41UfMI392qg0=;
        b=OU7M6+MxZYNCLJ5ESFtf9GaWMd9+Q+Ve8p0j+uCcet9x71EORAoizUmjCiPeLiE9Wq
         qmI/Pu1HTXyTlEjia9jzT5fQYIgkA9eh/24bLZA/QEeaQQmj8YYEb+AmX47cItUjNoNg
         SnEunGCaUAMlQQx339/J1MueDgjE1WATQLVktLG9GzRN6DsiZXNUfLVNY/RRVWjzHSyB
         h95MzKJZtlcsEV/WIN2rtnCAq7pcCw02cfkFmp3pBMmDV5RDrZ/7s5+/75u+qOaRQqJv
         4J7N29G7zYSm4+SahMdslUAe1AMFCXFDZUC34GR6kJ26SyhD1L91b6x7oaBXqx3ogDyX
         6rzg==
X-Forwarded-Encrypted: i=1; AKwUvBzTznYN9s9NIe07QNZwncIt7px/OCar39uhcRmUlarZLrQs4TKaIV0ZDLCFqnGGfR4ntfyI1Sv4k9kDjFwdUQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ7JshRysMGimyeKt2P3jj0jxl7FOdWpYR6/VeXoG3zDfm3vikg
	kTjUw8eOny6l9fvzaVMR8nl7SJK8UE1j/v9h9QbrMwHWu2NVoSCZiyct
X-Gm-Gg: AYBFou3pTK6opHKwxk+EOhMlw8f17J9fvnDPkLcL/NXj20ybr7AZiKsG85Vx2Obv7E7
	8CFjOX038iyex6MNAfjYJeCAP9cH9sajg2S0dRRc6+cvviIJG053njbsFJlri2TQgoHOHQKT9XM
	97EIHZuVaenM6ahz1X61WPXuTgCEhdt2ayNT9jbAeqTOgyxRt6KI8PRinkGRTr6bMOJRObrg76F
	nQXdrV+e+cIl0brHXdwkYkUqWtQtbOuj/zhPBLTUQ/mbdInh6soiVXTpi73595IKLEYypGiTZIf
	aHumeGl8k1bE3Uf4GpGPty+VZro6GMl8KhcrQDlIahGx6B0KLofb8Apg+5buPYnP0KjaZP3hkzF
	QbzAw3S4D4kJQqv6b/Yqam+LZKt7nXkW80bT9muEjof3Efq8QSrSxpSoRFH7MT4EioRRkulwbiP
	1UNEt9LPAAt6lOWvaswiLS32UdKR+x4h7voyBCnZUaQQxhijAiK/EridkgwncZXtAYcMIpXMBQF
	c0bkI7tARFH2emstdJbDYGPv66egC8KS6OtieEUs3hpOqxp872JunAKxjmFz6eR0rJ9zZ/ig1Lv
	BbWbZa3V2sfpyg==
X-Received: by 2002:a17:902:f70f:b0:2e9:660a:7944 with SMTP id d9443c01a7336-2e9660a7bc6mr31481475ad.58.1792123934758;
        Thu, 15 Oct 2026 21:12:14 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:12:14 -0700 (PDT)
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
Subject: [PATCH 10/11] ASoC: renesas: rz-ssi: Remove redundant component open callback
Date: Fri, 16 Oct 2026 11:09:45 +0700
Message-ID: <20261016040946.521195-11-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_211215_700891_EB13B2A8 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

In DMA mode, the generic dmaengine PCM component already applies
the integer PERIODS constraint in snd_dmaengine_pcm_open().

Since rz_ssi_pcm_open_dma() only applies this constraint, remove
the redundant component .open callback.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/rz-ssi.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 9f36fe2c16d2..9a0781bb072d 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -954,19 +954,6 @@ static int rz_ssi_pcm_open_pio(struct snd_soc_component *component,
 	return 0;
 }
 
-static int rz_ssi_pcm_open_dma(struct snd_soc_component *component,
-			       struct snd_pcm_substream *substream)
-{
-	int ret;
-
-	ret = snd_pcm_hw_constraint_integer(substream->runtime,
-					    SNDRV_PCM_HW_PARAM_PERIODS);
-	if (ret < 0)
-		return ret;
-
-	return 0;
-}
-
 static snd_pcm_uframes_t rz_ssi_pcm_pointer(struct snd_soc_component *component,
 					    struct snd_pcm_substream *substream)
 {
@@ -1017,7 +1004,6 @@ static const struct snd_soc_component_driver rz_ssi_soc_component_pio = {
 
 static const struct snd_soc_component_driver rz_ssi_soc_component_dma = {
 	.name			= "rz-ssi",
-	.open			= rz_ssi_pcm_open_dma,
 	.legacy_dai_naming	= 1,
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
