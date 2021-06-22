Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7899DC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 15:24:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43E83600D1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 15:24:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43E83600D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnVZeoyNfbnys7vYQ6EYmt+WpeIi6iYELM3pmNSJh/g=; b=2SXi/Ehst2iYXn
	P3T9fxpwB0JN0Qq9BZAbdx7+1B97VQoAly4DUykqf50ehSizh/gTY9znXQttK8u8QpOSipaXmzxWP
	4yM1GjfZaeBZU2tH7U57srIWFbIieTAxXvjW8xwvoocH7idMnL1PjS9ronrAp9HdGNxaq3RlLnO3Q
	5cLeUzSz5XWYNVMk/9DsiBPuA4RHkk6BNcviZroSX/aVr1onwd8hik06wOrqAKyEW2fi8u1vgZkS1
	CTSiL+rFg7swE+FoBE2AWfyVZlCFYceDFpg7najdh5HYlWW3nLnR2srFptHMJSzw1TP+WjnKFZWJl
	0QOhZoBUHvB0S0YypjYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lviGM-007fv8-OJ; Tue, 22 Jun 2021 15:24:30 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lviGJ-007ftP-Px
 for linux-rockchip@lists.infradead.org; Tue, 22 Jun 2021 15:24:29 +0000
Received: by mail-wr1-x42d.google.com with SMTP id a11so24147979wrt.13
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Jun 2021 08:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZeqWuXtX2BrYCzJWvhQ3y4KbulOq0QYwwBD94QW58/k=;
 b=ZlqWM+jail8wVe6yddVhoDkll94K1QcrO1qPfcnvA5ZgF7O5UWGiwgAoirgPr5VThQ
 PxLEoFhDthsBu11VLuKNyZ4t3jV2oXfE2AjGKpc2koo0GT0EP0wz7tBbPjapFZRbS4qF
 iL45agNDVjpfa14ecS7F0zPBWAmsGHIs8s5iQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZeqWuXtX2BrYCzJWvhQ3y4KbulOq0QYwwBD94QW58/k=;
 b=m6ZOsHcnNIvDtyJwoPgiXJ/sLlsBBfmxvtXE45S+Vx9KnMMlxXnkdkUenJkz4QW5k7
 9sWu+qYLe7LCPxgt0raUI0L0572k07QQP1qc9GhgwSGsojYrCjXf77m0oaVz3CMQiR/X
 R4cHe7ZGSzXGR39lN6HsyJUdsMgg9gIzFdg3mAcaITwgpsE4iyhjTvCntOVxlwF2MqyY
 qRIIGDMmmp/+3C5tFIcdFulbw3toB+fyuTKurep9c6hyufUMJc6/6ZRse/uKrHZIpumg
 CmnC9CcEeuUHYNk7jyEtPs/kl5NN6y57egWkz9+FBMhtBFcgg8B++g0irQgOEC1zyUgm
 3slw==
X-Gm-Message-State: AOAM5330hkjaWFvMeN/L6tV/QGI9mo3r3DSMB4eZ3FAXUtv7Pu4Bpnzv
 bv7d+2jmwe0qnc9izSHmMqdNdQ==
X-Google-Smtp-Source: ABdhPJxIsS4KMhI+Y3KiogSWjdDWrVZYSvpp7dXLHAVjT9HzjIzI+eRKdkXYHvp6Rq+N7hy/RDRSKg==
X-Received: by 2002:a05:6000:128b:: with SMTP id
 f11mr5556353wrx.171.1624375465147; 
 Tue, 22 Jun 2021 08:24:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a24sm2852645wmj.30.2021.06.22.08.24.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 08:24:24 -0700 (PDT)
Date: Tue, 22 Jun 2021 17:24:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@linux.ie, alexander.deucher@amd.com,
 christian.koenig@amd.com, Xinhui.Pan@amd.com,
 james.qian.wang@arm.com, liviu.dudau@arm.com,
 mihail.atanassov@arm.com, brian.starkey@arm.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com,
 krzysztof.kozlowski@canonical.com, xinliang.liu@linaro.org,
 tiantao6@hisilicon.com, john.stultz@linaro.org,
 kong.kongxinwei@hisilicon.com, puck.chen@hisilicon.com,
 laurentiu.palcu@oss.nxp.com, l.stach@pengutronix.de,
 p.zabel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 chunkuang.hu@kernel.org, matthias.bgg@gmail.com, bskeggs@redhat.com,
 tomba@kernel.org, hjc@rock-chips.com, heiko@sntech.de,
 benjamin.gaignard@linaro.org, yannick.fertre@foss.st.com,
 philippe.cornu@foss.st.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, wens@csie.org,
 jernej.skrabec@gmail.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, jyri.sarha@iki.fi, emma@anholt.net,
 linux-graphics-maintainer@vmware.com, zackr@vmware.com,
 hyun.kwon@xilinx.com, laurent.pinchart@ideasonboard.com,
 michal.simek@xilinx.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, nouveau@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 00/22] Deprecate struct drm_device.irq_enabled
Message-ID: <YNIApfAnFCsCHoYK@phenom.ffwll.local>
References: <20210622141002.11590-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622141002.11590-1-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_082428_065691_904D2EE6 
X-CRM114-Status: GOOD (  24.36  )
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

