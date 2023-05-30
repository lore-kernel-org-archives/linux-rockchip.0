Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B04C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 May 2023 18:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Hxi7zyaY2KAFfshPSxyuyXox+Vt2lL+fIYudy0OE3o=; b=H5neIltNPL/XKl
	dncOtYpqIaeZtj1wsc7JlOKoKNgKdIKXCDPAjX/oP4g+4QGh6amwWIWDIGchPXyDQby3nxmM0Krsz
	qPNa2Cqf/QpYpmey9OdSrSQJ4iD+KADgaqQv5gB5AeI+6hw+n8fXQLn64rLs3EWnygXIMYGUqwxBE
	tkgk3k9u3V3wFj2W0iJLCbuT9Ginq2zNKU8nwBd4edJ/SceQ+LQQLMwLMHQF9flSFYgsh+PFA8taB
	vHvhy1aOkpoeF15SUKNHOhs5ourTYYCkqo0+csrciyBrcLGSbU2vWo7chfdbp0ghfD0qL8aKsJzVm
	qocHSSzPI7PbEaX5sTBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q43pW-00EqnN-08;
	Tue, 30 May 2023 18:12:22 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q43p4-00Eqbu-1Y;
	Tue, 30 May 2023 18:11:56 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3512C6606E76;
	Tue, 30 May 2023 19:11:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685470313;
	bh=iHcb9BFc/X1bbxtUKpaxg5GTnEgeVVJ1yraooXSIn1k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kVgtbEN3hqRjjWYAhVn3DNUVrLbzogAUD3ZcQ6srLv0f6+cM8SjLXGVgwHRq751qy
	 AgUnx+6VWIYyHU8oLQ5/WBDwbY/Z8sGpfUwOCuKp/2LH5EYVhEsRfBDh/X4tvdhXAK
	 FCABiS0A1FDOV/C7rJMrx8UdWqQvf6fPQeJI94xn6D091IxAsBvJYBFq5LLbo97eY5
	 f4csibbvqoXLChNyuFKbc/4iblvSsZhz+hY5RBjlTyE9Nil/Xz4qxaa47CLjFASdfv
	 xwM3QLj7S02aaP9MQ2X2T057l51nlM6kDQeyq0HtRfZJg5ovfDqT05zaL07SIavHbt
	 Oeov1kSSDiI/Q==
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
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Assign ES8316 MCLK rate on rk3588-rock-5b
Date: Tue, 30 May 2023 21:11:40 +0300
Message-Id: <20230530181140.483936-4-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530181140.483936-1-cristian.ciocaltea@collabora.com>
References: <20230530181140.483936-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_111154_670468_8A781BFA 
X-CRM114-Status: GOOD (  13.05  )
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
