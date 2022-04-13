Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BDD1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B463Nv+6I3/lyQsEc2FYAlV9u2pARbMhkzF9282cQsE=; b=sYr+yVNcaXT9tM
	Hhx0v4ZNcANinsEs0RGhuDha5p7EhtbSHrQbPOdrmJu5Mok1lTgyMv8Q89m0C2lO6cAsXi7eQ1MmQ
	TqlzG3IghVkkDjnw3e5bqoVvar2kLNcIB4EKPdwdxazi5aeO70iV36ltwEg1HAUjTsHZ5mmk0ZbbX
	THvTDFY0FUIDcxvt1mKHxmvUyzoZj5GqOVWV7z9Ge5P4U8VFZOayDCCrAKXPVYSr+I7z9bpl5ym1d
	tU5sXihcencB3saYz/AK6xnp5OgMeGIGPIUMTdTOS3BeEuO0VCuYWz0b/9aIsPnRfcpsJ0AF8HIvN
	aLebMvaKNqhvGhQtF3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nelPY-002sKv-TZ; Wed, 13 Apr 2022 22:24:28 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nelKu-002pzw-KA; Wed, 13 Apr 2022 22:19:46 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id E12FD5C0325;
 Wed, 13 Apr 2022 18:19:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 13 Apr 2022 18:19:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649888379; x=1649974779; bh=Dm
 EyWFCtmS1CP/NJfSjamUUamIi9FMNiWBV0XLSX5tI=; b=mk4goxXUJrAIBWW089
 dPCf4FzqENNN0V90qnVFG3Nb+06XXWnUrXuZ+EZ6KlLvmQlaXV9aLyBEheUsB0ew
 L5IA+VDexu9UDz6dGM6mmgxkKvzzLYGjP3cMHo+hVZIF9kC4V64sjU8qx/jOcs5L
 jlN3BOhlSz0a0f8q0SsMtOtEcWU+yNnikHz1LQO4RRSxkHIRCE10BA5ek86yu7kT
 YGh49nlDZ1paW0U8O6XzmoK5UGs8+a9UjY3n4SLqsWmX0JGaC9H0+lMli/eqGBVM
 cVPioWFJsFXzAiGrvp8NspW1xYpvIJB3aadgENPWLfBujOblEA6ajcicj3TfRgLF
 hqAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649888379; x=1649974779; bh=DmEyWFCtmS1CP/NJfSjamUUamIi9FMNiWBV
 0XLSX5tI=; b=p2cP5wLcgSeBDjXtnvHzgbPSPk4yR/i4fCkA7ZcCtNYo63XOpfs
 MCD6IQpVv1+Dvi4dKKDfk+b8QKvo5zbtk2n5xvgts/v2zX/asrYoVUsHHdKl9HFe
 JMyLH2eL4Wed7wNTe/mHykvgiIexwOTkhsl1xC7ch91CbBfLRCmRojvmG3ULGkcE
 81bnvhj5CVzIrQwrXEOlTtS2CmAek3tdrY1DYseSt/Qy+M/F9XzVk7cV+73LN0j7
 LXhmz0c/y0R+OnY/q2gBsADIuhWFUhCq+nKEuOlqY/X61x3YGdggRtcCqiea/L4Y
 VKkfy76tni9n76SXAE+h/l2bjLPG34bnGXw==
X-ME-Sender: <xms:e0xXYpjNv2TLkCAN0ztJaT6sjH0fDjHeSWwRgq_8nje2n0E-4CXSeA>
 <xme:e0xXYuA1d9jB5klSZr1FdEyHfvv309eMymxBGGDuXDDUVMl8Svxj6USb1PY_LOwnO
 U9Nvh4-v13Mf3-zJQ>
X-ME-Received: <xmr:e0xXYpGICScmidQ751I2zEVrgcmICfg6GMyBfWFVmwA4NSdG_SSJVW4ZF3YVPdqqVfbKCrk3Q3zrObvekNgB92Bf0ClBbd64y4eR_7JRVFpMsTYaJ8D4MXSGv7HkmLBXl7I9RQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:e0xXYuTXUBj21HJUYOB-GkPGdH2BjGFLMzboDNKacR4CYk0gUm7Qvw>
 <xmx:e0xXYmyI1vbSLz3zB_qRDsWiicF3jx1qmWkagTmuqc2TQMt7Hjvyfg>
 <xmx:e0xXYk66X8RQzFm7TlNNA09AZOUb5UYkDxuG9gepNhfvI8YvI7bfeg>
 <xmx:e0xXYtiVbAlbtckkQb7xm_dem_FoAspGpsqPLzLzjpUQX9jP50CS0w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 18:19:38 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
 Alistair Francis <alistair@alistair23.me>,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <x@xff.cz>,
 Andreas Kemnade <andreas@kemnade.info>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 09/16] drm/rockchip: ebc: Implement global refreshes
