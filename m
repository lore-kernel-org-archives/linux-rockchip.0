Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A681CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ol9m4RT/blhB9UfH1p/2QRuXz7QGyGgJg1Stdgf7iBk=; b=aeevZ4R5y9UqJC
	pP9tSQmewMP22oJZpTZ9VHM/Rhs0nxS4W/me1KuMSGa0JQ9K49BAXWX9ObJsbQjwMA0DAyWHkrpDS
	LZ6iGbLJYgeJUUrQ6f8f8nRMHEvwN8pvpHAlMJs8Y0J3wR+NMWm3RqJnbN7hvrkclXdw60f5y6YK8
	QdHUKLFY4Sis3nTxdu2m6Yf+fVDGdpcGtMZJe5QHN2G3So45tjlZek8kk03gFNQcYllRQ2eSzh4HG
	kHmGB1A0Hf2/uqh2awg5iE8LiuGBSvN6+kjRS6KHzmLxsHWIL0nbxeYnBqMJ/flg+cUaQyfywoF7w
	0Y9Jkx1tW65AuFYS0Csw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElXJ-000000049P7-1Dt2;
	Thu, 08 Oct 2026 10:39:41 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElXH-000000049Nw-00wc
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:39:40 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-35154cb9de2so4039025eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791455978; x=1792060778; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yX2YDjC9CYpjnGWLfkYsSXKBPsqSscsCNhhIkMB+OUM=;
        b=YOMi9sl40GjgckaY0hddKVjxlxogdl4grr2jfsHeDHGIYcOsZPq7FzCG+RouzsOkDW
         m4EXLnwjwSx2tgE9riCvs2xDpLqrHaokuyxRvB7fNtZD+uFi/H7pNSPGaKDUUaYFaktO
         5i7PX2CljtTEtgfeKnJf63jdDZzQzOIM+JRQ7RqX2Q+nmIxLG1VM37cRbG/Hu14JJNr8
         hs5FUoQVV9dv8GuymbcCy+hUpuYFmRFuF7No/iKBqBxOh4Cvv9gtn9rC0owxCxke60NQ
         amI95Zf6ZTuURvqhggHS7T+DbvDEyfqHupnmTZo25wW0xD7rymxBG5q/F+9wU43c0cCk
         t5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791455978; x=1792060778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yX2YDjC9CYpjnGWLfkYsSXKBPsqSscsCNhhIkMB+OUM=;
        b=E9YvWsnfHIq1yg5rnUErVh3t/VydNeuQTYHGltba/AGC/LBCbQ7tBLZUeYKvNOxTps
         PqZqliiKd20AvKjSNbwgvfG+6sMos+EICo4Sr0uLxHgvn/THQaEejAQbGO6yuhKm3LkY
         09D0YWbglHKtdwHheEM/9nxaP8zW5F+oOqI0xeCq9CxnWUdYpZyt7E/vCLs3Fb9Vttfz
         cVAAnAqMyHxUM+f/CTATL8m/RGUwXDOdK36OKWMliFnzewo2MsetMUhd+fuqmm6pc6vP
         CYCsimtf5bSqUwMPNBh+uleZTOawYUN7tJduSCteMgUjdGvJ7qWYWax2TiMUKvt98MdT
         JHYg==
X-Forwarded-Encrypted: i=1; AKwUvBzjIZ8LNlhagrH4OdBM5PWyu0n60G2VdBtyRlL4aeIrnznlrZstFs6/deUc55yFPkMi8wlwWV3O7trp7/7eZQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJrdDZv0RKomiWCAuTQkEUQClG3URTRLQAXPBAdrRNTs68BoWyq
	oDKiGGHGKdV20f4W+GwVLG90LWrWSFUwAKC/yicKT889eWEzWDJRUO8t
X-Gm-Gg: AYBFou2dJi2zk/h8miT8XuaEUy+BA5HYRnVT3Rp95bNJbwFWkkay9vEnzWsAjHeatTR
	5/jwNjVCQtRdB1+fKyK9VAB3ROQdNdI0+k4dBNF//Ufvo6wfS0IPDZ8jZhcZ5cUm8TTbrg2BcYw
	pKOUX1ugMWafw/FgvGeiZ+9HuJC+lbyLL9mbEYmDJn80MYD8hKby51jxAoXp9BVzF0x8fS6hSil
	kSx5l07HJ5KUzDAR7B49FFmAH0snyWGEy04BiaM84ym+W8/x563IwpNjLWrrB+BVJY1n6tYUQoz
	PYc3DoSFRYzGcgDgN/NaTadJlQgejtLAu3zMHfcHK9bvyr64y8NJdolwAOOWsBWHzbGffc2KiTP
	UDH3Ho3uOn2lTnkYSb5zp9sZfGI8Z/uNpF+2L8LQ71MhnFM1wVL3AjP83sZvPp9CMyJf2974vvY
	pTcYLHVgZTUYH+Fjy/1MDIUQCVoDrihJ8BA3aQvEZmwRK5IEi0w6Nw22Do2gFv8AHHy4s6dFlwN
	mV9XsdJfcSMHakYYCyb/0r8io2arnWEejSqgH2SlwTYZC0lIqFequd1uL9/TM/itYb84CPnHcFB
	LlYArjWvdGDj0LajajeN6xn6
X-Received: by 2002:a05:7301:1e84:b0:350:89a8:5598 with SMTP id 5a478bee46e88-3515ddb2b12mr7231654eec.9.1791455977867;
        Thu, 08 Oct 2026 03:39:37 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:39:37 -0700 (PDT)
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
Subject: [PATCH 02/24] ASoC: amd: ps: Fix acp63_pdm_dma_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:09 +0700
Message-ID: <20261008103831.542533-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_033939_220326_7A458E18 
X-CRM114-Status: GOOD (  11.99  )
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
from acp63_pdm_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 5137305662ef ("ASoC: amd: add acp6.2 pdm driver dma ops")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/ps/ps-pdm-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/amd/ps/ps-pdm-dma.c b/sound/soc/amd/ps/ps-pdm-dma.c
index 04c014349347..28e0686e9373 100644
--- a/sound/soc/amd/ps/ps-pdm-dma.c
+++ b/sound/soc/amd/ps/ps-pdm-dma.c
@@ -211,7 +211,7 @@ static int acp63_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp63_base = adata->acp63_base;
 	runtime->private_data = pdm_data;
-	return ret;
+	return 0;
 }
 
 static int acp63_pdm_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
