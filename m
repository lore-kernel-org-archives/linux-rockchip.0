Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB6DD4335B
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 22:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYXdOwJu0dy52DA1S/h2FN5UFBIjIMiSYOxclWyLy10=; b=KnkZCI7xVTdFKB
	Jlxk9npIxYD+driXsQI3KJou0lP0ca5bvv7NCmAsyX1+l4aNfTFG/RBQbH3VyaUBRQL9uwE0Uw4nV
	ndWo/URox7z5ekqdH/4IAgByi0QR9G8rf2NVVdd4CSdGRw8nxvjc8g6JwaSeU2MPfU7cvL0A3phln
	3zr3Qtea6SJYo/aEmrtwX/22T1b+DrOVRFid8xusJCfcgPQ1p1BladS9qc9TFN/PvUuCg45aIUlV/
	Kqx1hCGd2diCNboCOpzf90RH2Wl+gl7Y4Y7BEfHrgbQekDxz189RJeBDMQnQ+iaFbYZ1+MGz0Wc3X
	vDzB4W2+mudz+ciirXjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpLQ-0000000HMow-1pHj;
	Thu, 11 Dec 2025 22:41:11 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpLO-0000000HMnw-1ACl
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 22:41:07 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so7361315e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 14:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765492864; x=1766097664; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oc1kTCaPU/Up3VBWwNqeucLbtfTNSR3ZKTbW8ftdd+s=;
        b=llDzTTbJfbFGXQJyaoMg+erd7FDqwiFxo2R+cwikDpE7EcboTRnGdgP+ppigk0KXEO
         IrO6C9jWtBcgD7uYeLdXKaRMU/UV+c01BWjPgZDXRZ65s3o6RPuJUEZHedVLaH+pWQZR
         7N69O7ifIMD6cOdiA3FOtaLOZQ5HLQvftULvdAxMPS3A4WBKcmDxgGl8uhM9OELd9GT4
         dCWhwIdWA9VaOk4UpAFx2dPVGffvJSHp8B3nhpKcPZ6BYHst2PZmtT+/lejT5/8FoypN
         h/di/TFb8xYYUKRe/CP/dsxLMFpecX0tyOTeJcgvep76pRE6LszBiHpmNY4h1ba2nj25
         8L2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765492864; x=1766097664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oc1kTCaPU/Up3VBWwNqeucLbtfTNSR3ZKTbW8ftdd+s=;
        b=ldY3UpdP/DHTmgP0kIDqETl68cbYKLhmYeFyQ8kiTdDJRPhR18OsdRMBsVz2ZRYU1Q
         XhGL0A1+1iarGW03JpAZPuNBskVO9PZZDUtpF2UHIXIqELAbnrJe5C1B2j4gkI99NbyX
         Upu5TaPDE25MCPG5E2qXNJu+Wx1REGMWLu60pTwzifS05wh1Z5n3E4zeX5hPYWS+QKt9
         e/CHYMSTAnAt4J0n5uLAD+z2BpHptyzawsEW1XvEvLlSqSqrSJ1plQxd5PU2IbcxwYsy
         cPYt3DIIsNtlz1iAHC7KmAcfyaVF9JW1+prpuAD6SN6kpwm6U43po/WsY4CA4X/rU0mE
         xD+w==
X-Forwarded-Encrypted: i=1; AJvYcCUSuFKWNZMmmCRLl/YpgTlTQtugHcUViRq2cXtz4CSAwLj/7sxPkb5u7r7zDtVEJ417IYXjmkM2aHiMJ3uAAw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCvnrQGOPrr2pXAhuq+rUD0eutE1wOAbCWhiO/kuKIs8EFC3Mp
	r2HhfCr2Nn+V1dPgOLTcbuuACL8pH/krLDwQ63xSvnuadxU9tNn4dnpv
X-Gm-Gg: AY/fxX7KhesrOKccI4MmBe18k293YogftuIS19cIlu2eeXTUMFaXSkFvUv4Z40MhyVe
	flg1jOduk6RA2FIQfJiDSyuG2msU2t8fFXJa7Cum2o+f4bYYO9p/frA5CjLbvvHes7wQdq0sfZy
	vJp8vS0WvaftYOcVZRLZgMGUmC7wxCZQZxa2MNWGJy9QwP84DFfVxhoY6jcQU1PPDFH82LV/ORP
	RuZsZbesuOSum9mk4x/Ge9v0VPHE5bZbZrVBZj/y5i+1awtAA6RN3n3etccwYqNfYx6xL3LEROR
	XshVHMHu2MIV/VY/COT40XJnFFhzsHD11wm24TKfe7jhimzfW5pqbBCAWQ9IOQ+eGDhHuppeEgf
	j9/VsQQE1x22ewflR64MBoaTzy0yWbMJlEdF79DfEqoHvh3nunz0nuuc4zcNFv5VbQZQgtSWHsc
	0yoZKGyFgZ1R4BtEyEyBM3lS3VvVjH0f39n03GWVs3VRYwImqHDZoH
