Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 464E5C87FCB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0J4v/CSK/xfplINAF4kNCeAuS3iQDqhi01CQVN3bmrw=; b=JE46z7uP3SY3MF
	lZf3N1e7zWuhWAwSOdLVyKAXjb76ki8HjmWvDcjivvZZt4cirecv26GKiEv4POz1wBb3Iq/JAT+SS
	vhDzKVUDs263TWt4kHjmOiRSjcyZzbOrm1ZJoWPXow4ahglZwrNp2MlDpYdjE/s0VCalXwB35S9fI
	u1Qem3jtaJxwIUoiHeWdV0tRvJ+eCso6pjpL146Gfnjg2/UTpQ7fHa88enS/vbbGlfRdf39jkIWWQ
	lozXB/ogi4FAuuVoEue1jLJ0QT+40k8GPxdGeparC/WqsAfNDQOh1ygM2jzfLEikThmH7URnTYKkR
	Z1s7z6oRiHTbXj4o/jUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbc1-0000000EvZD-0wYM;
	Wed, 06 Aug 2025 10:43:13 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCp7e-00000007zSS-0kp5
	for linux-rockchip@lists.infradead.org;
	Sun, 17 Nov 2024 23:56:07 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6ee6a2ae6ecso15992207b3.3
        for <linux-rockchip@lists.infradead.org>; Sun, 17 Nov 2024 15:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731887765; x=1732492565; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ec/Hk8LFdU6/qTj98SnoNsMivsG+0SE1lo+pLnCS5cs=;
        b=MM4DiHf+4lFb50OYVMqXUQvEmEevBXgSv44w5DKrBLgy/+dB6oTHfg0nA/nXGfdMri
         qZJieXWXY26kgw7dIaqSisL1bAT+6XERtUQ4hhPkiC7t7X7TODWlFfu1p4jUBy+WCXGH
         Cj8vVEAWcjFeIafTSF2Pq+u1sGe9l5mKaTtBA9nytZf4AbtjDriyqVEIcwwuqBtb+ZuM
         YUndYgJkcL3LFUwrlB6ODuL3/Q8hoA77b8dOJbHCt07VFjOTODZ69X65V89hVVzqh8OH
         +aF4A/NNC7m+zJnwIXX1Ko7wEzLKgi6lsy0pkzXQwwcENPQJbW9Nycv2UFuP452jP1Ju
         TYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731887765; x=1732492565;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ec/Hk8LFdU6/qTj98SnoNsMivsG+0SE1lo+pLnCS5cs=;
        b=lpOnFwFingw0mewyv9YAlU6c5NHoUPdGLjwwWXR1gzwBaVLa9RpsU3IAINvV7E0f5+
         EqTdLQFvX5RPrSkjRKlSgj0RRakaM8kn5/aHKbsnLHSV5RZCYDceiP/bF6wKOJgWwLuv
         7L7cK9Z5jOgaLntue3KRD/Fts6S+uJgwAj4wMdBAECJNlNLDx4DK7XD4o4kxVJEO1hGH
         4Lpf7BajYi0dWcS/SWv/y7gXFYv7I2f1jCN4wby54d4W7okk5nl7CIjaEF5aaDmWTntN
         zygNiMdJ85GhwIxrG2G840cyPxr4JMl775V5eLPm0le61/Hjv7ZofFaacNt20Mg3VX1f
         bslQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXWcPod525BHF3DvtnxPLkuuFDoLsJCzZrRJQD7lD9Hhn5pbRt6xIpXcQagAHUIn7RlwrjuJ1vAS6YVqzYlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ4MFJ/sCfrxGa9H0wlikr/DZdGnURCu4+KSGW7oKVNjult6W9
	LV9vt3ellkzf3Whz6XLfeTVnSONO/zV0QfAzLOFem0n+PqP3uGrJrxbh+qUZ+EP0r6MJDWARBhq
	/xw4TRYFD8m5Kl8JscH4MFH5Gw7ey4P710auddw==
X-Google-Smtp-Source: AGHT+IGdPgjTWzOdmSZKhRLhwp47xWv9WolMRYt8LQitXBXOFxH5M2pSFFLUJPVswZmbkhncp4AJ66Q6lhrBlLmxMBA=
X-Received: by 2002:a05:690c:6384:b0:6ee:3f5e:1c18 with SMTP id
 00721157ae682-6ee55a2abddmr96890087b3.4.1731887764985; Sun, 17 Nov 2024
 15:56:04 -0800 (PST)
MIME-Version: 1.0
References: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
 <20241115-drm-connector-mode-valid-const-v1-1-b1b523156f71@linaro.org>
 <20241117205426.GE12409@pendragon.ideasonboard.com> <CAA8EJpr=4AQVRKbtR2MaCQfguGW0a=3ay-ttew-mFR4f086Uyg@mail.gmail.com>
 <20241117233250.GK12409@pendragon.ideasonboard.com>
In-Reply-To: <20241117233250.GK12409@pendragon.ideasonboard.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 18 Nov 2024 01:55:54 +0200
Message-ID: <CAA8EJpq6Gkp4W=rGbpY6ASPgoDt=64HTFDk4_OZsTmbSUxhhGw@mail.gmail.com>
Subject: Re: [PATCH 1/5] drm/encoder_slave: make mode_valid accept const
 struct drm_display_mode
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
	Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Peter Senna Tschudin <peter.senna@gmail.com>, 
	Ian Ray <ian.ray@ge.com>, Martyn Welch <martyn.welch@collabora.co.uk>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Stefan Agner <stefan@agner.ch>, 
	Alison Wang <alison.wang@nxp.com>, Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Dave Airlie <airlied@redhat.com>, 
	Gerd Hoffmann <kraxel@redhat.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Gurchetan Singh <gurchetansingh@chromium.org>, 
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, intel-gfx@lists.freedesktop.org, 
	intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_155606_228749_CB68E5B3 
