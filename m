Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D8A9C87FCB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weA8CuZlsKwxJSVR6lmkQdZlvnXVYi1kb3+mWLL4lGE=; b=a+286F3D76ItaM
	V7G5sokT8kwgCCP2zliohuu71Rtnl0di2YhdqvxH6Ubdgc7V80JtYbZiUwurf115DYI0rbGZcQ3jS
	gMaKYr9//rp909rK4QxnGL6a3QEMzR9YCG9y530eqb+U86abdxgv6oOWLcNQUN3dyqHJIhyCRFCzn
	2dEoNK/aUG8StxXz5LVzHStavu3MP41jP+GJBR67RZ6h25ia52fRVSHVHn1PXS3h+qNlg85qu19lp
	9ftrEagL93Uldztok9QgU8b9rep1AoyxR1c8npnF+TzQfWrYJbVGOADQt68BaRnqB91VZWj14YHe8
	5rzy1d/zoX6buDdRv7YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbcK-0000000EvwV-0ToZ;
	Wed, 06 Aug 2025 10:43:32 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUZOr-0000000HU4l-1iRJ
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jan 2025 22:47:14 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-304e4562516so15875441fa.1
        for <linux-rockchip@lists.infradead.org>; Sun, 05 Jan 2025 14:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736117231; x=1736722031; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TUw/Qsx3e/Vb/fGVkhPXMOTG1JvaasLeNnFxwC0uDdk=;
        b=wXgxXSp24zKpBMJ26FlUSS9PwAMYQhDgaYnLOFTLZHY9SJ5gh4920Dck1nrm1YG9Ar
         mLeCa9am53C+bc2KeJDiPB4yJd+MabKHPIGvoIu44gLfGwnUg+mxuHvtKUpew8gZTWNx
         8EVfTQbsaimwDZs1AYXS6M4aKjAuAktyDZlRqIG71thGpeAmvTUoaQ/8prNhaUUGuKR9
         iP1SFID5+FMI5uI2N1w5j4es2dpn0l2f520wz4Ys9Xo0MoyCYa9j16uQv/Bdx8fTv3xY
         p9Bw6zDMpV38gkSnp/bpZT700O2HDT87boTNjNuVR8Hdo6FrgeK5SX08huFLoebwaByu
         DX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736117231; x=1736722031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TUw/Qsx3e/Vb/fGVkhPXMOTG1JvaasLeNnFxwC0uDdk=;
        b=gcHK0A9ClMir58PoW9sY7X3f3R//J8HcVB842HSwoqJhooM1jWVzZIRH2Y901P1fqU
         0xCHtxscgkd329Jafee1L+GySnUAbK6S8a0DCAaHX1z2XbwHJ5McH8pph999iPPeWZHC
         54rdhVms7GuhmCoxkpaVxNmabXPcLsjCfuCQeJMdx+lsvGky0XKKvDd4ufp4RsAWSWhk
         TOjHB7LtnpxPL1jCHiBJTVeB3WhH+4am/yIQZZwj/8ZgmLegQpYoqZTX6jNGrFGPXZd/
         xeWdp1uajXYyY4K6AypzM7wnDjFGq171oLmwWhTiHOhBw3CllRC0mfnFcR+mHOfnORlW
         QzAA==
X-Forwarded-Encrypted: i=1; AJvYcCWUBoZ/SSxKeKR/gcTiIwlPPFuuvTppHUtSuRsMKISd2RMO4q88KZh2A09wiVauCTDQ9eOVxQ9X6YVu6esqSw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/TBIK2jlbipcNYvI4d303t34SYp+uInlaPRDqCsS5x7WC0pcp
	rPSAmrDIzT9xLPwZZ4dbpazJL+xEHECBaeQxivENJQO2Lm3aTZUKwlOrMBsAaIM=
