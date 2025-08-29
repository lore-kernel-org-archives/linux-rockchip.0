Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D114CA1000
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 19:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGKDRhhLVttrlbxeAFJ14lyyAtI5D36LNyZi+/tdVKk=; b=Gbh3Rp4a/Va/nB
	C/zqqVewBPzQEY+MzFLzntnjbbae87s+ZuDLgosGVqlfCtXAZycvpW7t+hO37iW9RYJTFpxNAE9Qg
	FTv9r6H2Zp9OLuF3j+RXG0rjYb1xssoWr9bsQDl+JderLV6lpm+utSY9FO1TGdF6cjX1JLklBQzHi
	BgrCQaeZebD8D7zziAq1Kr4yPB5K0uxhXwO995PKoIRaV71+AezRQBJBxF4NznJ2ECxPkIvQgsY+X
	cpXjOOuMPgHbTCr6d6yOK0Ui9VRPWVRyn6moYGCXggPbDDlYn1r/+T4Am6SDv4znenxADKumm3My4
	xHq74nBpgZ9+Mhu/ORdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us4tH-00000006kyO-2nkG;
	Fri, 29 Aug 2025 19:36:03 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us19A-00000006DTZ-06Ce
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 15:36:14 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-7e8704cdc76so225073385a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756481771; x=1757086571; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4SSy/4QqSxPf2Td+xOiBHnRIJU25HPzBFl3gyWpJBL4=;
        b=jKSDmwELcR6q6abdp5PO41CKfLZo7zHOtD+pXDDk89bqgsVtb0C2wBl/LPWuYuULWu
         WO7vYIwvbcxrS3aJvf5XdgxnVyuBJKjDDx40jgjMe7wvm6Hy4PnfmJBSFF2TwQsbmg+J
         sI8BJamUIPnUD94fd36//24duwj1P48gk6e8BHPYLBc/afGci/XoYXbPw4U3Xh0z26qA
         865iJzTmF/po59knv7oEB04vJrYgw6v21CAYitgaJ40S8hNxGmHlwTc157hXLmXePuNZ
         COBm5lynnag8luZHYzUWzy00D9bpnuBgKcMJm+k657gDVpOK8mB7rH5dk2D9WL/wvvWX
         pPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756481771; x=1757086571;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4SSy/4QqSxPf2Td+xOiBHnRIJU25HPzBFl3gyWpJBL4=;
        b=A1dmQxyuJmL2P8z1FnBHrMeGZrpoGpyQ8pmB8ZhzoqJgiTbYKnG+A/9vyItThhXBcq
         Tn9yk0k1nyPBcILlgoTQCVYFAY2BV7Fpk6Brp2mAWk6DWwdQjs/9NPa9Fs+LSlsCBczr
         cynAqghqCc/zbKvHH4PbMvmZi+DUiaPpvyN6hiduUexgAVmEywH2YaWQPJZ8AXuGTJjm
         tc0cgU8JU/aLj9kDSL/A4YugX0C/EjTQfaS1SKNl7Z/I0HouUVlUzgyzdwo2QLhIYtfE
         VOslBQ9d2d9CGu7F6/36Q7M0eDNMhKoSaExhpInanX2GioVtVXy0Cr/7hPTZaE/XzqOe
         BA3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVVxzH+9sBho/bTZSvnwnzbGhSsfkCQeWQCyOcJV+sg0VcqLrt/S7Lu+H6FI+eoxQyWC5JGqxQ5TFGM5f1gaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyM86k4KfwgKS7Ze9rfROOpnqgpvIlkeU7EWK0WOJZp/VMC3wkE
	QQyt24sQSPZ8tvSfixlddtVNRRWDlgI7VS0omhaasTECradJAbpKNJX2ennL7E+8qCNAypN/QV+
	/i29HtvMKoZKeuKJwxTyWg73aAIiIcq0kfVNY2kGByw==
X-Gm-Gg: ASbGncvNmDbGNdnKRZ7vyD0KAwJXvqpDi/4bcVXAbhfdNKeR9WA/bCaYzwdbonUp9Te
	tBA+hr4VZuo8TU0uZgKM4qH/spSeLlJxbqyiNc6ePo4lm6CjOZtBomUqUQ+BzuzQ/vCVXxzfC9T
	4o8FHMJIXBgPR03bt9Gm0a49q2fIVZz5Wm1aJibwcNrKffYschaoizh41K1FgS+aH8qKhNvByRy
	OMvUodQ6H364Vbp