X-Google-Smtp-Source: AGHT+IG1bTT2BZs5zspIv+MpSidSuvbOeyRhbmBxmTJnjzWF8kBNNUW7JY1Buz+51tBubecYulXc/w==
X-Received: by 2002:a05:600c:1991:b0:47a:80f8:82ab with SMTP id 5b1f17b1804b1-47a83843776mr80137805e9.24.1765492864263;
        Thu, 11 Dec 2025 14:41:04 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4c624esm326205e9.15.2025.12.11.14.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 14:41:04 -0800 (PST)
Date: Thu, 11 Dec 2025 22:41:02 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko =?UTF-8?B?U3TDvGJuZXI=?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Daniel
 Stone <daniels@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v4 2/8] drm/rockchip: vop2: Switch impossible pos
 conditional to WARN_ON
Message-ID: <20251211224102.5e079d70@pumpkin>
In-Reply-To: <20251211-vop2-atomic-fixups-v4-2-5d50eda26bf8@collabora.com>
References: <20251211-vop2-atomic-fixups-v4-0-5d50eda26bf8@collabora.com>
	<20251211-vop2-atomic-fixups-v4-2-5d50eda26bf8@collabora.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_144106_326212_8C642A34 
X-CRM114-Status: GOOD (  19.38  )
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

On Thu, 11 Dec 2025 21:40:32 +0100
Nicolas Frattaroli <nicolas.frattaroli@collabora.com> wrote:

> From: Daniel Stone <daniels@collabora.com>
> 
> We already clip the plane to the display bounds in atomic_check, and
> ensure that it is sufficiently sized. Instead of trying to catch this
> and adjust for it in atomic_update, just assert that atomic_check has
> done its job.
> 
> Signed-off-by: Daniel Stone <daniels@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 29 +++++++++-------------------
>  1 file changed, 9 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 20b49209ddcd..81b3eba07095 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1214,28 +1214,17 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  	src_w = drm_rect_width(src) >> 16;
>  	src_h = drm_rect_height(src) >> 16;
>  	dsp_w = drm_rect_width(dest);
> -
> -	if (dest->x1 + dsp_w > adjusted_mode->hdisplay) {
> -		drm_dbg_kms(vop2->drm,
> -			    "vp%d %s dest->x1[%d] + dsp_w[%d] exceed mode hdisplay[%d]\n",
> -			    vp->id, win->data->name, dest->x1, dsp_w, adjusted_mode->hdisplay);
> -		dsp_w = adjusted_mode->hdisplay - dest->x1;
> -		if (dsp_w < 4)
> -			dsp_w = 4;
> -		src_w = dsp_w * src_w / drm_rect_width(dest);
> -	}
> -
>  	dsp_h = drm_rect_height(dest);
>  
> -	if (dest->y1 + dsp_h > adjusted_mode->vdisplay) {
> -		drm_dbg_kms(vop2->drm,
> -			    "vp%d %s dest->y1[%d] + dsp_h[%d] exceed mode vdisplay[%d]\n",
> -			    vp->id, win->data->name, dest->y1, dsp_h, adjusted_mode->vdisplay);
> -		dsp_h = adjusted_mode->vdisplay - dest->y1;
> -		if (dsp_h < 4)
> -			dsp_h = 4;
> -		src_h = dsp_h * src_h / drm_rect_height(dest);
> -	}
> +	/* drm_atomic_helper_check_plane_state calls drm_rect_clip_scaled for
> +	 * us, which keeps our planes bounded within the CRTC active area
> +	 */
> +	WARN_ON(dest->x1 + dsp_w > adjusted_mode->hdisplay);
> +	WARN_ON(dest->y1 + dsp_h > adjusted_mode->vdisplay);
> +	WARN_ON(dsp_w < 4);
> +	WARN_ON(dsp_h < 4);
> +	WARN_ON(src_w < 4);
> +	WARN_ON(src_h < 4);

You need to do something when the tests fail.
Carrying on regardless is never right.

	David



>  
>  	/*
>  	 * This is workaround solution for IC design:
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