X-Gm-Gg: ASbGnctslY4K68HuyrywuqBn8epGIL6VnMkC1iIvAZpAzfmghTBuJwjGzaHa9u8RWLC
	DBXLvNtMZ0pGq65n0LppjsCZC8eeStFhUBe1GN+oWfA+AoRC9GI/AxFCGI4tC44oYO4/egtQlqQ
	f1s2O3zVKIvcpiM3NXiP4m4Bbe5B8LpbXOplZDVYqFHyqGTDxPu2+wD1vv3shGZwKiTyV3q+m9g
	L15G/dxYUk6lWf6uPchzfh1lv4tyLS2hTzYsIV+84EcU/ySRp0O5tPRzCw7b75OpPnJMluDunM3
	IOGwAf46fbeOhPHGH0FCAsJo+hatXGW4Xtw3
X-Google-Smtp-Source: AGHT+IGdeC3kJKQByRSkP8PFuxEiAQLE0VDeCxWNLmf8WlobNvqOtqUKt3Qejko5pkmOL0gzpID7uQ==
X-Received: by 2002:a2e:a78a:0:b0:302:4a8f:428b with SMTP id 38308e7fff4ca-304583eca3fmr125244721fa.15.1736117231020;
        Sun, 05 Jan 2025 14:47:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b09669csm54711531fa.120.2025.01.05.14.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 14:47:09 -0800 (PST)
Date: Mon, 6 Jan 2025 00:47:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
	Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, 
	Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Peter Senna Tschudin <peter.senna@gmail.com>, Ian Ray <ian.ray@ge.com>, 
	Martyn Welch <martyn.welch@collabora.co.uk>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>, 
	Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Gurchetan Singh <gurchetansingh@chromium.org>, 
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, virtualization@lists.linux.dev, 
	spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
