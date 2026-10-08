Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2EFCA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4MA6lNpxuJIxqAjYnqVDp9fL4jF4fHRhThPBxONGP4=; b=TV654vXgD0tKIc
	m2QT5k3ZCQlT0+ydVMUpHCta4lldML2xmGQrpkaIRnJlGYYMYiWqY0icS7Wi5388F61sjXqkJKRHZ
	nNKvqfhXuT44VUKfCw+/smzeVZ8B7vcmWT5rsG69TLEL+jPKpDvdQJfQNyFxlJHgtMiQGLtEB8uUl
	68TC/cCKTC/9EZ0r8PMBQzebzn/xcIM5pae73ug5a9WPUUKGXuHcz7uTY61p0H1kQTjTDRz6st4If
	pnuFeAfzeaXQmLgh7zZnhzCJ1C1eoN5STpmWTP7FzXj7Y0eTSmp2SyWthVny/ZjE6vTGzv6BtzcEy
	p4ldkILzeIuw/tLP0hnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElbh-00000004BF9-3KUP;
	Thu, 08 Oct 2026 10:44:13 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElbe-00000004BDw-2dTX
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:44:12 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-351767ef18cso1965166eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456250; x=1792061050; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uLXKgERfdgngku3yQUE+LcMSxD8yCQ+a/l+GKCCFjt4=;
        b=gVM+ONs8HF0DYz+ubICnVO3UecYhK4G9F/pyHRrapy61tmaAQQzR5ifV7TDS90Njjx
         AjiiqfNQ57X0VPWYtB8UyOlBgOOuUobbXG3uafc6WYVSW1AtP7s6d1F88e5NdOlK63Q5
         D13uAVLAS8xa5DzoiY2AF6oIB/TaathEvs1ZMS/iesvsdELROON3ca2p0RTPMI2JLR2U
         e8h23HKwSRBYes8fH0tnxwnLUGzazPIGUVvGgAy0uW5VsdS5ZFB3nyKzodgHv7wkqOCK
         5oFZ50Aj+I1hWG6a7A/KuMTeD8FPY8hNCBrkqC8Bpiffw3RlJPiOWMyWBZR4Mz6IKWG4
         AHiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456250; x=1792061050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uLXKgERfdgngku3yQUE+LcMSxD8yCQ+a/l+GKCCFjt4=;
        b=goXGS2xG8X2viV+EmRac85tGvYqgGAYygyK/pCEO3abpw9Dsg7e4cO/zsbRQsNCzS3
         KlqmGhMMJ7RO1BLB/05hImLySFoKvdi40MCFO98XyBMjcFpqwYqpGg3rVoXGfIpsbz6E
         D8Bgb5/vWy3B/5MwliYq5KsXm3zzVEKxkA/xE4bX2xRPUWSdsqGlprI2duTx521ScqKp
         YUZRqeDdpZ7y4s2Dd3mCv9bB6suV32vcP5OIa1EuLoSn6F3J/uwD6lw5r/RnKS2IY/Ag
         BnlC2BXcS/XBfeQyZ5laT10Vh7gCxc1epQeqzoxxnIm16yXHXEOEJoZdNI/D7Yw7VJM5
         LtoQ==
X-Forwarded-Encrypted: i=1; AKwUvBxjl1+RK6J4HS1VYArOFh8sZKCnN0e71GTyr7hq75HmuMBbDb1r3Cs78cQF00MnemhD1ZEN+RAbZ8vTmS7UVw==@lists.infradead.org
X-Gm-Message-State: AFq9FYL9M0HTrrUofRY04ByCnLaxYP7ngWzzidTQxtVvsGrXDFf31Ytl
	Rqhyvm0XFkx8M+xoMha0AYAHKUDtR1XBOAPNCvHQ9pRtc0ttLNswkNLr
X-Gm-Gg: AYBFou1fQuUxS8kHhYKBJp5Fpu9srQRYUxwSN7lOzD4UY/LD4EkSubfvEeCBWlaBxd/
	TbnQY/W5nohJ1J14zpIViqq13ncOL2EK+PtXkCrxB7JX+/+rHaG0o6ranr02TSdyt/PafO+pAgn
	VfESFlx3uD5bpCRjsTl5BTfes+yekdhqk7K1YjCZIEHRzh6BV18FZLRm6Idy7NK3Gpq4OI4bUp1
	hkFDnX63bxd2iMW/kLsisY0no9+rFRVEVSiBDMX4TeOB3REZofWOTar881TUJP5cj+PvEwSX/oo
	SjaeWJTBX5B9qZO5pO11cj8Vw5pQDB2LlLNejavSlmHH3x91DKLDnxlroodFbS/82qvHXxxRTbi
	jHGLxncfnXAtPcSwNHZF7h0GSt4uacG2CHA0lY7kyG7RX/KgNxpnJIHv+6zungVQV1rtR5ONs4E
	VFtSIWlVOR/nS/xnHKq7ebzfqAMyScJGukCVw1HcWM4bQ45u3aqAIToehowLwil+aVCnIKQo8DD
	1HZLAWOZIZ8+AcMyI+iTZ4idKbwDy7yqg3UJ4OzjPWCza/FKkpmNBhjxy1oRgtCHplTe8Jdf6ls
	jpOtTNuHfHi/MQ==
X-Received: by 2002:a05:7300:d214:b0:352:2e10:10c3 with SMTP id 5a478bee46e88-3522e10401bmr948755eec.36.1791456249630;
        Thu, 08 Oct 2026 03:44:09 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:44:09 -0700 (PDT)
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
Subject: [PATCH 20/24] ASoC: renesas: fsi: Ensure the component is marked as opened on success
Date: Thu,  8 Oct 2026 17:38:27 +0700
Message-ID: <20261008103831.542533-21-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034410_669645_870B343E 
X-CRM114-Status: GOOD (  13.03  )
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
from fsi_pcm_open(). ASoC only marks the component as opened when
.open() returns 0.

This currently has no functional impact, as fsi_soc_component has no
.close() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the component is correctly marked
as opened.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/fsi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 23b7e63596d3..88618e4b052d 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -1811,14 +1811,16 @@ static int fsi_pcm_open(struct snd_soc_component *component,
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
+	return 0;
 }
 
 static snd_pcm_uframes_t fsi_pointer(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
