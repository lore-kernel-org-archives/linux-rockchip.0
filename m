Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22985C3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 11:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmrPuEnDhoImSOL+UxuRl6iHdGKl/GD0kdULRg9+2Ow=; b=xLMDZruTGcpCAT
	fT8SrTdD34lUjo7sHbgaVLV4ReUJNj+yeCLhbTr6vRkIDyj9Q80cZoooo6tTY3io00gcfDuME4fPx
	HufDFIzDl0J8lxHtKLzFhTmvMmVTGpj7/41p4BUmWWEMbQMH+tJvneGToSRonSjJl7jWy0HCJYuMl
	gVwuXySkDCiQRTRWveIPTyWmFRr93Joie3TFd+l6nVkrhQXt2pmNwAlB9agh3jIz9jh/98AwleUx0
	D68yiTuw3DOKu/JM8PMjbV36LsAWTAADulRRERYpOu4N/nFewEdGMbI9K/M9emhaArL7aXc1ULmQN
	xe0BL4wZduY21mjBkYnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJAs-00000003jJ0-0EuS;
	Fri, 26 Jul 2024 11:31:50 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJAp-00000003jI4-388g
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 11:31:49 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-5d5af8a4abbso580654eaf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 04:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1721993506; x=1722598306; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kmk1JjA2Ls4g+KyqSuHumcBghaFAtTT2atg+wkKZS7s=;
        b=viqImDUrAX8NXWBBqGh9ECuJU/YWwB/goibB3SsOFS/85x7jIpT8z0lzlZG0q61UyR
         aqilk7E5yPknuIjWmMIFO4NAw1i0FQIvO2QTP3H6U6xp24BI1qRT3EECW++U7H4YAd0r
         GWULxulD52LR0ownFrFDvRjdIxYuMxdz5rq4NBaQ4aBd0HVCR5JI4nwTXotpZCevNkR3
         CqLo10V9WLcfekYuTjD+dH1Uf9EGy2lXNcw7JIGnlTBoZQh64DVR2y48e3J/IkaobgMO
         QU09T9c8O2+Da6+zWXcahrbrwXx6YiidCSpUgfbB8UB74sABISQbkVYVFoq6CJHMMOXX
         hZEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721993506; x=1722598306;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kmk1JjA2Ls4g+KyqSuHumcBghaFAtTT2atg+wkKZS7s=;
        b=BQXG3D5pnjY9lLaF5iDgzrJeU5xC1Zm/ydGhAPvr9T+Scy0JOK0IeKMo6eCL5HhDo4
         Q33ZBmLY1VNw1CI3/tlRYxkfG/IEahv8Hcx4nHn+YZKHIN/hy5phGwkXS9CKhu4H9CwW
         n77JU/pnvJO2t8ewhiGdyxMUjYljroYeWptWbQo3DBr28T4xlcGkADMbwYlkS3ViSkh4
         Bzb7oUCyK+QKcaL35lY1Fm6FqDAiOk//gtFnj9i1AOlrnt79loqUTr30aN/CoSTaDxn3
         8xNuE04edreLW6SCKLIsBQepGb/Igrsa9WI9VOSb3g4VUiJMBKCtcsUCm/aKVejYU4xy
         aFBg==
X-Forwarded-Encrypted: i=1; AJvYcCXhaA7aCcWKHD9GGnMVN4Hlqq22aOMArDmskOhbYaqHuAm3p5ovOTa7j3BswcYuZDJ+cotxpF+oxjCxAA0z4OZSeCSNNT4Ly8bloHpNXtFey507
X-Gm-Message-State: AOJu0YySGI8tbfVoPvdMIfRMUOQZ9RWWQD6AQi3WrAF2w65WluNkFp+F
	7M6HpAtG6uicquzu8ooOzpTyBAAafH0CQSC3mu81HrvB5q/nLVvpWD0JshJdpfBKxnkiEoZUcy6
	rjJjSJOwxovZRO89gS2dM01uCwM6jSEvE+EOwXQ==
