Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDBF7CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNndRxgd/HLJ5+C+zr0FwekVO6I5rKoiEjtUW63g2d8=; b=Ags8XRZXjMTHtG
	1PgSgM1+1oVV9kAMp3cFotucbnjin+jicdO+OFHnmAuIQ19xmVTQi/t+8IO7I3vFgOukg0Vs9PfqB
	hi81Js3bb3mx1B191l93iZNjLyyyV4GHKgQazq/UA2YOhkzjg/3iiEvCB2Dp7WD4wRM/wsAyZhYhu
	B9dtuoGVk8yJAnNuvFPcZbRHggwKmMcn/umWVSAVLTfaqshu0ra9SRiWC5prFL4/fPdfM/6OA33l8
	VqpyYF2TFbEScfi8KPJx/gjMfDJoNQTQTZr/K/w91+0M3M0NgAyGOfGwAcgZMOiH44sdXuvmJxCr5
	X3r/mQOPOIgSc3bl0MDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElbS-00000004B95-2RHh;
	Thu, 08 Oct 2026 10:43:58 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElbP-00000004B7Y-2DqL
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:43:57 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-351775aa1c0so1015657eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456235; x=1792061035; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YXFN+txE8KZkOhxhM5jNUs8Hv1tuj3AnGefbY7UN1PM=;
        b=C4Fpd4XC44OfxFihsmVB0Fh22boT4f69rP08WzXCFbPXu5oD1dOyyIGUBOkJ6YyHYW
         DbOWUjdDVkr544EaSrKfmStf7PWSnTrqZG/zktn4RCBY2SitEREeHo6/X6InLRBnWCYn
         UkagxCsNZzuMgEUKjYwCy9TTHE6WHDnbSrB1etRDvmKzWNsDazz6/90FVHmaNHkg13q+
         Cs51+XFoGIqIp5/zNViVe1o8DKgpVjGI6KkltoeCbISO3VIZMqD3P5SLg8aisxtrml9G
         DkNDGFE78UOJvpHHYMPw1/cGttQqpdCyVFTp3FYLcjj7XXZeq5mB8dJLfZn7jAUCON4R
         o8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456235; x=1792061035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YXFN+txE8KZkOhxhM5jNUs8Hv1tuj3AnGefbY7UN1PM=;
        b=uUJAZhg0l68XmUGXDOAg3xnOh+L0uafgEJGiQ35kwUMm39l6HsBbc86sqAtix71aBq
         rjPVy0BsM8SETGU0f0SBy+HX0pWi9wgv6bTuJtkAXWCOOFSa0yiyQqmB8pbAxBgyS/da
         qP51f21HL8IQ/30WTgwWZmgKOEEfBWFeOTAp54pGq4jJCSkWvfqT0/4dgeDXWdWIZasO
         mmMyJTZezTYp1l3Zu3/ctaONsEyTYlMYJ9Vrz+EO9yj7Ayw8KnSN+X68ylVJVZwglVvi
         VBUSWhzNuvRMrGb5fYoj3ix11d1/fGOQ4NferO8zKDPqiVdySw4LkA0rSMVyzz4czIRD
         HuQw==
X-Forwarded-Encrypted: i=1; AKwUvBw7FEHHoCRJteoE1fEYzSQUB2wUfm9nSAU3mZbXEa4vQuKRL0iQE0Q7D9RVeZm2Y6WcdIvfyYPqDY0MpVhgAw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKnQl1wKTUIIa4Q63hapsGo5uorBDniPdrnOsghBmxITO+ul+k4
	Ywd20jaM4zuo+28oqeHG2OeQ1KyvasD0qnL6e3WDzhFBQG5qc5wGqRi4
X-Gm-Gg: AYBFou3fGT6Y8rouLytf7Py4mH1HZ1RnmRpR139FIcT8hijzbayXpPlE4arPfYz6rlk
	nxFFT7+VSRZchDmwD8hQPhLm+1TMQ90ARd0BY/P9c+AcxegRhymd1zrFHyYBV6NJDnWTQr6o12d
	pVFdnq2Cz8BaRmjZ+lO+XwUou9VHTdSfNTU8aTZ7msK6rHBUIMdZGS01VqPs3v3WSqkxvGGKfw+
	1NZNugBggMzun/+UHp8/XCdXlyDdKUNPn4vE+tV3G5sLeJsSBD+P5tnzrw4G1miYvCxAebjcBzM
	1MsiZUFALyyWDxpFBnHF6cH0pUWskqM4AMMaMG7QBNj0orhg8Pr6tvHVNHymlqx8+NGuIq/wdn/
	fdzKp0riu4CNvL/HQzRCcrzz3I5lQGa7BHGRpMbsvGtCxDLI5vQeKafM+rHSJ7A9L1SgjMO/MnV
	IoXq3JLibIdITJTmGZmIi2UQiIwmcafN8APINiSPk7nJrnXxxNxCEaLjO/CkAYo6tkuw1Gg7b7g
	/yJknWLIPdKd9afRchuYwgQXeuuth3O6QiQs1vUsF2aWnJbS0uKyOmkd03aTNngW4U1eb2vnG+g
	PlLe6yFiuuMjoY2nc0HxB73LuA==
X-Received: by 2002:a05:7300:fd0e:b0:352:3bdd:423b with SMTP id 5a478bee46e88-3523bdd4437mr1444746eec.21.1791456234716;
        Thu, 08 Oct 2026 03:43:54 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:43:54 -0700 (PDT)
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
Subject: [PATCH 19/24] ASoC: intel: atom: Fix .shutdown() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:26 +0700
Message-ID: <20261008103831.542533-20-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034355_816005_59DC288E 
X-CRM114-Status: GOOD (  12.21  )
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
from sst_media_open(). ASoC only marks the DAI as started when
.startup() returns 0, so .shutdown() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 4889a8a73f65 ("ASoC: intel: atom: Use __free(kfree) for stream pointer")
Fixes: 6cc0f4e63994 ("ASoC: Intel: mfld_pcm: move stream handling to dai_ops")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/intel/atom/sst-mfld-platform-pcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/intel/atom/sst-mfld-platform-pcm.c b/sound/soc/intel/atom/sst-mfld-platform-pcm.c
index a4c8cbfba096..db1fb3b26909 100644
--- a/sound/soc/intel/atom/sst-mfld-platform-pcm.c
+++ b/sound/soc/intel/atom/sst-mfld-platform-pcm.c
@@ -341,7 +341,7 @@ static int sst_media_open(struct snd_pcm_substream *substream,
 
 	stream = NULL;
 
-	return ret_val;
+	return 0;
 }
 
 static void sst_media_close(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