Message-ID: <76ho36jqcraehnsgpjralpye52w7ryshhgizekn4qqfsikiojd@3yyorbvjkc7b>
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_144713_452161_E9C0A39E 
X-CRM114-Status: GOOD (  23.06  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:53 -0700
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

On Sat, Dec 14, 2024 at 03:37:04PM +0200, Dmitry Baryshkov wrote:
> While working on the generic mode_valid() implementation for the HDMI
> Connector framework I noticed that unlike other DRM objects
> drm_connector accepts non-const pointer to struct drm_display_mode,
> while obviously mode_valid() isn't expected to modify the argument.
> 
> Mass-change the DRM framework code to pass const argument to that
> callback.
> 
> The series has been compile-tested with defconfig for x86-64, arm and
> arm64.
> 
> Note: yes, I understand that this change might be hard to review and
> merge. The only viable option that I foresee is to add new callback,
> having the const argument and migrate drivers into using it one by one.

Colleagues, I'd like to graciously ping regarding this series. Should it
be merged as is (possibly requiring more R-B's)? Or should I rework it
adding something like .mode_valid_new() callback which takes const
argument?

> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Changes in v2:
> - Rebased on top of linux-next
> - Replaced 'accept const argument' with 'take a const arugment'
>   (Laurent)
> - Link to v1: https://lore.kernel.org/r/20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org
> 
> ---
> Dmitry Baryshkov (5):
>       drm/encoder_slave: make mode_valid accept const struct drm_display_mode
>       drm/amdgpu: don't change mode in amdgpu_dm_connector_mode_valid()
>       drm/sti: hda: pass const struct drm_display_mode* to hda_get_mode_idx()
>       drm/connector: make mode_valid_ctx take a const struct drm_display_mode
>       drm/connector: make mode_valid take a const struct drm_display_mode
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c           |  8 ++++----
>  drivers/gpu/drm/amd/amdgpu/atombios_dp.c                 |  2 +-
>  drivers/gpu/drm/amd/amdgpu/atombios_dp.h                 |  2 +-
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c        | 12 +++++++++---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h        |  2 +-
>  drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c |  2 +-
>  drivers/gpu/drm/arm/malidp_mw.c                          |  2 +-
>  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c             |  2 +-
>  drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c      |  2 +-
>  drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c |  7 -------
>  drivers/gpu/drm/display/drm_bridge_connector.c           |  2 +-
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c          |  2 +-
>  drivers/gpu/drm/drm_crtc_helper_internal.h               |  2 +-
>  drivers/gpu/drm/drm_probe_helper.c                       |  2 +-
>  drivers/gpu/drm/exynos/exynos_hdmi.c                     |  2 +-
>  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c                |  2 +-
>  drivers/gpu/drm/gma500/cdv_intel_crt.c                   |  2 +-
>  drivers/gpu/drm/gma500/cdv_intel_dp.c                    |  2 +-
>  drivers/gpu/drm/gma500/cdv_intel_hdmi.c                  |  2 +-
>  drivers/gpu/drm/gma500/cdv_intel_lvds.c                  |  2 +-
>  drivers/gpu/drm/gma500/oaktrail_hdmi.c                   |  2 +-
>  drivers/gpu/drm/gma500/psb_intel_drv.h                   |  2 +-
>  drivers/gpu/drm/gma500/psb_intel_lvds.c                  |  2 +-
>  drivers/gpu/drm/gma500/psb_intel_sdvo.c                  |  2 +-
>  drivers/gpu/drm/i2c/ch7006_drv.c                         |  2 +-
>  drivers/gpu/drm/i2c/sil164_drv.c                         |  2 +-
>  drivers/gpu/drm/i915/display/dvo_ch7017.c                |  2 +-
>  drivers/gpu/drm/i915/display/dvo_ch7xxx.c                |  2 +-
>  drivers/gpu/drm/i915/display/dvo_ivch.c                  |  2 +-
>  drivers/gpu/drm/i915/display/dvo_ns2501.c                |  2 +-
>  drivers/gpu/drm/i915/display/dvo_sil164.c                |  2 +-
>  drivers/gpu/drm/i915/display/dvo_tfp410.c                |  2 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c                   |  2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c                 |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c                  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c              |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c                 |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.h                 |  2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c                 |  2 +-
>  drivers/gpu/drm/i915/display/intel_dvo_dev.h             |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c                |  2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c                |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c                |  2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c                  |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c                   |  2 +-
>  drivers/gpu/drm/imx/ipuv3/imx-tve.c                      |  2 +-
>  drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c      |  2 +-
>  drivers/gpu/drm/nouveau/dispnv04/tvnv17.c                |  2 +-
>  drivers/gpu/drm/nouveau/dispnv50/disp.c                  |  2 +-
>  drivers/gpu/drm/nouveau/nouveau_connector.c              |  2 +-
>  drivers/gpu/drm/qxl/qxl_display.c                        |  2 +-
>  drivers/gpu/drm/radeon/atombios_dp.c                     |  2 +-
>  drivers/gpu/drm/radeon/radeon_connectors.c               | 10 +++++-----
>  drivers/gpu/drm/radeon/radeon_mode.h                     |  2 +-
>  drivers/gpu/drm/rockchip/cdn-dp-core.c                   |  2 +-
>  drivers/gpu/drm/rockchip/inno_hdmi.c                     |  4 ++--
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c                   |  2 +-
>  drivers/gpu/drm/sti/sti_dvo.c                            |  2 +-
>  drivers/gpu/drm/sti/sti_hda.c                            | 12 ++++++------
>  drivers/gpu/drm/sti/sti_hdmi.c                           |  2 +-
>  drivers/gpu/drm/tegra/dsi.c                              |  2 +-
>  drivers/gpu/drm/tegra/hdmi.c                             |  2 +-
>  drivers/gpu/drm/tegra/sor.c                              |  2 +-
>  drivers/gpu/drm/vc4/vc4_txp.c                            |  2 +-
>  drivers/gpu/drm/virtio/virtgpu_display.c                 |  2 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_kms.c                      |  2 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_kms.h                      |  2 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c                     |  2 +-
>  include/drm/display/drm_hdmi_state_helper.h              |  2 +-
>  include/drm/drm_encoder_slave.h                          |  2 +-
>  include/drm/drm_modeset_helper_vtables.h                 |  4 ++--
>  71 files changed, 92 insertions(+), 93 deletions(-)
> ---
> base-commit: 4176cf5c5651c33769de83bb61b0287f4ec7719f
> change-id: 20241115-drm-connector-mode-valid-const-ae3db0ef6cb7
> 
> Best regards,
> -- 
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
