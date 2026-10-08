Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90B70CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIUJ42v1AfUwGexYw//yPM3G8YmNa8WPdxHfWpJNEtk=; b=y1V+CLwh7q5xF3
	VceX43u/8NiNZXLtJXbS1vVFVjEGoUA8L33NWJ7b5JNTbfcyqDT/o1//Acy8+02ZCwTLxU3ji6TEK
	F6N7OJWa5lzgDhpk4gJ6As9nTiP+lRZjPUrDD7J6tpEnb2aRB31K1lnlRgTOQSDLIHSxJ68jAxvqY
	9PvbDmEtKALtOKUfen1nJtY+B2Q4eAOnzxJaI42kFKJSibfYHfSzntj/P+hhAFhWIgZwbK6ghPT+F
	Pdbz+Hupx84E/+PM6JYOcAyZ6kV1pkcPH12JHjTdQRHadUHYuS+7tlaJs2gAiy0kQNhXFCVlpPJAN
	HyJAjz0TjHkMpxkT+bbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZB-00000004A4q-24Tf;
	Thu, 08 Oct 2026 10:41:37 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElZ9-00000004A3b-1MAl
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:41:36 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-35120d43ecaso7721180eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456095; x=1792060895; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v/S64Lx6xVOJYbkzotXNTKtSzFgcjJur08r/Jkt4vOs=;
        b=ppBHOQ4qjix9Jv9O0CO1JM/PzDoaC6ou+HA10z7adDDrfxle3qcaPAGe4/6i2x6S6x
         8Gl78TV6NlhurKvBWec7Ssc/keMF8azCuwkGwwXMUHuTJ6Xs9/shXs176n/XkKjcyMaa
         sv0iCf/6nndBCPVdiA95RuKcwAMSOcU3xuCpsA4qiqcJA1/LbbgOsa4YG8GEhNO4n/QM
         UsAUYbELfVDId7Dfu5plxE4ezb3yThpT0S/2sCtrqjREi++Z3KQnxv9dmsV0J7R8SAJ4
         SBHJS4eQtb1HTsHRqMC3ilzJJUe8bzayvuoefJBD1L+PKFtHh8tyrQaOGKFQ7eMDmili
         GMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456095; x=1792060895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v/S64Lx6xVOJYbkzotXNTKtSzFgcjJur08r/Jkt4vOs=;
        b=wk1/oYNbZ7kke3tfgdO+LANladsMzrLdUWG8faJtVrGcKdw7yzf1Hab4Fnw52vkpJt
         eGlOdLXZzNdR/JLJMvpxZh9T3fSQVMIhZS0cJBpmM642FOdKkK7sl6HXE2fWoAPk7dkR
         DwUSchbjNEgiM2heV14D2o6EU+XyDHQmrTKgYWSOQuH3mROv6Qy9h7aoGDYEGChPxdaL
         K8fL4+jkmWKpTRh1JoKraMZYvcOr2MwZqxVB9tIhJsUtCU7HlrIeXLyE1WoVI2rARLPk
         6RNa1YG69qGM9iiQP+9STBIeo9+LYPPMVHwdGH+vJXvt0DBZnBSIClc3H72QrWToPgo+
         1EnQ==
X-Forwarded-Encrypted: i=1; AKwUvBzrghPylAl0c69sfSQ0MLJlb5pxfhmT1RU0jQbmfxQfiLx5bejJkm+fVuRT9nb7EhappAVwAI0TDk2oX7L5cw==@lists.infradead.org
X-Gm-Message-State: AFuF++kUTJIll/XhYRR9H+rcn4CrOHHNfPSFAtf5HhFwPIOlCQe7dn2V
	jdmY0z3SHIUbRV/pzTRUxj5kZ20ap2n/l00Dp/WyLE8wN7wiUoQ2fkHC
X-Gm-Gg: AYBFou3rXD8vu/52GzK1tl6g0wHF13ACEBGPDAgB+9Tkdt9jyRiRHsVTxD/vu044YFC
	lVEr5BWYilRTFwu09QRMO1MrW7IdNCDX39QzD8kZefCxw33R0NWw/MQZlVxu9RmjQWacig6TCD+
	g9kl1ZtNqNOJ5XEMvTNJSJahRasqGLzxfvOCuBAYc6KbmB9ZXLK2EER7+mTogGWzBkod2AMurwf
	sZ3AsgR6Kq1eBNvbGhdjSbyKpu+90AcLM1EZhGckUlG4d09/y+Yl/I8JQZ32NOvrIBM0SGBHHSJ
	vI/0SmitlqET9fTrly5TmXGiK09y46GfQ1PaSHjvpKfZiCKFSi8Uij3uvo3ikRlMUDhFUZLDYmR
	csioSlEQMPLJVu4NEyEcgnRpH6J//UJ3MRf00tl7g8ka89hthsvsUi8D6WTICSEK31H1zuAQSkP
	+0Ng0Fn+3YpUfwZ/UD5KIZZq5g9l+ZlPMWc62nYApd/p/hNmbMtNNDW7/odu46gRlrdaunrGUl4
	nHKsIwSZ4mnovyCvI3q/9oaZEHh+QSD9E9XYE4qDeMv7L56tsT5A4WoQ8ympjHhOUAdWd3bbkZp
	BH6U3uISjf/lsw==
X-Received: by 2002:a05:693c:895c:10b0:34c:7e54:65e6 with SMTP id 5a478bee46e88-3515db9c59bmr5695422eec.5.1791456094502;
        Thu, 08 Oct 2026 03:41:34 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:41:33 -0700 (PDT)
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
Subject: [PATCH 10/24] ASoC: codecs: cs42l42: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:17 +0700
Message-ID: <20261008103831.542533-11-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034135_390793_6825CCA3 
X-CRM114-Status: GOOD (  14.24  )
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
from cs42l42_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as cs42l42_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/cs42l42.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/cs42l42.c b/sound/soc/codecs/cs42l42.c
index b5d69d5516a6..f6e4bf6206b7 100644
--- a/sound/soc/codecs/cs42l42.c
+++ b/sound/soc/codecs/cs42l42.c
@@ -890,6 +890,7 @@ static int cs42l42_dai_startup(struct snd_pcm_substream *substream, struct snd_s
 {
 	struct snd_soc_component *component = dai->component;
 	struct cs42l42_private *cs42l42 = snd_soc_component_get_drvdata(component);
+	int ret;
 
 	/*
 	 * Sample rates < 44.1 kHz would produce an out-of-range SCLK with
@@ -900,9 +901,13 @@ static int cs42l42_dai_startup(struct snd_pcm_substream *substream, struct snd_s
 		return 0;
 
 	/* Machine driver has not set a SCLK, limit bottom end to 44.1 kHz */
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-					    SNDRV_PCM_HW_PARAM_RATE,
-					    44100, 96000);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_RATE,
+					   44100, 96000);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int cs42l42_pcm_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
