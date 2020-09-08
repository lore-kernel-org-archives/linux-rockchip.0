Return-Path: <SRS0=+8lW=CR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4456C2BBD0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 11:37:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75189206A4
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 11:37:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Qa4mmmku";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="TRI4o8zL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 75189206A4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S4vZA+K4gh4aWDIRyn7cOhQi6zFk52yUz5FdCfBmkMY=; b=Qa4mmmkueApdXcSV3vUUb6rQ7
	Fz2EdnEjgmUnwGeJvn0sylj/1Cfc7Qa+Ad6bF/7zlNl70V9Idi4E3LMBWDn7H2Fj5bnmGPYvpEOx0
	EQOSCfqS66Yh+KSGLWb2X/NPntO0BGRaGIjQ65uvQA6cMXP5RDJgwgUmUpL6OEPXXK6b0rOdsLyoC
	3lDm3vfqo3sQJQX959DL0Vwg2eDl0VMnArhG2eNMbbGJY8Oxs48WZeEEwbtfR3j+bCeSRiE/AauB7
	/icEoU+6NSM5PSLjbEimVk7/fJjobIPs7C6k0RE2w5o21/qC3otuxieWlTcsY98zUzR4xhhPZxz2T
	q4cw+e20w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFbwC-00053A-Gg; Tue, 08 Sep 2020 11:37:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFbw4-0004yu-EU
 for linux-rockchip@lists.infradead.org; Tue, 08 Sep 2020 11:37:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id s12so352934wrw.11
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2020 04:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=I/sh0hf7RWpKTkHRG2sXo6X29i3mK1fyatkLVFjwPyY=;
 b=TRI4o8zL814YHGA/D/zYMJIAaCIYqFZ0mIpUDMLZUZN87cVGkWukeoAQibFqRSdTi0
 6pbezBxBfFFSAjRUKWB8QJP5CHgs93NHYtFiS1nIDp648nb0kIv2ZVQ/RTs1fTwlNaec
 GPg0wCc5jkN3j+ma2gtmxo4nY/EYhDvIrUWKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=I/sh0hf7RWpKTkHRG2sXo6X29i3mK1fyatkLVFjwPyY=;
 b=QoOgxbJi1vjMAVO6HLtG925P3e+y8zN2dDHoMvMfSw4SzVTdGrGsapIameuGi8xTDu
 CuL/knAHyN+QsRcZhDbE5Sb9s4PcNV/QIs8V7/wJ5e9z+LZc+mEpA99P8v6n7Ud6+PsV
 wigRYw9p/4q75bTyFXYdamqoEy/d5TwiDNLvvTGecc6rL8xN/NUg2aV/kulRSdDMh7Ot
 UN6IzwaIot2MfD1PtTznV5qunTBQS6XCs3+OvZ/H7ynjbSdtQRZ4QswF8Vxv+aiTthc9
 yLhfIDAE4EZdJgM9+bbwVetYf8gDLGfhG/I3/ptTHpkuV7IoGQsHslu7GBcikMzuY6gm
 SZ9A==
X-Gm-Message-State: AOAM532zqEE47E9pUmPavoSrJXBJAKflQyztVzZZ9ZGjM+xpKyFB8Gkv
 QfcQMBUZbdmdylTxOv9EnR1zlQ==
X-Google-Smtp-Source: ABdhPJyF2qwliIvI/LNW3ilYwO975TKwRXyUs29RK60LvcJNYZwaiKnp5x/7ZaLEGFTKwLjPhYZ/og==
X-Received: by 2002:adf:fd01:: with SMTP id e1mr24749831wrr.44.1599565035147; 
 Tue, 08 Sep 2020 04:37:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e18sm39103291wra.36.2020.09.08.04.37.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 04:37:14 -0700 (PDT)
Date: Tue, 8 Sep 2020 13:37:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: [PATCH v4 1/1] drm: allow limiting the scatter list size.
Message-ID: <20200908113712.GL2352366@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas Stach <l.stach@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Ben Skeggs <bskeggs@redhat.com>, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DRM DRIVERS FOR VIVANTE GPU IP"
 <etnaviv@lists.freedesktop.org>, 
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>, 
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>,
 "moderated list:DRM DRIVERS FOR XEN" <xen-devel@lists.xenproject.org>
References: <20200907112425.15610-1-kraxel@redhat.com>
 <20200907112425.15610-2-kraxel@redhat.com>
 <CAKMK7uGjT73rh=9iuCKAXvC_CaOuygm8PgOQgofkTgH7wRysFw@mail.gmail.com>
 <20200908054858.um34wojjv6uhi7d3@sirius.home.kraxel.org>
 <20200908085544.GI2352366@phenom.ffwll.local>
 <20200908100253.b22sff23737l77bo@sirius.home.kraxel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908100253.b22sff23737l77bo@sirius.home.kraxel.org>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200908_073716_569812_EB14A02C 
X-CRM114-Status: GOOD (  22.65  )
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
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, Thierry Reding <thierry.reding@gmail.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Ben Skeggs <bskeggs@redhat.com>, Russell King <linux+etnaviv@armlinux.org.uk>,
 "moderated list:DRM DRIVERS FOR XEN" <xen-devel@lists.xenproject.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "moderated list:DRM DRIVERS FOR VIVANTE GPU IP"
 <etnaviv@lists.freedesktop.org>, Maxime Ripard <mripard@kernel.org>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>,
 Sean Paul <sean@poorly.run>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 08, 2020 at 12:02:53PM +0200, Gerd Hoffmann wrote:
> > > > The comments I've found suggest very much not ... Or is that all very
> > > > old stuff only that no one cares about anymore?
> > > 
> > > I think these days it is possible to override dma_ops per device, which
> > > in turn allows virtio to deal with the quirks without the rest of the
> > > kernel knowing about these details.
> > > 
> > > I also think virtio-gpu can drop the virtio_has_dma_quirk() checks, just
> > > use the dma api path unconditionally and depend on virtio core having
> > > setup dma_ops in a way that it JustWorks[tm].  I'll look into that next.
> > 
> > The comment above vring_use_dma_api() suggests that this has not yet
> > happened, that's why I'm asking.
> 
> Hmm, wading through the code, seems it indeed happen yet, even though my
> testing didn't show any issues.  Probably pure luck because devices and
> cpus have the same memory view on x86.  Guess I need to try this on
> ppc64 to see it actually failing ...
> 
> So dropping the virtio_has_dma_quirk() checks isn't going to fly.
> 
> Using dma_max_mapping_size() should be fine though.  It might use a
> lower limit than needed for virtio, but it should not break things.

Makes sense. On this patch here:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

And I guess would be good if virtio pushes a bit more towards using the
dma api abstraction fully so we can get rid of these hacks. Virtio feels
like a driver that really should be using dma-api and not dig around
behind it because "it' makes stuff 0.5% faster" or so, since being
virtualized it's already not the king of speed anyway :-)

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
