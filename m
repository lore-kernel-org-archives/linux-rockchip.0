Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2BA0CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bxmyjKimx8WcsYzMvCTuMYWE2JtpNi6pnVb0sRWt00=; b=iOiemGGIkaNgi4
	5PmUBlOOgW/CLKL7CNeVOKuBqa/rKhSissuAYmrG1585pkYOpcMk1vU7AWpevj4kCMokXPrK+ABGd
	Ts7nn+aEVD1vULGhCbzadmgDOIyceYyASWvZVmEoRurW5nTfE0wekwPo/Xt98kywXuHwabkQ7TwGr
	1ilBqUKd57dfPwBSJsIwbS27nOff/B2xc/TIHS0G9FziGTt5ub/Lz+D8A3QaYTF5t/4V8yaQseii6
	ocL+H1lBeEM6/c1p4ODz0L+/OFrBgJo1TNdb6dTAJYX5KvQrB7Lc9Jn9EyHOQdMNd6GG+UYaBLAkx
	TnDldGuE6WtaDKsd8b1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElaf-00000004Al7-2tuu;
	Thu, 08 Oct 2026 10:43:09 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElad-00000004AjD-0RDo
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:43:08 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-34ca2d54925so7790489eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456186; x=1792060986; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=T/ErUb+BYhJoBzVefBGuzS4rmfVbIr3TqgsBxZ+R3Yg=;
        b=nx9UKR/3bc+SElBV/YB637R9F8Z4d50cVvZNYstX80p8LKK43XGCnG/pvd/r5H8QmV
         xDvPjey4jWVUdhT3wEbHwb+86Gdh47RVHtOy+4BmUuWg1muF0BB3c+H2rGW8nbtYTwEY
         qf6UaMBeQE2yJHiEikZZNaN5WperL8x24/OSn0MkFFbT3EtJmMBNfRMegKylvTDB0jw8
         rjkxAqUi9H+9lfAoCy26kZwAOP5S5kUmFcR3VDBkBZc2Y0cmeCa3+lYtYqoYL7D37O+I
         wQWbl/Rm/bqjzQWLkEZ/KvGJgQzPZbhLYCrLBrRzlT6Yci8i4MGaNIL590REk6NfG6W/
         TESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456186; x=1792060986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=T/ErUb+BYhJoBzVefBGuzS4rmfVbIr3TqgsBxZ+R3Yg=;
        b=y9auiPEGQCLRT7djAnbAfDhtomspyF19xO1GnSEGgjOnUY3kuvjMvHEHqmyANe5NbV
         QxKINVQ+1vZNbKWXyiDSwmrZK0Lf6EBHOTLAVfwxds6WDdQ0si3k4WVUuaPghAt3DARC
         etN+5+Ervn8Xj4+Woce3BO19CgxrPA3HZQTXT0fUiq+VqnX+Nwf6/9EzhOaGz5pGHp1s
         +Ta+jtHizk0tBXzDViV+Ef1dLdz07qVxNV+7PPHgIvKON/NYUQbHaJFMJq1nA1hBSgZ1
         XJrLS/FkuAn4ZfgRtgSnDr5IIaw9TjvzycGi06Mi66zoSeg4pYL1sHL7+y56KevHYkbH
         bOow==
X-Forwarded-Encrypted: i=1; AKwUvBwrXvg34MZxdqlBSBtjVemZsHOfVLaTbV2HhUmgLV6gpcsp/ACtnnoPO0gYnrh7tO3MneK4PtWNbW5DkqmuqQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nE5JG0tNRuxqYezTmRxj5mtPcJmnQ9EBpGFJWVWrwr+TahP03B
	ssaO2FMltOQZiwKbPjTVsRqg390exjR/WeoO1Y98Q7Qv6qLUAfGEKf2n
X-Gm-Gg: AYBFou3DTwX4Eo0EKagEkBurSM4Zxqb8TcCmaNUXb1IsOLG8//M49FGRdVkAv+i9Xad
	fB+6+mHOFc4G19k7p4PMPmSQQOoWz6kA454vzcIoOl2N/1yiJfQt7WHd/JX7wbmYyfHMb2WPtca
	Bo5aX1Gdva+zFrvnOp5zL7ANtrq8Wz0eJqu/MilMkEZIsg+LJ+v3irq7kS3WrX7Hd2ykFr4azIo
	Rp2JpX8FpkdoVT+OJ8IqJdgUzSmGNd78NsGXgU5FBXMB02b9nrpcNn700zYR4sSkO+0XqycUtmp
	1Jm/h7CRK6HTqX76KA+zMiQvQhHSzsdHtjv6TBYn6ELy1NyzENGeBC9SAzaLdSJzgqU9x8WT+Qg
	rcnvcTYcfnX5WsTRIXSB9kCtmIjTBVxzWyg8TjdujjmIMhI9+y3TWzUktzB/WvwhdOYmh0HqHEW
	fvQyW+T7XoHgrZsoRniU5RVk9V2VrOAvwkCFdIswjbPzzPtpfZDbYzcQmxnenoWFU7rC91S4tvE
	CQVzPuWHZZcmhfbzaYC5fpLX3ZQvhvGcoyISEWXDPcs5ePaosQkl03psyDfaAAksnS/ZcZUidDJ
	GKaObrckQAMh5cmAaQBXNyTk
X-Received: by 2002:a05:693c:88c6:10b0:328:3944:ee53 with SMTP id 5a478bee46e88-3515da28859mr6108352eec.2.1791456186115;
        Thu, 08 Oct 2026 03:43:06 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:43:05 -0700 (PDT)
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
Subject: [PATCH 16/24] ASoC: codecs: wm8580: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:23 +0700
Message-ID: <20261008103831.542533-17-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034307_148896_4618AF2F 
X-CRM114-Status: GOOD (  13.50  )
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
from wm8580_playback_startup(). ASoC only marks the DAI as started
when .startup() returns 0.

This currently has no functional impact, as wm8580_dai_ops_playback
has no .shutdown() callback. Still, return 0 explicitly on success
to match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/codecs/wm8580.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/wm8580.c b/sound/soc/codecs/wm8580.c
index 9bc5d1e795dc..5343d445c322 100644
--- a/sound/soc/codecs/wm8580.c
+++ b/sound/soc/codecs/wm8580.c
@@ -852,9 +852,15 @@ static int wm8580_playback_startup(struct snd_pcm_substream *substream,
 {
 	struct snd_soc_component *component = dai->component;
 	struct wm8580_priv *wm8580 = snd_soc_component_get_drvdata(component);
+	int ret;
 
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-		SNDRV_PCM_HW_PARAM_CHANNELS, 1, wm8580->drvdata->num_dacs * 2);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_CHANNELS, 1,
+					   wm8580->drvdata->num_dacs * 2);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 #define WM8580_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S20_3LE |\
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
