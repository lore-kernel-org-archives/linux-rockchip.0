Return-Path: <SRS0=Rf1F=C6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 145ADC4346E
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B265420888
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zE2+27VT";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k8ytlwjs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B265420888
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PqzT7ROTycchhIbh9gAh1mWIl8c07x1pwc9S7AZpc6s=; b=zE2+27VTCLOz5HugNX5Pjfmwa
	fXsBXJyWkt3hS6fiSjBHPDsasjoL+nPOnxv57KWjT3pJUlRMiXYVvNxF546mih2ulRJCDQapTZBlI
	kisT6J9+yDEyfzqnHUHHQ12lfGY8JVghgpT5H+6WixxboBMNdA5mdH/V0q0uwRWPq/NMtn0JiD+JI
	mkZhBPBBcWmtxf5mtHNLMkPdsGz5b85N+L9rHP6IMVK2uJQsrJz90q+34Eag2hhhR3O6Q0ThNUvk8
	vTb80PRv+DWN88x9zz1lpi0H+5CYmWQp13Gz10+yw/3S/KGMd3Mb+50pKuwIPDasTXpkNwjRlT7R/
	EVuk/8tHA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKQOX-0008WG-0x; Mon, 21 Sep 2020 18:18:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKQOU-0008Uk-E1
 for linux-rockchip@lists.infradead.org; Mon, 21 Sep 2020 18:18:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id d4so414107wmd.5
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2020 11:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wN1VQcr5gopN//+YP1c+kyMLVVksKqlHg3J3zrz7FOU=;
 b=k8ytlwjsFo4BX7JUh7CapBzDGKRouXqIq9lZRGGlkP3m84azSYvitonhDLI+f0lqEx
 hIUX1oEPHGxhWhptxVKAHTYTJ5ECdL4IZZ89GbFr+XImQxZBn2eedIMpr1Jk1BGSohAm
 zZnEj8y3JuJO8a4zR5HmoSEq2R9/ygi3Sz884uloe2ckSJEqy2UE6VE7ug8jOn2aVKIT
 cUYxsW8blV8BPFeIUUFBVG/eebmKS7TOCS4BdFhKdmxOUuhG9m+LpsgaXZXjZwG8yUhz
 aSzn1x4rbgQUMkTbauI0jscb4TDFn8r6q3xrshq9B+sc6vRZx6xzdkAmZXPUN7ujw/dB
 N33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wN1VQcr5gopN//+YP1c+kyMLVVksKqlHg3J3zrz7FOU=;
 b=DzRfRuB4yLi4hMv7caVdXiYVpzuA10Zna30TwO0Y+wWc5XWflrWULY8h/yy6ZwNL61
 6HtLDWgTAc3gHw4PjidPyVuW1MfApxN5jBbVeL8hJwsSEQAyLPkXsj8VSZPc3tnZCxWY
 zwArf4IvpL96EFYgQJZYMeTpP7BB27jdcWLceuwCLxwsepxBdWujkdGbi5qn3HpU+uJN
 7VreH9E/EYQnrTgzGtLFhJ0RLi9cstTF8oeqaihTzlDkkbtL0B7OG3/47TwnL9R1F9m1
 BSnHk2ldiA03x6nS+7Kbcy2fEgKL+alFASIbjoPniYDmoXwbozcqZbVHJVUf2Rqngl+2
 S0nA==
X-Gm-Message-State: AOAM531j8RbjXoilS03JUCz/e7DLjq/miKBTPoCdITYt380aCiceeUog
 83jc2eTkPQyF56n+5l+bDe8=
X-Google-Smtp-Source: ABdhPJwsqIQmUMoz2qqPyu7m3k2+6Iq+CcK5QecIPbZOLTffC9yTCP7aw529i0+eO1s8CZ8xoLOeDA==
X-Received: by 2002:a7b:c215:: with SMTP id x21mr607808wmi.138.1600712308906; 
 Mon, 21 Sep 2020 11:18:28 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id h16sm23523249wre.87.2020.09.21.11.18.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 11:18:28 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 1/3] drm: rockchip: hdmi: remove vop_crtc_mode_fixup to fix
 clock handling
Date: Mon, 21 Sep 2020 20:18:01 +0200
Message-Id: <20200921181803.1160-2-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921181803.1160-1-vicencb@gmail.com>
References: <20200921181803.1160-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200921_141830_477398_036E74C2 
X-CRM114-Status: GOOD (  15.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Under certain conditions vop_crtc_mode_fixup rounds the clock
148500000 to 148501000 which leads to the following error:
dwhdmi-rockchip ff940000.hdmi: PHY configuration failed (clock 148501000)

The issue was found on RK3399 booting with u-boot. U-boot configures the
display at 2560x1440 and then linux comes up with a black screen.
A workaround was to un-plug and re-plug the HDMI display.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Tested-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 45 ---------------------
 1 file changed, 45 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index c80f7d9fd13f..fe80da652994 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1142,50 +1142,6 @@ static void vop_crtc_disable_vblank(struct drm_crtc *crtc)
 	spin_unlock_irqrestore(&vop->irq_lock, flags);
 }
 
-static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
-				const struct drm_display_mode *mode,
-				struct drm_display_mode *adjusted_mode)
-{
-	struct vop *vop = to_vop(crtc);
-	unsigned long rate;
-
-	/*
-	 * Clock craziness.
-	 *
-	 * Key points:
-	 *
-	 * - DRM works in in kHz.
-	 * - Clock framework works in Hz.
-	 * - Rockchip's clock driver picks the clock rate that is the
-	 *   same _OR LOWER_ than the one requested.
-	 *
-	 * Action plan:
-	 *
-	 * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
-	 *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
-	 *    make 60000 kHz then the clock framework will actually give us
-	 *    the right clock.
-	 *
-	 *    NOTE: if the PLL (maybe through a divider) could actually make
-	 *    a clock rate 999 Hz higher instead of the one we want then this
-	 *    could be a problem.  Unfortunately there's not much we can do
-	 *    since it's baked into DRM to use kHz.  It shouldn't matter in
-	 *    practice since Rockchip PLLs are controlled by tables and
-	 *    even if there is a divider in the middle I wouldn't expect PLL
-	 *    rates in the table that are just a few kHz different.
-	 *
-	 * 2. Get the clock framework to round the rate for us to tell us
-	 *    what it will actually make.
-	 *
-	 * 3. Store the rounded up rate so that we don't need to worry about
-	 *    this in the actual clk_set_rate().
-	 */
-	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
-	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
-
-	return true;
-}
-
 static bool vop_dsp_lut_is_enabled(struct vop *vop)
 {
 	return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
@@ -1512,7 +1468,6 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
 }
 
 static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
-	.mode_fixup = vop_crtc_mode_fixup,
 	.atomic_check = vop_crtc_atomic_check,
 	.atomic_begin = vop_crtc_atomic_begin,
 	.atomic_flush = vop_crtc_atomic_flush,
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
