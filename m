Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EBC5C77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 07:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Hxi7zyaY2KAFfshPSxyuyXox+Vt2lL+fIYudy0OE3o=; b=XKq7zrXAwos3gv
	uvoDOhXLsL6EhQGOS9hXVrFHh/xWaXXyOrPy+orT7dS83fD6uVmIoNxnskFsK/DfuBnU06RBGO/SO
	64nfUmg5Y1y7nHR4famI9+QMZye7Ejrg6G9gKHzo0nqy3QlQzclyf++vkYXvrnz0utwlxyv2Ul3NH
	gMgjFFwiFa3J6cfD7TI9dr8v7BLkHw7m50TYTWm+9XXkwXS0ge/9G091pwuntS+gjxR7LZ5Hazeyg
	exrhsbxly5KW6iu2YA74vNruskseNNr9rpPbGdH9wjWHoN1uG4nnwNmB8NHqW7USxEq0Tr4ajXKsO
	fwNr1t/691M6FGt5dUlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1j8T-00Ce1G-0G;
	Wed, 24 May 2023 07:42:17 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1j8M-00CdwV-33;
	Wed, 24 May 2023 07:42:12 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8E2276606E75;
	Wed, 24 May 2023 08:42:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684914129;
	bh=iHcb9BFc/X1bbxtUKpaxg5GTnEgeVVJ1yraooXSIn1k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J+8qeUL7wLbyiWwOGcaIp1izZ9pvs2pzG+kKXf9VtlAgV1aIEOY3nxevi9XfcUKox
	 OJYLHKoWg5DkHcg+7a+QJ2cYqYVkIu+fQSFLepbmnDNtTJ3Zd8d16JA/IdUFarzm47
	 X8RCPTHLDCeJ4b3zHJk4BIndaoGdwRhmmq3KMKL0a+0qdlaWxy8dfVlc7UH9yeoNeO
	 vZORLe//LBSSgoVn94ITNS7MyHXzs6xmatvyGP48TYxFNkwVTbYxxDWVLk4HT8n0MO
	 sgZo60pPr98ZANmyBLKDfNi+GXtIqw5rG3kmYjOFaN11/wzxgq+B7OtZsGRBwy7v7V
	 dcYJc7OARA6jA==
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
Subject: [PATCH 3/3] arm64: dts: rockchip: Assign ES8316 MCLK rate on rk3588-rock-5b
Date: Wed, 24 May 2023 10:41:56 +0300
Message-Id: <20230524074156.147387-4-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_004211_112783_04379D94 
X-CRM114-Status: GOOD (  12.88  )
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

The I2S0_8CH_MCLKOUT clock rate on Rock 5B board defaults to 12 MHz and
it is used to provide the master clock (MCLK) for the ES8316 audio
codec.

On sound card initialization, this limits the allowed sample rates
according to the MCLK/LRCK ratios supported by the codec, which results
in the following non-standard rates: 15625, 30000, 31250, 46875.

Hence, the very first access of the sound card fails:

  Broken configuration for playback: no configurations available: Invalid argument
  Setting of hwparams failed: Invalid argument

However, all subsequent attempts will succeed, as the audio graph card
will request a correct clock frequency, based on the stream sample rate
and the multiplication factor.

Assign MCLK to 12.288 MHz, which allows the codec to advertise most of
the standard sample rates.

Fixes: 55529fe3f32d ("arm64: dts: rockchip: Add rk3588-rock-5b analog audio")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 3e4aee8f70c1..30cdd366813f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -133,6 +133,8 @@ es8316: audio-codec@11 {
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		clock-names = "mclk";
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
 		#sound-dai-cells = <0>;
 
 		port {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
