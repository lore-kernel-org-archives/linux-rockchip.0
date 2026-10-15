Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82CACCC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AmLU5Qo6y6BO8TByqc1e3VdvUjRP0/l6xXre82jNFo=; b=yghPv7x9O9+7no
	oh9GO0I5mcKQpd8mhMEqkOpbI07r7VSirIQz5H5pq8HgS/YCY0dJHUWDD7lQV6mQopmAd5cffBhIQ
	QvRqZ/x/tvIEscBItbW8z7q1GgMlRE80kVG7Fcx2byP+gJoxhMoRENwxaH4u07jmIXEm6yEnvfTGv
	LZivzZddXk9Zs1XAhUF4FbtcRsCaolWJ2K+OJvxiz2haHXdhRDfSw2F76lJLkSJ5kl7ogbtKiDjQO
	Fi0t++fFG1JjWbQQ/SmX7B2asFnsnLwm7UQtNGqxNC+4Ggc69tfY9mEEgEGn9gJc3IbfultUhNzON
	3ThLEnT90d915xeKvfHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAYQ-0000000GbhG-0t70;
	Thu, 15 Oct 2026 01:46:46 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAYN-0000000Gbg2-3NF2
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:46:45 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-cc147d86bebso2616110a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028803; x=1792633603; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tNKaoas0suhXoNZM631qYPKJn33cxyMQnmMBR8n2e68=;
        b=fqvyvym64+NiguqYXg4X7B2d+upBIU6Bf5YNaKVnWFCQH2YD7H1yfcM/7IvcK6avMZ
         U85KvonqWqGn6qTaDzIINxCYGPKkaAltPMRL0uS3LJuKblFX6ohw6WOhzegsg/HxHjoD
         J7Qe75Ib6Mf5AOaHQhJI23WN2f/RUw/g1Lm3tskSHMfOK7PUuVGdUxTxVNmBzXpKkqya
         7XyBY8H5Iq67pK7tmQkdXFR3moOAWuKkjv0gyg7xBvogh3XH2P2AIQ1c15hyFi/byfle
         noQMewgIq+gc9aStU+R62AuOyDlwrgCG4QNigK1MULjUmVNtFNoBIZT00hOpAOmi2JKZ
         3Jog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028803; x=1792633603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tNKaoas0suhXoNZM631qYPKJn33cxyMQnmMBR8n2e68=;
        b=nEpwWKCUJq1IQ1VtAWOQNStHnAkjYzMxfN10pIGcEYI5RlbzrMUnmdaXXzhEIvjUOD
         GwMYY2eg04Z14JrfTa6/0OJVc27ZK3VpmxSTMUi9HSK998w12fitr/ydXsyGXh+4qKFq
         oXYgwgMGwv9ukXPtsPMvuIm/jRy0GwEOZuWt2wMlSCJHhzbOThwOfE6NUVwQcl0c+Slf
         8qE15X2kmKZ3eFB+VGwBFvyKUFRw7kYmOE4dcPm2cgT3LSkYUuHd3sMhYIMxLAvNRtcU
         aufLJstETiSfa8MbQ/I/sWXjYB4qQdJVWusaPYgDGqDhW5ZdMuZbqGStgxafmRtifyzM
         fSQQ==
X-Forwarded-Encrypted: i=1; AKwUvBw7QPzQbjxgVrI+gdLVrJXUlFwfwG3o2b+Af3kNnLnUO5j9/jQab/gkzgbWbCCo/A57FhorjVV0+Boj9SJdJA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKCMbh9TYVUaCSxYbS68VINzCLEZpv3CN+I2sqHBn3grAowMnKB
	xoMVwuxKskGtekCoNAO3ba1REKeQOV87JnY+K5qNYG5bw24jVkJQ0rIb
X-Gm-Gg: AYBFou33JaCt/o/Z/FzsUvHVRRnO6LrZvGPLc7Y40UCzIUFGzGPlEtL7HnUtNdIv/Ea
	9lsRw5Oj5M2GsDDoCs4yeXmi5VDsnnWukLgyLxUzoeUL1lCLt9SQ0zYvO1mmX4Me2QBCVMBWBEv
	cXHDxQn8j9u+z8QPQl0S17VMB5gFDzTwUdGMElI4fH9Kd9GOHjfARQjwSB+96NHghFVzulnjgrW
	UfZtVymwVALPbgpG8CpKdASIRmcgDDEeTbLGb15y8rXRxLRLwxy0QK40AtbOgZHcFzRhp+P2/YD
	AKaMHZNPVv8FLurWU+99Yml0NskP59iH6h4TgbgHyNrX/KbfIdKY7Gevc839JjnmaCovWCQQKvH
	rCFjzjrqZuM4RQSnNKpo9LTwL56rpEDz1nehpC0rr0GpRbH0DZXCtcLFEOqAnolSAeGc+m8EEWk
	AmHHJgBeFTNoyfkwXMxDY2N7NZGA41VxqyoMIAtwn0tsTMlQOS/Fm+hAaGQHYBmI06O8gSqG8AB
	CL6YpQDCk25R3cKf/C+GYWSKRftViwWpbAXbuzQ0RnVQMr9t8qd2/3e1sgDFZ2PTy5a2E4i693j
	NM2cSbm8wAGWaQ==
X-Received: by 2002:a17:903:37cd:b0:2e8:5857:b5f4 with SMTP id d9443c01a7336-2e85857ba34mr106063185ad.10.1792028802766;
        Wed, 14 Oct 2026 18:46:42 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:46:41 -0700 (PDT)
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
Subject: [PATCH v2 10/25] ASoC: codecs: cs42l42: Ensure the DAI is marked as started on success
Date: Thu, 15 Oct 2026 08:43:09 +0700
Message-ID: <20261015014324.5569-11-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184643_841689_50D996AB 
X-CRM114-Status: GOOD (  15.11  )
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

snd_pcm_hw_constraint_minmax() may return 1, which is then returned
from cs42l42_dai_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as cs42l42_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/cs42l42.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/cs42l42.c b/sound/soc/codecs/cs42l42.c
index b5d69d5516a6..18d6cb9bfa2c 100644
--- a/sound/soc/codecs/cs42l42.c
+++ b/sound/soc/codecs/cs42l42.c
@@ -890,6 +890,7 @@ static int cs42l42_dai_startup(struct snd_pcm_substream *substream, struct snd_s
 {
 	struct snd_soc_component *component = dai->component;
 	struct cs42l42_private *cs42l42 = snd_soc_component_get_drvdata(component);
+	int ret;
 
 	/*
 	 * Sample rates < 44.1 kHz would produce an out-of-range SCLK with
@@ -900,9 +901,18 @@ static int cs42l42_dai_startup(struct snd_pcm_substream *substream, struct snd_s
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
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI is correctly marked as started.
+	 */
+	return 0;
 }
 
 static int cs42l42_pcm_hw_params(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