X-Google-Smtp-Source: AGHT+IEWqZtwwwHsrf82ewOz9RLbEwp65hDGKMxJaKKPW/S3xt8Z0JtCwy0RHATkKGBiN8Hrm886i7G3V+7iyRzmihw=
X-Received: by 2002:a05:620a:1aa9:b0:7fd:6709:f08d with SMTP id
 af79cd13be357-7fd6709f66emr191563385a.81.1756481770696; Fri, 29 Aug 2025
 08:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <20250825-rk3588-10bpc-v2-0-955622d16985@collabora.com> <20250825-rk3588-10bpc-v2-1-955622d16985@collabora.com>
In-Reply-To: <20250825-rk3588-10bpc-v2-1-955622d16985@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 29 Aug 2025 17:35:59 +0200
X-Gm-Features: Ac12FXwrZsUUOJf6R_CcGG1_6Xwe2zsAflxp6I-kKbisXKVACpCbORbGe0q1z1k
Message-ID: <CAPj87rNX0vdQquZB7HQDG1rvCCyk=+2wa=isLqgL3_Sx6Y1J=Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] drm/rockchip: vop2: Check bpc before switching
 DCLK source
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_083612_073907_E226FA3F 
X-CRM114-Status: GOOD (  18.60  )
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

Hi Cristian,

On Mon, 25 Aug 2025 at 12:08, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> When making use of the HDMI PHY PLL as a VOP2 DCLK source, it's output
> rate does normally match the mode clock.  But this is only applicable
> for default color depth of 8 bpc.  For higher depths, the output clock
> is further divided by the hardware according to the formula:
>
>   output rate = PHY PLL rate * 8 / bpc

Observing that this results in phy_pll_rate * 8 / 8 == phy_pll_rate
for 8bpc, the formula does actually hold true everywhere.

> @@ -1737,36 +1737,48 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>          * Switch to HDMI PHY PLL as DCLK source for display modes up
>          * to 4K@60Hz, if available, otherwise keep using the system CRU.
>          */
> -       if ((vop2->pll_hdmiphy0 || vop2->pll_hdmiphy1) && clock <= VOP2_MAX_DCLK_RATE) {
> -               drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
> -                       struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
> +       if (vop2->pll_hdmiphy0 || vop2->pll_hdmiphy1) {
> +               unsigned long max_dclk;
>
> -                       if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI0) {
> -                               if (!vop2->pll_hdmiphy0)
> -                                       break;
> +               if (vcstate->output_bpc > 8)
> +                       max_dclk = DIV_ROUND_CLOSEST_ULL(VOP2_MAX_DCLK_RATE * 8,
> +                                                        vcstate->output_bpc);
> +               else
> +                       max_dclk = VOP2_MAX_DCLK_RATE;

... so this could just be do the mul+div unconditionally.

> +               if (clock <= max_dclk) {
> +                       drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
> +                               struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
>
> -                               ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy0);
> -                               if (ret < 0)
> -                                       drm_warn(vop2->drm,
> -                                                "Could not switch to HDMI0 PHY PLL: %d\n", ret);
> -                               break;
> -                       }
> +                               if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI0) {
> +                                       if (!vop2->pll_hdmiphy0)
> +                                               break;
> +
> +                                       if (!vp->dclk_src)
> +                                               vp->dclk_src = clk_get_parent(vp->dclk);
>
> -                       if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI1) {
> -                               if (!vop2->pll_hdmiphy1)
> +                                       ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy0);
> +                                       if (ret < 0)
> +                                               drm_warn(vop2->drm,
> +                                                        "Could not switch to HDMI0 PHY PLL: %d\n",
> +                                                        ret);
>                                         break;
> +                               }
>
> -                               if (!vp->dclk_src)
> -                                       vp->dclk_src = clk_get_parent(vp->dclk);
> +                               if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI1) {
> +                                       if (!vop2->pll_hdmiphy1)
> +                                               break;
>
> -                               ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy1);
> -                               if (ret < 0)
> -                                       drm_warn(vop2->drm,
> -                                                "Could not switch to HDMI1 PHY PLL: %d\n", ret);
> -                               break;
> +                                       if (!vp->dclk_src)
> +                                               vp->dclk_src = clk_get_parent(vp->dclk);
> +
> +                                       ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy1);
> +                                       if (ret < 0)
> +                                               drm_warn(vop2->drm,
> +                                                        "Could not switch to HDMI1 PHY PLL: %d\n",
> +                                                        ret);
> +                                       break;
> +                               }

To be honest, this whole thing is a bit weird, and seems like it could
also be struct clk *new_dclk_parent = (rkencoder->crtc_endpoint_id ==
ROCKCHIP_VOP2_EP_HDMI0) ? vop2->pll_hdmiphy0 : vop2->pll_hdmiphy1? But
it's not your code, I know, and the rest of the clock handling is
pretty messy, so I think this is fine as is.

Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
