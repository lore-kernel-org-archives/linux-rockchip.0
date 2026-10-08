Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A96CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVnJdf95xDDxHIZGBTUVS1Npcv7Kdbno0tkxcu0Ho7c=; b=UiXWjVOvko8lw8
	fWju3WSL1jEmPjv6ZH/n6Pb8Aur7OeHE3YWPx8HXD9ywPTFOorqx4QkVtFPNFxN289Vc3qjDtYTPI
	E/cdCysdlImI6XX2XJMI3VhTPSqu1Bc8Q5cD0TNinc8rvHVU1a2ekBBc3dgwuiVJEO7hAcJQ/0kbB
	2muRsYtyN3H90I8VKrbNnDxMO4eA6BXEqby5i2ADN+ndbfbvdyjJHmvikLiDffhhr8AFn7gsBi2cg
	6BVmsHCMcZsYX+e+DO8oegisBZc21rRVVadt5EwglJ6aiDQr9puJuCTf0mASp1YB8B0a3LGhQmSDQ
	M8ZKjeuboAVeRwwoYsZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYi-000000049sK-3EFC;
	Thu, 08 Oct 2026 10:41:08 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYg-000000049r4-0GiC
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:41:07 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-34ceab2900eso4963749eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456065; x=1792060865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YTcgEknypy3JpI9J/G9mPIrbfMp+7I5/710LUj+4UxE=;
        b=k2MUKM0ZLBS5T2FubmMuStgLiMbAzDnGZ9RdcVFEq+OjZPSKP9P61bmk90L9ral054
         ycEw5zBxxIsHdk8qP+4ogONzV3Cdf/q4/VMpzuomM2Tt2/WTRMmE6dYPUXkTpfwcJzki
         h2dC2LoGocgcbEbCXdB4LOI6An9YRJLTrbDtihMS+BiY3pELlgIk/fV66vU+lEO6pe5s
         R1j2lzyQKkh9JvCW/4smb45zmsesVk+dAomnFPnlh8aOjvQM5qqVhDuggGOJmpr7Ns87
         dTTYLGTFyA0nX9BzNMdrTSJZiPmNXGj5bqQSTsDsqdWDf+/FL47kXAMo9wnfNcsVsw2v
         xWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456065; x=1792060865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YTcgEknypy3JpI9J/G9mPIrbfMp+7I5/710LUj+4UxE=;
        b=cFMIPor1yaJSvxLCxIW7O4c62kdkfF6HMmqrGSg7MQZ1SBttvC6BKOIGpOkAx+24JL
         /+RZ3A5vBxFPeg2qFWZG5A2kcn4CEcpnGPfM+YD9A+Sv7F1wBOHXAWMI23Fstlg9idL3
         svWnfHpaT2tAFB300cmCVGuaL6IeWFUUgpwfz/xx9Fjhcp6UzlGdqcNGT1Gb4p2paXsZ
         3xeuM3L4XPRTon813wOSUYIBJ8R2i+eIU75AajXYADEF/WmS0lmrd3CRnMzE2Erq7UoI
         NWXWy/HMTwEVfln23UgEQACS0yrzAu9rjOJed3ZWILiyAujHAVXpUitGUHDgjADqCSB5
         ZNFA==
X-Forwarded-Encrypted: i=1; AKwUvBw8MBFORQZRnlGOVhLC7YepWlWJNExsNUkb7I8QKYIzx3rfKVvPLcwyY1P2ZSf/mnQsjnMTQ2w3/9ZjvrxElA==@lists.infradead.org
X-Gm-Message-State: AFuF++lFaw20hacTpPdgKDLWdis2tVYJdAW0N5+HcJOeCv0fdjfWR+gR
	XNJpyixoDcouuU6BpgWDPUhDgkquldmzvC7QOvJUw3LDEfDv3ec83eoa
X-Gm-Gg: AYBFou35bX6mWcJUQGZeyAFs8MvIT0pGqgU3aG+keUaxcFVYe/PfE2clq3jczRUuK1S
	0fZWdorB+NkoJkrY+DdtSTXZXNypY/7kM2ABWwjmJYU1Xi6BI81c1hk7ZSXAgLPnuP13V7ovNA9
	DiWlaEFy4bwmT4O43E5LOENeR0IbwTVFDn/brZgsDULGGBFqVrnn5/S7LYDgwjnOVgZ3ss2jpWo
	3kzj2hITE39bvUg85EojvKHh8WV4IC7K0IQYADcXxknb66ABiNiH7QARHiFVI57uCFN5EnL/j2y
	VoHsEH2poe1umBo7TuEF4nY98lR/vRe8OBIF4Bh6OhXNup1VPHAtyJprmIloQJTR3gO+UbcFRFj
	Met6dWe5YqZyHTfGug/dshPHCjW5CZGYqzsf6jkbO7ekBpPbsAOpDDy7TN5R7GzbghobhJ3LI11
	U17epJC2kHXpA0U0nnS9CMzPucGevCoaMmKMCGP4HMUtsBmmo6p6fZzd1vZ1Y/VrLTNdYxfbfyG
	mkGJVJEpKAtD9jSNRDSh24GbK2BGUTQqQ6tf1MuweZpaYEkjDeMEyGLraoYyNNVhbHKS3Jui9J0
	6rLC1iBFjB43LA==
X-Received: by 2002:a05:693c:880d:20b0:34b:f279:2c16 with SMTP id 5a478bee46e88-3515db9190dmr5490986eec.5.1791456064946;
        Thu, 08 Oct 2026 03:41:04 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:41:04 -0700 (PDT)
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
Subject: [PATCH 08/24] ASoC: apple: mca: Ensure the DAI is marked as started on success
Date: Thu,  8 Oct 2026 17:38:15 +0700
Message-ID: <20261008103831.542533-9-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034106_107306_D0520908 
X-CRM114-Status: GOOD (  13.48  )
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
from mca_fe_startup(). ASoC only marks the DAI as started when
.startup() returns 0.

This currently has no functional impact, as mca_fe_ops has no
.shutdown() callback. Still, return 0 explicitly on success to
match what ASoC expects and ensure the DAI is correctly marked as
started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/apple/mca.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/apple/mca.c b/sound/soc/apple/mca.c
index be702b2942a5..3585432ad49b 100644
--- a/sound/soc/apple/mca.c
+++ b/sound/soc/apple/mca.c
@@ -516,6 +516,7 @@ static int mca_fe_startup(struct snd_pcm_substream *substream,
 {
 	struct mca_cluster *cl = mca_dai_to_cluster(dai);
 	unsigned int mask, nchannels;
+	int ret;
 
 	if (cl->tdm_slots) {
 		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
@@ -528,9 +529,13 @@ static int mca_fe_startup(struct snd_pcm_substream *substream,
 		nchannels = 2;
 	}
 
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-					    SNDRV_PCM_HW_PARAM_CHANNELS,
-					    1, nchannels);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_CHANNELS,
+					   1, nchannels);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int mca_fe_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
