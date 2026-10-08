Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E559CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9IL/Vl5gPvde4AeJsFIqh4ipkv/HdzxdabDitLLmAj4=; b=Wq69u6tKjyCRzT
	V3Yj6cIxIpqQnyn7MCZdmvxG0ziSNZD+zI+Jy77WNlCGftQDISbOCUxbGs97kMLIRHglI5BMH8XS6
	rXB1fqG/l3ewF16llabsPlDITePc3Zg3o/jXOHXN4W1t4xJgQ7X9AuJsrbrPZl5UxLYQ8RCott0B6
	pbojpkCIPmjYxnZNp8Q5B7jXfni1ldIzt7G6KNSLNOv03ElIu0odgNxVqtKA5kRy3jlqcDgd4Pgu3
	hw1ryq+zUM/oYRbi9LpvpvgqmnfkH7YusHvscwidcoZA5PodVUPJ+nWZittBOU0BF9pIaHX3PCdPr
	9lhqwAiRNGQ57kpATDcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElcB-00000004BS5-1MZe;
	Thu, 08 Oct 2026 10:44:43 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElc9-00000004BQr-3Oee
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:44:42 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-3282db206d3so800578eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456281; x=1792061081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vINDjRMMYaX6AakE2nE7lJ054HdL6sHwsDn4uy023fE=;
        b=lm7ojHWS2wJap9hydSSkB3vBZ1GzEYQyxNETnsk7nON39hJtRSWidIY+snfZEufL5C
         bQgijAwrYOqY43JZ4xc9+X+CUgyGgdMKWw7oWHeVlGJvSJohG8cFLkoTqcfPw+uEKEWF
         J2Vd15qv324n5KFQ2Z/O1M5IVjB/EsTD5KaOJ9ca9YF0HzWNHZ+uXaCZO3DngGnuTgbt
         FO4/7xdvFXERg6SiWgORNXkcoDuuR1RMb1Pid4apnXV4QZqG5QKxnc2DDYK699YJj4lL
         AEGHizmpiJGC0IpQI4DlUPWjRO++yKhZtFQnZr4/SCgLHWmJCh5uEStncKX2hwr/1ALH
         eDuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456281; x=1792061081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vINDjRMMYaX6AakE2nE7lJ054HdL6sHwsDn4uy023fE=;
        b=aON/5QCvoc8oMd34SVUQKJMsRNE2UYCveIMrT57XGI+5fmrLDZuIE3nFqR5UcjdaDw
         6cq84EwZFeutIDxHT1Iz0/DaFltqOBdBFLeevqhjviQ8CDP2RslKD64PtQGmgKwYWkpz
         LBBXkKjwa1B7GPSZBFbzLQmsX1LdbjMF/m9s1M4wSEH5Yc2OcYdbEILFiRMoYcNW1O/F
         KNeN5NHNPnaznxVvHGsKdu08x+QR2T9BJBSQmULjU0xLDpqYrAIwkIN4nNaCTlvPHEFX
         s5E8WK/eESVEsUKUCUiH3+XJIiiUhBXUl24B7n/GiGf7p8SUyeX/eMH5kfx3H3QWz4xp
         cjcQ==
X-Forwarded-Encrypted: i=1; AKwUvBxDUQtoNy4qNt00VQM7ge6I9M5TlqZWx35r7VvbhW1Ae98GvIfUTsnB9OXJbz0GjlBA3Ja4vxmwdJBhWHwiIg==@lists.infradead.org
X-Gm-Message-State: AFq9FYLvIuPCJocD70EAb+4i7Di809OLnuBJ3XIwhynWVn8UDTAwWe9V
	1rqL/ZS29hOanzsc0UuOm71pD90ml4rlWh+WdBq3cp9Zw/+h2cGHWH/f
X-Gm-Gg: AYBFou3qR0qPtCbbJZQwXXWbOD0ZhQwXa5E0htmQQb5vYafXXup1GTRNwlcMQ21II7Q
	0cqf+8Smhm5GZFM39ubd0zxPkSQqJDa6UheYe3avyI7UIFDZHt0r+r0jQJKYgrUvObHug/s+4Ss
	555zv/hqQYIbCcAUfeLJAwbro9v2C8v6id+yhEynQTW8wxfEdAeXOG7Fjj6pusPhkB+DhwPigFk
	cYPibe5aTKvBIur3ueh9ifDhy5jsm0bMg+a7GJuaN+rcfNHM+UQspv1pvi7uTp8mzSiCzgiWwRZ
	bkjDWCvMFGSb11SjLai83uzM2lFT8leQUkxSISpN4fIbJWJBC8dmF8nviBY3nv55g+IdlsxvUYb
	5cSX30bCw1i48PjmUCvzBafXtfwMUnKOTWYvZ+I6oSuSaCBY/6oM2+Wa2ONJnBYEzvMzziYDMlz
	I2t/faLdsUm/NnTBNnM2GeBJz7+Zt9OSgwSLAQ+89Z00+cqLaCeg2IP/Xw+UJnhW75g62xIirKY
	5SAkdJep+9HGCIzI192MmweS9MaOSNOIYBn7vYp02uc7rcnMc5GrVrBmdEdd/Eq0JFH6LxQw6dk
	BuN5bTK1NnZ6h2AVIj206O2P
X-Received: by 2002:a05:693c:8801:10b0:34d:861c:99b8 with SMTP id 5a478bee46e88-3515de37354mr6607922eec.21.1791456280856;
        Thu, 08 Oct 2026 03:44:40 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:44:40 -0700 (PDT)
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
Subject: [PATCH 22/24] ASoC: renesas: rz-ssi: Ensure the component is marked as opened on success
Date: Thu,  8 Oct 2026 17:38:29 +0700
Message-ID: <20261008103831.542533-23-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034441_855699_BA173BA4 
X-CRM114-Status: GOOD (  13.63  )
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
from rz_ssi_pcm_open_xx(). ASoC only marks the component as opened when
.open() returns 0.

This currently has no functional impact, as the component driver has no
.close() callback. Still, return 0 explicitly on success to match what
ASoC expects and ensure the component is correctly marked as opened.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/rz-ssi.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index b1587f499cb8..2e297f721bb6 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -937,17 +937,29 @@ static const struct snd_pcm_hardware rz_ssi_pcm_hardware = {
 static int rz_ssi_pcm_open_pio(struct snd_soc_component *component,
 			       struct snd_pcm_substream *substream)
 {
+	int ret;
+
 	snd_soc_set_runtime_hwparams(substream, &rz_ssi_pcm_hardware);
 
-	return snd_pcm_hw_constraint_integer(substream->runtime,
+	ret = snd_pcm_hw_constraint_integer(substream->runtime,
 					    SNDRV_PCM_HW_PARAM_PERIODS);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int rz_ssi_pcm_open_dma(struct snd_soc_component *component,
 			       struct snd_pcm_substream *substream)
 {
-	return snd_pcm_hw_constraint_integer(substream->runtime,
-					     SNDRV_PCM_HW_PARAM_PERIODS);
+	int ret;
+
+	ret = snd_pcm_hw_constraint_integer(substream->runtime,
+					    SNDRV_PCM_HW_PARAM_PERIODS);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static snd_pcm_uframes_t rz_ssi_pcm_pointer(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
