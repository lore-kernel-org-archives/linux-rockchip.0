Return-Path: <SRS0=+8lW=CR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3F60C2BBD0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 08:55:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73EC920678
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 08:55:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="seP/Qz6D";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="PGlAHISs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73EC920678
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bVeVOdlBkA7M9gMH+4SqgbDVkZ6wyMJisbli30ueVwk=; b=seP/Qz6DYbc5733QZws0L7pmv
	Zpxkg9zOVq+VVTTRNYGQrjH6UtR9eygIa47LDerC+1R+3D1LSKapSqzI84kNMIKE4zyQYY8YEVVua
	KGGI5Cj0i9Zv2ID9GT5BPo6HyY0ErjbwIJZW2cP5h4fd2qiFpTUhkkOzPyEwvFN5gbZJknOWCv6BQ
	jj6zZMgPHUByDjeVVTZrYUi03IEsji63Vdr2LZF8z9b+b7El65WfA05YERMAF9krIFJiX4PWFfokq
	TYhcGnoo2UKzkTrzCAx1i/ahFJHYPPKc3wxBIeYBlQDD3K5KWuIP9amq5169InCJH+bJmrK7SRYxg
	eJc22c31g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFZPs-0002xN-Se; Tue, 08 Sep 2020 08:55:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFZPo-0002vs-K0
 for linux-rockchip@lists.infradead.org; Tue, 08 Sep 2020 08:55:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so16483732wmj.2
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2020 01:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=lPf7+5yaWPR4Bsu29CBYqFns/59BDsvYdpze1XOObUQ=;
 b=PGlAHISsJbb/iYgixfJKVAK0d3OOuP3SlP2TjTpoK/oyd/DkyWjQ7j9CtU74WPEw0A
 NkxDuWQKM4W+M6eiE0fRmROTwl4OHi/jQ6z3R8Ikhb+ljBKxuSnOMNBFuSVwV7AkQa34
 kBB3vAMyk0pYZpn9c7JUOZ/xI0bfjYSUvtffY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=lPf7+5yaWPR4Bsu29CBYqFns/59BDsvYdpze1XOObUQ=;
 b=KFa8gz8CZ1zfXK2lAv+GdtJXmCjAp5btxt2E7Q8ghbjsukJCQ32jE+6BwYDcfDO8vz
 pTDBwcpT20/7Py6i7MsOznHck+acdGDFqVF8p7J90o7u9mYbmqYdU6+P3jTxiOpnvRIe
 6zXDM9+RWgoRVvCrfW1nZUgYUDYVKT0zXSizWk4s/qYoE/pF8yaDGg1Vb8WfohiINYMx
 oiovpOGMj4+ola8uzb177Oflb7F5yPnyyXlCugKUDTm4qarepmuoQks4nDXkg5XHuDRl
 svCw9sS9iPibqAakRFOI8imWM9cjl0mWAqEnMORFhaQqbgq4HHcpJtsbr6GpZD+Se0TX
 OWcQ==
X-Gm-Message-State: AOAM532pnck03nvSEyAR7R4MHW4VOlhO8xeNKGE8EePfhtA1dSG59dmj
 qmPTNeg+/LvQPnnquCAuhIsxXg==
X-Google-Smtp-Source: ABdhPJzRIgnrsr1zISzj3JMMO+qHmnUUaLRMb8phFavthqU3M8id+c7krZN538k/E4IFJZLkveZLYQ==
X-Received: by 2002:a1c:e256:: with SMTP id z83mr3369682wmg.33.1599555347784; 
 Tue, 08 Sep 2020 01:55:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l10sm30834268wru.59.2020.09.08.01.55.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 01:55:47 -0700 (PDT)
Date: Tue, 8 Sep 2020 10:55:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: [PATCH v4 1/1] drm: allow limiting the scatter list size.
Message-ID: <20200908085544.GI2352366@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908054858.um34wojjv6uhi7d3@sirius.home.kraxel.org>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200908_045548_754020_2859B46A 
X-CRM114-Status: GOOD (  26.57  )
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
 Daniel Vetter <daniel@ffwll.ch>,
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

On Tue, Sep 08, 2020 at 07:48:58AM +0200, Gerd Hoffmann wrote:
> On Mon, Sep 07, 2020 at 03:53:02PM +0200, Daniel Vetter wrote:
> > On Mon, Sep 7, 2020 at 1:24 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
> > >
> > > Add drm_device argument to drm_prime_pages_to_sg(), so we can
> > > call dma_max_mapping_size() to figure the segment size limit
> > > and call into __sg_alloc_table_from_pages() with the correct
> > > limit.
> > >
> > > This fixes virtio-gpu with sev.  Possibly it'll fix other bugs
> > > too given that drm seems to totaly ignore segment size limits
> > > so far ...
> > >
> > > v2: place max_segment in drm driver not gem object.
> > > v3: move max_segment next to the other gem fields.
> > > v4: just use dma_max_mapping_size().
> > >
> > > Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
> > 
> > Uh, are you sure this works in all cases for virtio?
> 
> Sure, I've tested it ;)
> 
> > The comments I've found suggest very much not ... Or is that all very
> > old stuff only that no one cares about anymore?
> 
> I think these days it is possible to override dma_ops per device, which
> in turn allows virtio to deal with the quirks without the rest of the
> kernel knowing about these details.
> 
> I also think virtio-gpu can drop the virtio_has_dma_quirk() checks, just
> use the dma api path unconditionally and depend on virtio core having
> setup dma_ops in a way that it JustWorks[tm].  I'll look into that next.

The comment above vring_use_dma_api() suggests that this has not yet
happened, that's why I'm asking. If this has happened then I think it'd be
best if you remove that todo entry and update it, as part of the overall
series to add dma_max_mapping_size and remove the quirks.

Otherwise this all is a bit wtf material :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
