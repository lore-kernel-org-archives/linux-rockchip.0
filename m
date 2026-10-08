Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA79CA600E
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8iR3mfXCsV8/RIo1/nE90oUgJPp3O5OB9md0ksjwkY=; b=duTMURxEcdYfcj
	Iy5YhqXuUAc+d0hO9ZQPrsTdrUGZXPA11b+3L/ReN1rr3BV2ztvUrx9MSTQJDm/mIhyH65qVNBzj0
	e3DeO/LsiaO2wWglifo5hP8oTBYSFqSoIwiuvzBoqKUathNbbiFs8d2r/w7nMgL5yTAXdUoGfNTCX
	ajttpk8JGgVAG5lPLmmReQKOz6kFOa3qBFI3qIcm/ITpEeQjWNrRC5I5y24Y5TNFZc1KIrecbrRoV
	geVkZdaea6lSlXs166a7hjmKcxPlzCqlrH58+pG+CvopTlu5Uy0XprxhHxdPhl1KGDxJksWcElO0C
	aXnVyzS+bzkunK8xf6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYx-000000049zD-16U6;
	Thu, 08 Oct 2026 10:41:23 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYu-000000049xk-1j7d
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:41:21 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-3516c82e96cso2575373eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456080; x=1792060880; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K47qRPAQ198u1Fkbi+cWvMQCeIpB3dQGzP07geOfbJw=;
        b=drXuQc03dOIfzqTwEpkUuzF+0bhDl0JXcDt1a+tR+bFv6KLSQu1bny/zDUEo9ZVS4u
         yk7am8YV/m2+W9RSO3+/HCRe9YUTyJI6+qAjIKXxedXw/k+Bg5W+kgBaVU4jBCJgpMsW
         HBsgTqpXJeG36Zb8jDoUtradXn0oAce6GVjCZCKFLx6JErMF1Dm6yZhHtsCOAG9Kw0gy
         elnsYubEe9CquZ0xFeAsqW/Liwss0XmrYtzL3zRc8i+ZRICCS/rN8B29OqftWeLLq8Aa
         MLamjmU3G6dmsvXDwep/CrhRUzx16jEONY/n6vG/JEs1Ud5RBPTYgLYX3T7/FT+fbRRX
         oQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456080; x=1792060880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=K47qRPAQ198u1Fkbi+cWvMQCeIpB3dQGzP07geOfbJw=;
        b=n/YfGD7g2oIxD+NPEe+fPkG0lsvE/M+9dTGr92/d9zr/lPLBlEGpLzvk/OE+pd/tKq
         TXwMd+TATZv/iwUmApdQNRqW6tLjMBuDHlftoqzMoFIe/LKb89oyh/Ea5B1D3nsko2u5
         zmVmdhkvHn0lWy07ijlYJKwg4w0+vVxXT3/ltZt2cKy/dEcIjGtYzQDyoDEX4nJrGvRU
         /wqaktaGIONzzxkQXoxNPEujKpn4NoNXz+a7DNFe6lB1IUbd1vqrS3b9dlGn334Depy8
         HG8fWAEFE6Iub8ktE1Z+Lx5zxlsThqhBIpQE8R85N/47UbHjzsVVgyHnuL+Kuv8GJr/S
         I0QA==
X-Forwarded-Encrypted: i=1; AKwUvBzssjYdWN5TBZWzAIQMsdwD8wrvPtzBL0ZAo92/J1XrO1Ws29KArZ4/u37papp9LsyhyHI3p5pCWQPkuVmn8Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYK6IKHqaPY+03jkq68XDficf6Zb0jWxKLluPY5Sym1QWbvNiLsq
	w1vPbKXynW4zTdHGMxmHQksGgPGdFskZji/5QZbRvmrlNiPLyH4nto5Z
X-Gm-Gg: AYBFou2oU9gyclsExxI3Xp8/whv1ilG2j4QdxU2kFS1cc6t/a1EBNBjFGLrKIphTRwH
	bzJJEheEj2CLWBqt2itGUmlE9zolvgAfJjkWUL0T3V+sCs17zZD9BewqCx1MGRLv+3mGhNUhf3H
	hXLU251aZ3ZReWFJNK1bNzbVUeZbaSZYoX2tjwbQHiSPPRG3847qucJ68Q4/tnYYm/hPzg507aK
	P/ivhodryio4e3rSQq2wT7L69YoMlH1+JZt6NElhs4m+HzyBhHcBvuq8BiADlLjsh+Vs7qeTxOE
	WZsS1iGonajFoVMDtyzQ0LmUIjI5B4K+0rba5eMIiW8oCFNfd0ir16u6loNnYnOAkjCRqnT9nW2
	L4GWw1XTL9t+K9uHVQ0WVRsqtGFAQ4Cfm7U3mgoj70z82Lwht83Qs5+pOKKP/nT2OYEsbtPpgnw
	/aT+EEYkgO5lASttoQzpT3JP4yZeJT1W/2rhIBxOEh5SwBVzwA+kxN40JlZiYWDez2hEqOlfLJK
	1vu/pqNetq2A2BkoMlRkQ/0qMm175oF2f1efWn/sRkrcTv/xrhe1B1UX53DsduLOZn4w71eHZN4
	COeXOigXW3Gb7w==
X-Received: by 2002:a05:7300:6ca1:b0:351:4d2d:af26 with SMTP id 5a478bee46e88-3515d86f0aemr8805338eec.2.1791456079525;
        Thu, 08 Oct 2026 03:41:19 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:41:18 -0700 (PDT)
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
Subject: [PATCH 09/24] ASoC: atmel: atmel-pcm-pdc: Fix atmel_pcm_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:16 +0700
Message-ID: <20261008103831.542533-10-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034120_447101_16650A61 
X-CRM114-Status: GOOD (  10.63  )
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
from atmel_pcm_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 92dfa6198623 ("ASoC: atmel-pcm: split into two file")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/atmel/atmel-pcm-pdc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/atmel/atmel-pcm-pdc.c b/sound/soc/atmel/atmel-pcm-pdc.c
index 374f93fa6e0b..552bfa30d4ba 100644
--- a/sound/soc/atmel/atmel-pcm-pdc.c
+++ b/sound/soc/atmel/atmel-pcm-pdc.c
@@ -295,6 +295,8 @@ static int atmel_pcm_open(struct snd_soc_component *component,
 	}
 	runtime->private_data = prtd;
 
+	return 0;
+
  out:
 	return ret;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