Date: Wed, 13 Apr 2022 17:19:09 -0500
Message-Id: <20220413221916.50995-10-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413221916.50995-1-samuel@sholland.org>
References: <20220413221916.50995-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_151940_807003_915E6982 
X-CRM114-Status: GOOD (  16.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The global refresh mode is used to initialize and clear the screen.
It is the most efficient refresh mode. It uses two pixel buffers (old
and new) and a frame count. The frame count is set to the number of
phases in the waveform. The hardware then looks up the combination of
(old pixel value, new pixel value, frame number) in the LUT and sends
the resulting polarity value to the display.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/gpu/drm/rockchip/rockchip_ebc.c | 48 ++++++++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_ebc.c b/drivers/gpu/drm/rockchip/rockchip_ebc.c
index ca3173b28d1c..cb6dc567e94c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_ebc.c
+++ b/drivers/gpu/drm/rockchip/rockchip_ebc.c
@@ -127,6 +127,7 @@
 #define EBC_NUM_LUT_REGS		0x1000
 #define EBC_NUM_SUPPLIES		3
 
+#define EBC_REFRESH_TIMEOUT		msecs_to_jiffies(3000)
 #define EBC_SUSPEND_DELAY_MS		2000
 
 struct rockchip_ebc {
@@ -269,8 +270,23 @@ static void rockchip_ebc_global_refresh(struct rockchip_ebc *ebc,
 {
 	struct drm_device *drm = &ebc->drm;
 	u32 gray4_size = ctx->gray4_size;
+	struct device *dev = drm->dev;
 
-	drm_dbg(drm, "global refresh\n");
+	dma_sync_single_for_device(dev, virt_to_phys(ctx->next),
+				   gray4_size, DMA_TO_DEVICE);
+	dma_sync_single_for_device(dev, virt_to_phys(ctx->prev),
+				   gray4_size, DMA_TO_DEVICE);
+
+	reinit_completion(&ebc->display_end);
+	regmap_write(ebc->regmap, EBC_CONFIG_DONE,
+		     EBC_CONFIG_DONE_REG_CONFIG_DONE);
+	regmap_write(ebc->regmap, EBC_DSP_START,
+		     ebc->dsp_start |
+		     EBC_DSP_START_DSP_FRM_TOTAL(ebc->lut.num_phases - 1) |
+		     EBC_DSP_START_DSP_FRM_START);
+	if (!wait_for_completion_timeout(&ebc->display_end,
+					 EBC_REFRESH_TIMEOUT))
+		drm_err(drm, "Refresh timed out!\n");
 
 	memcpy(ctx->prev, ctx->next, gray4_size);
 }
@@ -289,6 +305,7 @@ static void rockchip_ebc_refresh(struct rockchip_ebc *ebc,
 				 enum drm_epd_waveform waveform)
 {
 	struct drm_device *drm = &ebc->drm;
+	u32 dsp_ctrl = 0, epd_ctrl = 0;
 	struct device *dev = drm->dev;
 	int ret, temperature;
 
@@ -334,11 +351,40 @@ static void rockchip_ebc_refresh(struct rockchip_ebc *ebc,
 				  ebc->lut.buf, EBC_NUM_LUT_REGS);
 	}
 
+	regmap_write(ebc->regmap, EBC_DSP_START,
+		     ebc->dsp_start);
+
+	/*
+	 * The hardware has a separate bit for each mode, with some priority
+	 * scheme between them. For clarity, only set one bit at a time.
+	 */
+	if (global_refresh) {
+		dsp_ctrl |= EBC_DSP_CTRL_DSP_LUT_MODE;
+	} else {
+		epd_ctrl |= EBC_EPD_CTRL_DSP_THREE_WIN_MODE;
+	}
+	regmap_update_bits(ebc->regmap, EBC_EPD_CTRL,
+			   EBC_EPD_CTRL_DSP_THREE_WIN_MODE,
+			   epd_ctrl);
+	regmap_update_bits(ebc->regmap, EBC_DSP_CTRL,
+			   EBC_DSP_CTRL_DSP_LUT_MODE,
+			   dsp_ctrl);
+
+	regmap_write(ebc->regmap, EBC_WIN_MST0,
+		     virt_to_phys(ctx->next));
+	regmap_write(ebc->regmap, EBC_WIN_MST1,
+		     virt_to_phys(ctx->prev));
+
 	if (global_refresh)
 		rockchip_ebc_global_refresh(ebc, ctx);
 	else
 		rockchip_ebc_partial_refresh(ebc, ctx);
 
+	/* Drive the output pins low once the refresh is complete. */
+	regmap_write(ebc->regmap, EBC_DSP_START,
+		     ebc->dsp_start |
+		     EBC_DSP_START_DSP_OUT_LOW);
+
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 }
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