X-CRM114-Status: GOOD (  33.44  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:49 -0700
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

On Mon, 18 Nov 2024 at 01:33, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Mon, Nov 18, 2024 at 01:22:12AM +0200, Dmitry Baryshkov wrote:
> > On Sun, 17 Nov 2024 at 22:54, Laurent Pinchart wrote:
> > > On Fri, Nov 15, 2024 at 11:09:26PM +0200, Dmitry Baryshkov wrote:
> > > > The mode_valid() callbacks of drm_encoder, drm_crtc and drm_bridge
> > > > accept const struct drm_display_mode argument. Change the mode_valid
> > > > callback of drm_encoder_slave to also accept const argument.
> > > >
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > >
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > >
> > > On a side note, there's only two I2C slave encoder drivers left... I
> > > wonder if we could so something about them. The ch7006 and sil164
> > > drivers seem to be used by nouveau only, could they be moved to
> > > drivers/gpu/drm/nouveau/ ? We would move the whole drm_encoder_slave
> > > implementation there too, and leave it to die (or get taken out of limbo
> > > and fixed) with dispnv04.
> >
> > Or it might be better to switch to drm_bridge. Currently we also have
> > sil164 (sub)drivers in ast and i915 drivers. I don't know if there is
> > any common code to share or not. If there is some, it might be nice to
> > use common framework.
>
> That would require porting nouveau and i915 to drm_bridge. As much as
> I'd love to see that happening, I won't hold my breath.

Me neither. Probably moving those two and drm_encoder_slave to nouveau
is really the best course for now.

>
> > > > ---
> > > >  drivers/gpu/drm/i2c/ch7006_drv.c          | 2 +-
> > > >  drivers/gpu/drm/i2c/sil164_drv.c          | 2 +-
> > > >  drivers/gpu/drm/nouveau/dispnv04/tvnv17.c | 2 +-
> > > >  include/drm/drm_encoder_slave.h           | 2 +-
> > > >  4 files changed, 4 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i2c/ch7006_drv.c b/drivers/gpu/drm/i2c/ch7006_drv.c
> > > > index 131512a5f3bd996ad1e2eb869ffa09837daba0c7..a57f0a41c1a9e2006142fe0bad2914b0c344c82a 100644
> > > > --- a/drivers/gpu/drm/i2c/ch7006_drv.c
> > > > +++ b/drivers/gpu/drm/i2c/ch7006_drv.c
> > > > @@ -104,7 +104,7 @@ static bool ch7006_encoder_mode_fixup(struct drm_encoder *encoder,
> > > >  }
> > > >
> > > >  static int ch7006_encoder_mode_valid(struct drm_encoder *encoder,
> > > > -                                  struct drm_display_mode *mode)
> > > > +                                  const struct drm_display_mode *mode)
> > > >  {
> > > >       if (ch7006_lookup_mode(encoder, mode))
> > > >               return MODE_OK;
> > > > diff --git a/drivers/gpu/drm/i2c/sil164_drv.c b/drivers/gpu/drm/i2c/sil164_drv.c
> > > > index ff23422727fce290a188e495d343e32bc2c373ec..708e119072fcb50c31b5596b75dc341429b93697 100644
> > > > --- a/drivers/gpu/drm/i2c/sil164_drv.c
> > > > +++ b/drivers/gpu/drm/i2c/sil164_drv.c
> > > > @@ -255,7 +255,7 @@ sil164_encoder_restore(struct drm_encoder *encoder)
> > > >
> > > >  static int
> > > >  sil164_encoder_mode_valid(struct drm_encoder *encoder,
> > > > -                       struct drm_display_mode *mode)
> > > > +                       const struct drm_display_mode *mode)
> > > >  {
> > > >       struct sil164_priv *priv = to_sil164_priv(encoder);
> > > >
> > > > diff --git a/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c b/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
> > > > index 3ecb101d23e949b753b873d24eec01ad6fe7f5d6..35ad4e10d27323c87704a3ff35b7dc26462c82bd 100644
> > > > --- a/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
> > > > +++ b/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
> > > > @@ -308,7 +308,7 @@ static int nv17_tv_get_modes(struct drm_encoder *encoder,
> > > >  }
> > > >
> > > >  static int nv17_tv_mode_valid(struct drm_encoder *encoder,
> > > > -                           struct drm_display_mode *mode)
> > > > +                           const struct drm_display_mode *mode)
> > > >  {
> > > >       struct nv17_tv_norm_params *tv_norm = get_tv_norm(encoder);
> > > >
> > > > diff --git a/include/drm/drm_encoder_slave.h b/include/drm/drm_encoder_slave.h
> > > > index 49172166a164474f43e4afb2eeeb3cde8ae7c61a..b526643833dcf78bae29f9fbbe27de3f730b55d8 100644
> > > > --- a/include/drm/drm_encoder_slave.h
> > > > +++ b/include/drm/drm_encoder_slave.h
> > > > @@ -85,7 +85,7 @@ struct drm_encoder_slave_funcs {
> > > >        * @mode_valid: Analogous to &drm_encoder_helper_funcs @mode_valid.
> > > >        */
> > > >       int (*mode_valid)(struct drm_encoder *encoder,
> > > > -                       struct drm_display_mode *mode);
> > > > +                       const struct drm_display_mode *mode);
> > > >       /**
> > > >        * @mode_set: Analogous to &drm_encoder_helper_funcs @mode_set
> > > >        * callback. Wrapped by drm_i2c_encoder_mode_set().
> > > >
>
> --
> Regards,
>
> Laurent Pinchart



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