On Tue, Jun 22, 2021 at 04:09:40PM +0200, Thomas Zimmermann wrote:
> Remove references to struct drm_device.irq_enabled from modern
> DRM drivers and core.
> 
> KMS drivers enable IRQs for their devices internally. They don't
> have to keep track of the IRQ state via irq_enabled. For vblanking,
> it's cleaner to test for vblanking support directly than to test
> for enabled IRQs.
> 
> This used to be a single patch, [1] but it's now a full series.
> 
> The first 3 patches replace instances of irq_enabled that are not
> required.
> 
> Patch 4 fixes vblank ioctls to actually test for vblank support
> instead of IRQs.
> 
> THe rest of the patchset removes irq_enabled from all non-legacy
> drivers. The only exception is omapdrm, which has an internal
> dpendency on the field's value. For this drivers, the state gets
> duplicated internally.
> 
> With the patchset applied, drivers can later switch over to plain
> Linux IRQ interfaces and DRM's IRQ midlayer can be declared legacy.
> 
> v2:
> 	* keep the original test for legacy drivers in
> 	  drm_wait_vblank_ioctl() (Daniel)
> 
> [1] https://lore.kernel.org/dri-devel/20210608090301.4752-1-tzimmermann@suse.de/

On the series:

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

But I've only done a very light reading of this, so please wait for driver
folks to have some time to check their own before merging.

I think a devm_ version of drm_irq_install might be helpful in further
untangling here, but that's definitely for another series.
-Daniel

> 
> Thomas Zimmermann (22):
>   drm/amdgpu: Track IRQ state in local device state
>   drm/hibmc: Call drm_irq_uninstall() unconditionally
>   drm/radeon: Track IRQ state in local device state
>   drm: Don't test for IRQ support in VBLANK ioctls
>   drm/komeda: Don't set struct drm_device.irq_enabled
>   drm/malidp: Don't set struct drm_device.irq_enabled
>   drm/exynos: Don't set struct drm_device.irq_enabled
>   drm/kirin: Don't set struct drm_device.irq_enabled
>   drm/imx: Don't set struct drm_device.irq_enabled
>   drm/mediatek: Don't set struct drm_device.irq_enabled
>   drm/nouveau: Don't set struct drm_device.irq_enabled
>   drm/omapdrm: Track IRQ state in local device state
>   drm/rockchip: Don't set struct drm_device.irq_enabled
>   drm/sti: Don't set struct drm_device.irq_enabled
>   drm/stm: Don't set struct drm_device.irq_enabled
>   drm/sun4i: Don't set struct drm_device.irq_enabled
>   drm/tegra: Don't set struct drm_device.irq_enabled
>   drm/tidss: Don't use struct drm_device.irq_enabled
>   drm/vc4: Don't set struct drm_device.irq_enabled
>   drm/vmwgfx: Don't set struct drm_device.irq_enabled
>   drm/xlnx: Don't set struct drm_device.irq_enabled
>   drm/zte: Don't set struct drm_device.irq_enabled
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c         |  6 +++---
>  drivers/gpu/drm/arm/display/komeda/komeda_kms.c |  4 ----
>  drivers/gpu/drm/arm/malidp_drv.c                |  4 ----
>  drivers/gpu/drm/drm_irq.c                       | 10 +++-------
>  drivers/gpu/drm/drm_vblank.c                    | 13 +++++++++----
>  drivers/gpu/drm/exynos/exynos_drm_drv.c         | 10 ----------
>  drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c |  3 +--
>  drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c |  2 --
>  drivers/gpu/drm/imx/dcss/dcss-kms.c             |  3 ---
>  drivers/gpu/drm/imx/imx-drm-core.c              | 11 -----------
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c          |  6 ------
>  drivers/gpu/drm/nouveau/nouveau_drm.c           |  3 ---
>  drivers/gpu/drm/omapdrm/omap_drv.h              |  2 ++
>  drivers/gpu/drm/omapdrm/omap_irq.c              |  6 +++---
>  drivers/gpu/drm/radeon/radeon_fence.c           |  2 +-
>  drivers/gpu/drm/radeon/radeon_irq_kms.c         | 16 ++++++++--------
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c     |  6 ------
>  drivers/gpu/drm/sti/sti_compositor.c            |  2 --
>  drivers/gpu/drm/stm/ltdc.c                      |  3 ---
>  drivers/gpu/drm/sun4i/sun4i_drv.c               |  2 --
>  drivers/gpu/drm/tegra/drm.c                     |  7 -------
>  drivers/gpu/drm/tidss/tidss_irq.c               |  3 ---
>  drivers/gpu/drm/vc4/vc4_kms.c                   |  1 -
>  drivers/gpu/drm/vmwgfx/vmwgfx_irq.c             |  8 --------
>  drivers/gpu/drm/xlnx/zynqmp_dpsub.c             |  2 --
>  drivers/gpu/drm/zte/zx_drm_drv.c                |  6 ------
>  26 files changed, 30 insertions(+), 111 deletions(-)
> 
> 
> base-commit: 8c1323b422f8473421682ba783b5949ddd89a3f4
> prerequisite-patch-id: c2b2f08f0eccc9f5df0c0da49fa1d36267deb11d
> prerequisite-patch-id: c67e5d886a47b7d0266d81100837557fda34cb24
> --
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
