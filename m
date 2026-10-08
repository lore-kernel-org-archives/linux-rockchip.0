Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0005BCA600E
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzxY7B2EzcIQQicS+BC0Q4gREfKrgYnxGppadkduB8s=; b=kpQIa98yfaO1WN
	HoUfKDb5iGQtVSacSFILjYd4K1JvvFyDOKNtdq7yFq3P6W/fZqP0g6P+Bl8qgLLDrfoTo+hUPoqQ1
	ZQTImy8mOevyxvAyeMrUrVdm3PC0Q3a+mGtoZt+4w4wP7JojIHd5tMASXE4eKKsO2eyAkqm95m3d0
	XwlraRsT1rgXHX3jnDkBInCte5HnxK2XcUsv6vxKuaC24uI0l2hqVXchc0B9u4b7d//Le1LzJK50J
	EZu66bDcnBvIqiXbzFv162NCLMWKpdG8XHFU38lP8yvuq2dFL/HBuoBdd7ufVS/S96ImHcrlueo/g
	SHIDca0lGu/PyJ1q71Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElaA-00000004ASZ-3fhb;
	Thu, 08 Oct 2026 10:42:38 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEla7-00000004ARP-1SA0
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:42:38 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-33fb4680717so892127eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456155; x=1792060955; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Uc00trQPX7RuBM3kvjd0hrBbedJ5QhnOwvfpAMsSqmQ=;
        b=Vf8pcKspfNY/KouXpRRXrU3hrIRTlROmvmvd17e6YuIbGwiw9rumPEcDLx/jEBsS0E
         v3R290oQF7a/U3D+wAspCHNxFyy51s5tFUV8EGUx36ngXDMGbhUOH26JF7FJzJTST6Ie
         h1XwXbtP4yqv2e0sulfqdS599TT/ubgWbUh/nHfX1h/rmXQ80puSaRGx/LdhV3i4MilX
         LV6jzEbRCzvOIyMW35cVjCdfckNMf8okHpqwaOoNPBbM/hrw5IIGSFdfqaxmgd7b1Vjy
         V9JjeupbzOlq/s7uK5ArHtxI668XskcVc4kb+fGZ5AzwiRRE4t3RswVZIJvwFt8TBstk
         gVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456155; x=1792060955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Uc00trQPX7RuBM3kvjd0hrBbedJ5QhnOwvfpAMsSqmQ=;
        b=oiaSd8y1eKEG7nHwWgtqz0oO9ZfVqbqKiGKIE64mCf7KIph5mexeq8s7HVI3dK55JS
         x8RM9of2rh9V+6Cb/xmKP6AO8CndSGdmauEg7CmhSrDcP1kxxMEUkb0rLIUJJbtU2Hi2
         O0SGJyWfRGz/bEawyeY+0+M0ncKcUeD9rhbfSk1nscoTaA9LbIk84czp9diuYDEY1VNt
         +EX5rh/4o3RbIsbTIYFhqpYcSvapF6gRTr1P3GaNGOBG6jsUESk1LdmfKsGbXoAhbPzk
         Q+KbqayZz8gllzMIhX26J+L81ZR8y2p1LEN2JxGyCKbv1wOQNY8+vIv2nK4kekhcY/rX
         WCFQ==
X-Forwarded-Encrypted: i=1; AKwUvByaH8eUIODCPeLwowbahhYnt1M1MEz6N3VjyyFlfOgMqNeAUuulUaf2/oVCU3IBm+Fmx+3ndKWT8p+gMmjCPw==@lists.infradead.org
X-Gm-Message-State: AFuF++kiOpthF/kyQJBYqdhUxusU3Qr/BSbTIbYEF34EzsieImFbQxg0
	SNRhliHwaTRKPZ3XcjQ4K0Trol6gTEiyfzsfo8YA40a4DeA5O/UosA8S
X-Gm-Gg: AYBFou0GZvebIEpjHWyB4Y6xqiNf0UKmu0/31iNdIJWasNlj3yRfacWVPZtcf+OOdJY
	QvVo8UqhAcb+FV4GIA6F/Jxu17WCda1zHPI2L6vYdya+RsBhdNKVoMa7Qo3PplqvHHcl4u+DfuR
	k+STW4sGLYYFgP0FFZlAkHEEpxdMG52Vy4aSsMv6/DdrLzydMP3WDjdr9BSCHLumMVTTDg7Luje
	lxP3ojvIDodh0dPTyhzhHTVDYeMGQfrP7307VUPcCQzt2YAZ0c3pVU6Lyx5qJPPa0q9+JM6af6w
	nEOLTnC/DQuXIJGrJMn94Au1DdqbS24I7v7qTqnk9QzIsgkrX0QaGhrLD/UhdjBQTLbY8CUVuOk
	dX+sW0NQAmtO/L2TdQSo9YOYAZAajaScz1gTRuNhmV0U+omq1GXM/F8eRkltRP/9/3Gn5vKS5wB
	BxbE/DgvMLdrJfIWo7NwrWoFz9mQlS0c8UloGq1Ojkqqd95ou1k7W8P9JjGBxi9RPGUI4HgaIEI
	LT7JQe4YgY0I/PTXYtbOObgyTD1gCH/2pmSpFuzpjFNkmZ51NOrWY8xbqytDwsblNp74c9cz1dz
	n1r0O5bXfmXaxw==
X-Received: by 2002:a05:7301:d194:b0:351:28eb:8cd8 with SMTP id 5a478bee46e88-3515ddee11cmr6279341eec.18.1791456154501;
        Thu, 08 Oct 2026 03:42:34 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:42:33 -0700 (PDT)
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
Subject: [PATCH 14/24] ASoC: codecs: nau8824: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:21 +0700
Message-ID: <20261008103831.542533-15-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034235_393226_70E1D567 
X-CRM114-Status: GOOD (  12.87  )
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
from nau8824_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as nau8824_dai_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/nau8824.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/nau8824.c b/sound/soc/codecs/nau8824.c
index 853eb9472af9..c89889aa420e 100644
--- a/sound/soc/codecs/nau8824.c
+++ b/sound/soc/codecs/nau8824.c
@@ -1061,14 +1061,19 @@ static int nau8824_dai_startup(struct snd_pcm_substream *substream,
 	struct snd_soc_component *component = dai->component;
 	struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);
 	const struct nau8824_osr_attr *osr;
+	int ret;
 
 	osr = nau8824_get_osr(nau8824, substream->stream);
 	if (!osr || !osr->osr)
 		return -EINVAL;
 
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-					    SNDRV_PCM_HW_PARAM_RATE,
-					    0, CLK_DA_AD_MAX / osr->osr);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_RATE,
+					   0, CLK_DA_AD_MAX / osr->osr);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int nau8824_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
