Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFC10CA600E
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29Y+XiKWwvPcHhN9hP1A5H2TvBOw+7wMIZl8ZSR56pQ=; b=yHeNoODaG0Pcy/
	mvp7MIcRw2CxzzBOUkJfd05szh7Qx+2B3v4Ous4L+7Mhw0Wy9nGlrbXhTgdI9uc7Sa0QN/SLby8CT
	JCqwo8zYGCktdLaqJw5xQNtYAC11fRlNcR/PgOJ9PbEtqgdac/4LLUAIfIbZRA6uB9SqU+GxCU5J+
	NZ1r8FiUPFrq6DGOTDFsM7ZLo53Ix26CHEdwz/imVDFMLKrCpFXnmiCEOvUc4VGZP2Sf+DqW5YAkG
	jg0xIBwZQUr7c6lg5FVLHT5IACdQWphixbWl9E2SAhkbAV+gUSN35KDl/jhAhO/0bsWDjjux11lmJ
	uhBg2M+16kaqgP13e3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElcj-00000004Bfn-2a4B;
	Thu, 08 Oct 2026 10:45:17 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElcf-00000004Bde-1nWn
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:45:15 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-3518cbe59b0so252749eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456312; x=1792061112; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ew3yWeVvT9O5tBkIFDkvF2j0W+vU1/CnrAg2Miccmy4=;
        b=EQk8cmvJ8vt/c4jC9hB7A7Y7x8arRSivO5guZcPrmBmI3ppyrx4t0txusAB2OeaPuV
         6dDb/jd+pROPo8ZVjTwp1cecndQRp77ZiJ63hq6YmEeEro4UbBZWbtl6pt6mKiAu+h8L
         bpzpAAc1479ujD5nFPQA/pHBW5IP8yva3ev/4QmJb+yfFm7p3CHJUhcEiZWQUMnAchCa
         K+S6KjPzBgTv7jiM7XlgeyIl65PMSEppA6yAhb+Bvksy12AvxjkIG0/8BLjtKi6a7hAa
         eu0BaYVaz/Li3+w9WCKkijjwc5hIl7Dq+hmhZYpMesuJ7SMeFzJZg19pjJaRPN0ppnvv
         wvPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456313; x=1792061113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ew3yWeVvT9O5tBkIFDkvF2j0W+vU1/CnrAg2Miccmy4=;
        b=wwFaREqVOR5v7qrnWiFejK66guNtoqGBDU00nLsrGP6G661PIMQUtvEThXwINBqF3Q
         N/kZvP2+rWgQay2mKfzD3rgPzrGqJJXVVUnLnI/1S7vX2iPmtcggcYwD0koFQ5uXVBiP
         h3v3tcQIrXZ/A8w4uRl7QyRdiBEblVH/AXLjdb+5xrNu4BNk7wvuhJ0vFwQNSBPHSRlG
         AI/T57FRPgbFKZn1vzbueYaiJVQSak+kjdPEEzdfRHOXrsdIweL3KU5Y+ile19o4Fk1X
         OIO05OMUUMkB9INKHqkRyQWtjzt5gVD/U+1DmRYaQ6IyFgRS4aiz2U3kXiWfaZHEuuRQ
         /DEw==
X-Forwarded-Encrypted: i=1; AKwUvBy4t4c7trRTlC+65YO2QxZrjpYHTNtn6ZgPr83qlo2JwwCLudbupgHGK7VEr6xu/Tn7Fh3hMLojvIZWdLsqlw==@lists.infradead.org
X-Gm-Message-State: AFuF++k8fxV93GFqU+hbO6HciGrYVDvZf66cunSGox8l+5+vdxB6K9tK
	9AZgArO3SXW7w7lO+CynWCabJR5t54kAq6iNzmVfDNM+4ZREUpqgikJv
X-Gm-Gg: AYBFou37TGH4hL2HO5fe272zghcHl6+WTaswyTBE3CBaeTERUnIsQ1i4elAlDmBvVeR
	G3sON0X/XzXdYQceSXoRtNGcYq9uhw/CQaj2z1ojiR1NiW6z3EbmGFzvxmQMXzn8xXdfJxiQzAh
	SCHa3tgV6dJhWpj0Jymqx+CLJGkctnTjzg3k39RfOyYLvFuYJgVcXHKlJVU+l/Mu8Q+RpJy1b9V
	AC+xSYlefMcZjgt4DwSb2Wq/zdbPDq3OVOfDBifALiVE4K27OPW9L5NC1uTmqKyp5YZeVGc0gIU
	ehFMzKGcAgkDmyRSvVIPa4T3+B4cM7qFZ57aP/CS+pLgpet5kI4RUw+uGCOHV7SmbTegoelBsIx
	O1TuJVrn21JnWo7k0rdNVd1GAELnpzwPe0ThSs2K9nPUrGE0wvlNTRqXRdBkobOCsZdqdFYi8lv
	ZvHYvg9ofr2pQS02NJw8watzQl/zGIxvcOeoulv5aibc/zJb3ZudYH+ZEgE/SKExeOhf0cXYAa+
	rkqUSNVOSdAQM/FDnqOyuRDa8yDstedQz9r9ORTxLeEkTaIeCQNK4Q+paw3ShXCrT90wJN7JlN/
	Sv5ikHWrNcJMeA==
X-Received: by 2002:a05:7300:e9cf:20b0:339:851c:4c1 with SMTP id 5a478bee46e88-3517788c303mr2800571eec.18.1791456312416;
        Thu, 08 Oct 2026 03:45:12 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:45:11 -0700 (PDT)
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
Subject: [PATCH 24/24] ASoC: rockchip: rockchip_max98090: Mark the link as started on success
Date: Thu,  8 Oct 2026 17:38:31 +0700
Message-ID: <20261008103831.542533-25-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034513_471408_2D7B1462 
X-CRM114-Status: GOOD (  14.48  )
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

snd_pcm_hw_constraint_minmax() may return 1, which is then returned
from rk_aif1_startup(). ASoC only marks the DAI link as started
when .startup() returns 0.

This currently has no functional impact, as there is no .shutdown()
callback in the relevant snd_soc_ops. Still, return 0 explicitly on
success to match what ASoC expects and ensure the DAI link is correctly
marked as started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_max98090.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 426506a8e18e..d54c36682415 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -191,12 +191,18 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 
 static int rk_aif1_startup(struct snd_pcm_substream *substream)
 {
+	int ret;
 	/*
 	 * Set period size to 240 because pl330 has issue
 	 * dealing with larger period in stress testing.
 	 */
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-			SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 240, 240);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
+					   240, 240);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static const struct snd_soc_ops rk_aif1_ops = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
