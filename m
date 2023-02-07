Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 595EBC64EC4
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Feb 2023 09:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGryZ4NR+XwCE3V7wAlnqrMaPpnWpXUhttW1fv5uwio=; b=olpfDfqCxX88ct
	wuTxLdD135H23CYtKDU0z/p1aUERvpMyrXzBy0we6R0wIOxLlkzfGmtAyGUdnUTdZXNkNYFFuAsFc
	R0fJY6RGj4Sv74uO3dDl8BEIZUK5eTsODDyApiBgZU7+L0EJMtJYSbGWBTZgfWOJk6sao+/WYY0l9
	XJ2HRNZfp9ab7tBVRS+WDILafdHEVkT9OKsQwM8Gc6AFeOnXsar0xNK/bvUliA5mCmt2i0A8q7MOp
	vkxLCytYd2OeyVw805ZBWjod982VrXN1ivrU+X93LUhA0R0WPsob6lo+SJ1y5R85xqeeuqQGEokJE
	E/NqYbZuvrFebWtgCyjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPK6S-00BQN7-0f; Tue, 07 Feb 2023 09:17:28 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPK6E-00BQD4-Pq
	for linux-rockchip@lists.infradead.org; Tue, 07 Feb 2023 09:17:18 +0000
Message-ID: <33d2fe54-7d29-67da-f4c9-9ff084937f11@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1675761419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bBPbj/ijOPBxDK2N3umpO5uKrHG8nN4iz6CrpltXBKo=;
	b=Jv8bgGPeTLvHXv+fQjc2XZzVnAkNxSB7KspeLyoJ6HiLGrs477iY2fDwpucuVUTb/7uK9O
	/ndqlIAJDNzYxXiS5pPEHHAC6hEnX5M6Zvlf7n+xIv5aDH0BeJRzZdppfvd+EexbMuTRk5
	hvMyLimekxfa5Cca2kweCdJ4E/bO7vm+rPSyKlE1x4627mMq9ZeItGgJoJKp5iemmJRKTG
	SbRXj+mjtytV23Qv8Zekav7xafr3XOS1dt3rx0X8x31eStrrvcN+J72xxcE0y5OBz84KPx
	llcOdeH5RSX1hlGt5aeHHiGaAu1ejizJjXavviVam/BIWI/+5rfIBa9OzY6DJQ==
Date: Tue, 7 Feb 2023 10:16:57 +0100
MIME-Version: 1.0
Subject: Re: [PATCH v4 1/4] drm/rockchip: vop: limit maximium resolution to
 hardware capabilities
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>, FUKAUMI Naoki <naoki@radxa.com>
References: <20230207084452.1069656-1-s.hauer@pengutronix.de>
 <20230207084452.1069656-2-s.hauer@pengutronix.de>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20230207084452.1069656-2-s.hauer@pengutronix.de>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_011715_592450_9B996F57 
