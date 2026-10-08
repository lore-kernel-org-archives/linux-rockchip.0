Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 992A6CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpZNiWAkqQ6ytOATA9FI33clbcyFc/mmw7Z71onsw+g=; b=rdrPLfBeBG2Ied
	9xM7DpoE0lIxQ8DwWhBPjxBK8Q5AqJ11dLbslL9q6+6bIQFTCBmIog5iOteJS/cG9P5FYG2BPURmn
	x7gulqwpMcyE+nikl3HkJr7kBjXuQcN6j7Ft+KtMWl/Yu/V1fzJnt4GN+95bKPWIZ+W6tuMdsaNAr
	nDRSkcywmyp601Ye6Y6w9m935rtbXIfse0zSkBV9UWjUJVPIL93o6xQ5lCqmzyu2iIIRJ2F4lt3X+
	VcLrzseSIUcXUxHkOZCG1iMsFlv7k5oLHvwK07cD0pf8od/r7WLq28xjTCBh4hCqbsYEREA/vro2P
	5+ozk9q+l+56I5V4L02w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElcQ-00000004BXY-1xMA;
	Thu, 08 Oct 2026 10:44:58 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElcO-00000004BWL-18j6
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:44:57 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-34ca2d54925so7792315eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456295; x=1792061095; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vuCt8LfoeVxeGP9EXdKyFEToJzhlOF5O+NhVLwPyMgM=;
        b=D2liA3Ulgmx8buHWzpFIZLHlDYJBUbPlcxeWF3ocZeT8Nom+3T7WvZFSJrmota4/Em
         FnA6TCyzP31/nQB/FCyp67OAjbiHO5YtdVqM05OTM9UvsfyG99GvttAHtC3JuNMgzymd
         2fjWqz3aeNc4D9H5zfOjLvgeAzmxs7VH2EXhqSGcq0MBmMU/00EQeLy4fzwO3AgSU57w
         R+3YB6LCVK7S2M2NHNlV81wBPwzJaoLjV6ZfO4QBCMhjwg2u8CECzUY/Q9xPy1L6JiVh
         sPe5CeEOjdx4tvMz94CwZqKr6i1pME6REE6F39rZ/wRSCCvwGQiHa+Kl3t2lGdwNQbJ8
         JnVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456295; x=1792061095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vuCt8LfoeVxeGP9EXdKyFEToJzhlOF5O+NhVLwPyMgM=;
        b=F+V1hr7ALmjmRoe2cU9KMTIuO2s6KZmow10IAAMwQve5gFUhY60qTm47L4TV7yzIIC
         cyUIyDAyOAU98DNB5D26jJ+7i5N2Kx9rHaLo5aVJvH8Ahpn0BmJb1r7eY21yCn7hTFsU
         5yIm5cVMZ++EOF6aw0j66VSxVAbMoPXEQjNCFr21nQCKPV8WdUJw598S2wgPlKzbd3UE
         NsH+oFVHsS/1V41XIueMo463+vJNuzbCsTojadG/PZ2HjG/VvvVm467GZgoGbYfWrlXb
         byHz54hDk5QtYMhKYXLqi1GIg2P43fz2tLrcZrxg4zdqTptbZKW+6fLN2CFRHhkjNElY
         ClPw==
X-Forwarded-Encrypted: i=1; AKwUvBw4STs4LnUBLBtPLXZKhgptWQQcSBI9lwiJ0cfLCSRiR06SdQVeYvNO3nOjvllfzQgD+4R0G1AFV59zJ8fuXA==@lists.infradead.org
X-Gm-Message-State: AFuF++kFhdia19v64fsk33vwaDE7BjWAFhkeSS8C3Rm+qJqhTD7gPPZN
	LFbWyvgMTCbCChQY+lWAmIRm8CZ2uhxLQtuYeGPqqeg6pG063FoqmPe/
X-Gm-Gg: AYBFou1BgxrLoIxx9oxq0MBtukcg1eNsT0EeesIEqISdqjYLk0vAcVihnPuAGu3CzaE
	/PUOdITUcu2+hegIHUuCHDJucj9iQY3cuECXwZVfFbSlNBNppwvSnpZdrxrpl+B8Fbd/gigCWoZ
	44BdFoDZ2MoB8befkakMiKjBFQGZuS45FiUFTOb6il7ySEi1pi+iORQlBgryvpYR3Clg0qS4GJr
	FhoIxI+OXF1qwblP5KQg5+pF+5w2zYbGZI1qdrlDjVg/0LjlWGt0AEtknrIfP7z2QUdF1SFk/SA
	Aek5oIk2WxMMQLRvWtHyBGfJe3TmXlxu+TcMWJY1bvcWCYe20m1avSYz6Lo7jppboQIecMizWWE
	tkDt5nGEhH8ZSlKkMKKYxmGTslCcfR5kgT2v+rxEIDMsUSysnZG4mpltuVd9QnOE+wC1Q0eT/Sx
	s4O7aMZSpaDv0VBV0BFnvlzfXswXLtk1kkH2UkfxRUnhmQDy0k5nnrcDG4TwCU7RPVthOYozRzK
	+tMSQxFjDMxnRCPbLUTJR3sdb+cjO509NvYUC5WvSLcYizvsG+CyxrDkB9/uzHIjMy46rFuVKmJ
	KZkhJ34xekRxoQ==
X-Received: by 2002:a05:693c:88c6:10b0:328:3944:ee53 with SMTP id 5a478bee46e88-3515da28859mr6112721eec.2.1791456295330;
        Thu, 08 Oct 2026 03:44:55 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:44:54 -0700 (PDT)
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
Subject: [PATCH 23/24] ASoC: rockchip: rk3399_gru_sound: Mark the link as started on success
Date: Thu,  8 Oct 2026 17:38:30 +0700
Message-ID: <20261008103831.542533-24-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034456_319825_7E849419 
X-CRM114-Status: GOOD (  13.07  )
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
from rockchip_sound_startup(). ASoC only marks the DAI link as started
when .startup() returns 0.

This currently has no functional impact, as there is no .shutdown()
callback in the relevant snd_soc_ops. Still, return 0 explicitly on
success to match what ASoC expects and ensure the DAI link is correctly
marked as started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rk3399_gru_sound.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 04e7bed8275d..0ec80a4b8c59 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -258,10 +258,15 @@ static int rockchip_sound_dmic_hw_params(struct snd_pcm_substream *substream,
 static int rockchip_sound_startup(struct snd_pcm_substream *substream)
 {
 	struct snd_pcm_runtime *runtime = substream->runtime;
+	int ret;
 
 	runtime->hw.formats = SNDRV_PCM_FMTBIT_S16_LE;
-	return snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
-			8000, 96000);
+	ret = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
+					   8000, 96000);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static const struct snd_soc_ops rockchip_sound_max98357a_ops = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
