Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A436C7EE2C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 07:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPlv6L5r660vZ4MCjJwpluqROgOm1nob4sBTnisKVdc=; b=rCLc/eElTJeYxh
	GBJSKVMZnTy/T6dIZOkW8V5cs3OgEQEzsmJoEpYd3wsWCad7kIgvXhwmhOAUhT2/3TI5pl+o7pPks
	RbjE4spRtEh9nGlAalSijfLwc6/tof28i4xT831n9xY3qHBcfFaWxrOEH+GQI8wBmioAsPxAdE9wB
	k5NadvMbU+DCGzUQsFEPw4jx0IYrdvXSCkaqF00ZVOuOR3TX8F8JFc80tlDrTCaUQIXP1GLRtHyqJ
	cVtaPxLl+PdSr2PwO8T7KdZWCeYewhhDASbHR0RWqUkFXprElVzfh1d6h7bJzhxvoPJDwh5qDRqMM
	jaWMsM9qizZmOHBvULgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1j8Q-00Cdz6-1G;
	Wed, 24 May 2023 07:42:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1j8J-00Cdtu-2O;
	Wed, 24 May 2023 07:42:09 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CE0296606E73;
	Wed, 24 May 2023 08:42:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684914123;
	bh=faNfSMxsboihf/E9pG9NmNCYt8187yJ11iV3M4yxj3A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fQkj2bN38h3Di9mMwX+6e0iyLG8XxNYkrqv0WHX9HQak78Jbs46ss/kXVOF+9PmPe
	 wbZk4DhZLsc4N1KDwZ06dsBy9g8j9KOt30+0na6+YYpBT+IIlRvyw8qnM+8SA75bhm
	 OCMw1nDs4pC6kblznJuR8I9UKR5pw0uP4HTIOrT57Ji/+U3wAKaR4LPj/BPAANgOKS
	 liUyIiql8a0BddF0uis/FYqY+BskTnpfuP+MOU2cuILvFRwz7iag3XqEpvUIWlLJtW
	 E7h+9yO0DphnPj+YrvWWTnV8lpK5B7WF10o1GPadhsn2CvWZhX8L39Xzk6DVTXU1DP
	 b3CcBpr8VaWfg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Zhu Ning <zhuning0077@gmail.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	David Yang <yangxiaohua@everest-semi.com>,
	Daniel Drake <drake@endlessm.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	kernel@collabora.com
Subject: [PATCH 1/3] ASoC: es8316: Increment max value for ALC Capture Target Volume control
Date: Wed, 24 May 2023 10:41:54 +0300
Message-Id: <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_004207_919379_ED1FB743 
X-CRM114-Status: GOOD (  15.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The following error occurs when trying to restore a previously saved
ALSA mixer state (tested on a Rock 5B board):

  $ alsactl --no-ucm -f /tmp/asound.state store hw:Analog
  $ alsactl --no-ucm -I -f /tmp/asound.state restore hw:Analog
  alsactl: set_control:1475: Cannot write control '2:0:0:ALC Capture Target Volume:0' : Invalid argument

According to ES8316 datasheet, the register at address 0x2B, which is
related to the above mixer control, contains by default the value 0xB0.
Considering the corresponding ALC target bits are 7:4, the control is
initialized with 0xB, which is one step above the maximum value 0xA
allowed by the driver.

This means that either the hardware default is wrongly set to 0xB
instead of 0xA, or the specs are incorrect and instead of having the
range 0xA-0xF mapped to -1.5 dB, the single value 0xA should have been
mapped to -1.5 dB and the remaining range 0xB-0xF to 0 dB.

Increment the max value allowed for ALC Capture Target Volume control,
so that it matches the hardware default.

Fixes: b8b88b70875a ("ASoC: add es8316 codec driver")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 sound/soc/codecs/es8316.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/es8316.c b/sound/soc/codecs/es8316.c
index 9e033fb320a0..773c94fd3547 100644
--- a/sound/soc/codecs/es8316.c
+++ b/sound/soc/codecs/es8316.c
@@ -115,7 +115,7 @@ static const struct snd_kcontrol_new es8316_snd_controls[] = {
 		       alc_max_gain_tlv),
 	SOC_SINGLE_TLV("ALC Capture Min Volume", ES8316_ADC_ALC2, 0, 28, 0,
 		       alc_min_gain_tlv),
-	SOC_SINGLE_TLV("ALC Capture Target Volume", ES8316_ADC_ALC3, 4, 10, 0,
+	SOC_SINGLE_TLV("ALC Capture Target Volume", ES8316_ADC_ALC3, 4, 11, 0,
 		       alc_target_tlv),
 	SOC_SINGLE("ALC Capture Hold Time", ES8316_ADC_ALC3, 0, 10, 0),
 	SOC_SINGLE("ALC Capture Decay Time", ES8316_ADC_ALC4, 4, 10, 0),
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