X-CRM114-Status: GOOD (  25.38  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Den 07.02.2023 kl. 09.44 skrev Sascha Hauer:
> The different VOP variants support different maximum resolutions. Reject
> resolutions that are not supported by a specific variant.
>
> This hasn't been a problem in the upstream driver so far as 1920x1080
> has been the maximum resolution supported by the HDMI driver and that
> resolution is supported by all VOP variants. Now with higher resolutions
> supported in the HDMI driver we have to limit the resolutions to the
> ones supported by the VOP.
>
> The actual maximum resolutions are taken from the Rockchip downstream
> Kernel.

So just so I understand it, this will allow only up to 1080p on rk3399 
or will it change something that allows higher resolutions, but with 
lower clock/pixel rates?

Thank you.

>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Notes:
>      Changes since v3:
>      - new patch
>
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 15 ++++++++++
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  2 ++
>   drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 31 +++++++++++++++++++++
>   3 files changed, 48 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index fa1f4ee6d1950..96b6bd8d17803 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1174,6 +1174,20 @@ static void vop_crtc_disable_vblank(struct drm_crtc *crtc)
>   	spin_unlock_irqrestore(&vop->irq_lock, flags);
>   }
>   
> +static enum drm_mode_status vop_crtc_mode_valid(struct drm_crtc *crtc,
> +						const struct drm_display_mode *mode)
> +{
> +	struct vop *vop = to_vop(crtc);
> +
> +	if (vop->data->max_xres && mode->hdisplay > vop->data->max_xres)
> +		return MODE_BAD_HVALUE;
> +
> +	if (vop->data->max_yres && mode->vdisplay > vop->data->max_yres)
> +		return MODE_BAD_VVALUE;
> +
> +	return MODE_OK;
> +}
> +
>   static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>   				const struct drm_display_mode *mode,
>   				struct drm_display_mode *adjusted_mode)
> @@ -1585,6 +1599,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>   }
>   
>   static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
> +	.mode_valid = vop_crtc_mode_valid,
>   	.mode_fixup = vop_crtc_mode_fixup,
>   	.atomic_check = vop_crtc_atomic_check,
>   	.atomic_begin = vop_crtc_atomic_begin,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 8502849833d93..5c4875ca3f270 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -225,6 +225,8 @@ struct vop_data {
>   	const struct vop_win_data *win;
>   	unsigned int win_size;
>   	unsigned int lut_size;
> +	unsigned int max_xres;
> +	unsigned int max_yres;
>   
>   #define VOP_FEATURE_OUTPUT_RGB10	BIT(0)
>   #define VOP_FEATURE_INTERNAL_RGB	BIT(1)
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index 014f99e8928e3..dc1a703d9d1a8 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -181,6 +181,8 @@ static const struct vop_data rk3036_vop = {
>   	.output = &rk3036_output,
>   	.win = rk3036_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3036_vop_win_data),
> +	.max_xres = 1920,
> +	.max_yres = 1080,
>   };
>   
>   static const struct vop_win_phy rk3126_win1_data = {
> @@ -213,6 +215,8 @@ static const struct vop_data rk3126_vop = {
>   	.output = &rk3036_output,
>   	.win = rk3126_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3126_vop_win_data),
> +	.max_xres = 1920,
> +	.max_yres = 1080,
>   };
>   
>   static const int px30_vop_intrs[] = {
> @@ -340,6 +344,8 @@ static const struct vop_data px30_vop_big = {
>   	.output = &px30_output,
>   	.win = px30_vop_big_win_data,
>   	.win_size = ARRAY_SIZE(px30_vop_big_win_data),
> +	.max_xres = 1920,
> +	.max_yres = 1080,
>   };
>   
>   static const struct vop_win_data px30_vop_lit_win_data[] = {
> @@ -356,6 +362,8 @@ static const struct vop_data px30_vop_lit = {
>   	.output = &px30_output,
>   	.win = px30_vop_lit_win_data,
>   	.win_size = ARRAY_SIZE(px30_vop_lit_win_data),
> +	.max_xres = 1920,
> +	.max_yres = 1080,
>   };
>   
>   static const struct vop_scl_regs rk3066_win_scl = {
> @@ -479,6 +487,8 @@ static const struct vop_data rk3066_vop = {
>   	.output = &rk3066_output,
>   	.win = rk3066_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3066_vop_win_data),
> +	.max_xres = 1920,
> +	.max_yres = 1080,
>   };
>   
>   static const struct vop_scl_regs rk3188_win_scl = {
> @@ -585,6 +595,8 @@ static const struct vop_data rk3188_vop = {
>   	.win = rk3188_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3188_vop_win_data),
>   	.feature = VOP_FEATURE_INTERNAL_RGB,
> +	.max_xres = 2048,
> +	.max_yres = 1536,
>   };
>   
>   static const struct vop_scl_extension rk3288_win_full_scl_ext = {
> @@ -732,6 +744,13 @@ static const struct vop_data rk3288_vop = {
>   	.win = rk3288_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3288_vop_win_data),
>   	.lut_size = 1024,
> +	/*
> +	 * This is the maximum resolution for the VOPB, the VOPL can only do
> +	 * 2560x1600, but we can't distinguish them as they have the same
> +	 * compatible.
> +	 */
> +	.max_xres = 3840,
> +	.max_yres = 2160,
>   };
>   
>   static const int rk3368_vop_intrs[] = {
> @@ -833,6 +852,8 @@ static const struct vop_data rk3368_vop = {
>   	.misc = &rk3368_misc,
>   	.win = rk3368_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3368_vop_win_data),
> +	.max_xres = 4096,
> +	.max_yres = 2160,
>   };
>   
>   static const struct vop_intr rk3366_vop_intr = {
> @@ -854,6 +875,8 @@ static const struct vop_data rk3366_vop = {
>   	.misc = &rk3368_misc,
>   	.win = rk3368_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3368_vop_win_data),
> +	.max_xres = 4096,
> +	.max_yres = 2160,
>   };
>   
>   static const struct vop_output rk3399_output = {
> @@ -984,6 +1007,8 @@ static const struct vop_data rk3399_vop_big = {
>   	.win_size = ARRAY_SIZE(rk3399_vop_win_data),
>   	.win_yuv2yuv = rk3399_vop_big_win_yuv2yuv_data,
>   	.lut_size = 1024,
> +	.max_xres = 4096,
> +	.max_yres = 2160,
>   };
>   
>   static const struct vop_win_data rk3399_vop_lit_win_data[] = {
> @@ -1010,6 +1035,8 @@ static const struct vop_data rk3399_vop_lit = {
>   	.win_size = ARRAY_SIZE(rk3399_vop_lit_win_data),
>   	.win_yuv2yuv = rk3399_vop_lit_win_yuv2yuv_data,
>   	.lut_size = 256,
> +	.max_xres = 2560,
> +	.max_yres = 1600,
>   };
>   
>   static const struct vop_win_data rk3228_vop_win_data[] = {
> @@ -1029,6 +1056,8 @@ static const struct vop_data rk3228_vop = {
>   	.misc = &rk3368_misc,
>   	.win = rk3228_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3228_vop_win_data),
> +	.max_xres = 4096,
> +	.max_yres = 2160,
>   };
>   
>   static const struct vop_modeset rk3328_modeset = {
> @@ -1100,6 +1129,8 @@ static const struct vop_data rk3328_vop = {
>   	.misc = &rk3328_misc,
>   	.win = rk3328_vop_win_data,
>   	.win_size = ARRAY_SIZE(rk3328_vop_win_data),
> +	.max_xres = 4096,
> +	.max_yres = 2160,
>   };
>   
>   static const struct of_device_id vop_driver_dt_match[] = {
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