X-Google-Smtp-Source: AGHT+IGvPfPntSm/3Bto2qo4lI9AXdvO3Bew6FS2Yq3n8hvJGd9oEEOgF1uuOwWL92xMEZYtBtPacNHYm21W/2FzE+w=
X-Received: by 2002:a05:6358:280e:b0:1aa:bad6:2ba7 with SMTP id
 e5c5f4694b2df-1acfb99ed34mr636036055d.25.1721993505839; Fri, 26 Jul 2024
 04:31:45 -0700 (PDT)
MIME-Version: 1.0
References: <TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me>
 <CAPj87rPwJ-vRTsjM1rWRj1gyjbJM_ryrkTiPRBF3ZF1D7TVDYw@mail.gmail.com> <PGDz1uKmBh2U_yB-ut5xcahPHdmxgrIRAwALnJzsEHFuYssmMhQUz8jbHpEyUDBMjVbmQCjlP3K4gbzw3zZ53HhXUsXufBb5YzptnC58aeQ=@proton.me>
In-Reply-To: <PGDz1uKmBh2U_yB-ut5xcahPHdmxgrIRAwALnJzsEHFuYssmMhQUz8jbHpEyUDBMjVbmQCjlP3K4gbzw3zZ53HhXUsXufBb5YzptnC58aeQ=@proton.me>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 26 Jul 2024 12:31:34 +0100
Message-ID: <CAPj87rOM=j0zmuWL9frGKV1xzPbJrk=Q9ip7F_HAPYnbCqPouw@mail.gmail.com>
Subject: Re: [PATCH v3] rockchip/drm: vop2: add support for gamma LUT
To: Piotr Zalewski <pZ010001011111@proton.me>
Cc: "airlied@gmail.com" <airlied@gmail.com>, "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "heiko@sntech.de" <heiko@sntech.de>, 
	"hjc@rock-chips.com" <hjc@rock-chips.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
	"mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_043147_877821_61EF6643 
X-CRM114-Status: GOOD (  18.07  )
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

Hi Piotr,

On Thu, 25 Jul 2024 at 20:06, Piotr Zalewski <pZ010001011111@proton.me> wrote:
> I based my patch on how gamma LUT is handled in VOP. There, in atomic
> enable, gamma LUT write takes places at the end too, after the mutex was
> already first-time unlocked. I understand the concept of DRM atomic state
> updates and what you wrote makes sense.

Yeah, no problem - the old VOP1 code is clearly incorrect here. I'm
glad you can improve VOP2. :)

>  static void vop2_dither_setup(struct drm_crtc *crtc, u32 *dsp_ctrl)
> @@ -2152,6 +2127,9 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>
>         vop2_post_config(crtc);
>
> +       if (crtc->state->gamma_lut)
> +               vop2_crtc_gamma_set(vop2, crtc, old_state, &dsp_ctrl);

I think this call should be unconditional, so that we correctly
program LUT_DIS if there is no LUT set up during enable.

> @@ -2599,8 +2575,17 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
>         vop2_setup_alpha(vp);
>         vop2_setup_dly_for_windows(vop2);
>
> -       if (crtc_state->color_mgmt_changed && !crtc_state->active_changed)
> -               vop2_crtc_gamma_set(vop2, crtc, old_crtc_state);
> +       if (crtc_state->color_mgmt_changed && !crtc_state->active_changed) {
> +               u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);;
> +
> +               vop2_lock(vop2);
> +
> +               vop2_crtc_gamma_set(vop2, crtc, old_crtc_state, &dsp_ctrl);
> +
> +               vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
> +               vop2_cfg_done(vp);
> +               vop2_unlock(vop2);
> +       }

Calling lock/set/write/done/unlock here seems like an anti-pattern;
the cfg_done is already written in atomic_flush, so at least that part
is not necessary.

On platforms like RK3588, it looks like the new LUT can just be
written directly from atomic_begin without needing to program
DSP_CTRL, take locks, or synchronise against anything, so that should
be an easy straight-line path.

On platforms like RK3568, it would probably be better to set
mode_changed when the colour management configuration changes. That
will give you a good point to synchronise the cross-VOP dependencies
(i.e. claim or release the shared LUT when it is being
enabled/disabled), and also a hint to userspace that it is not going
to be a seamless transition as the LUT is disabled, programmed, then
re-enabled.

I think this would end up in a net reduction of LoC as well as a net
reduction of code weirdness.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
