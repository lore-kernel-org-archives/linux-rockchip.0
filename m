Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44DEEC00A89
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 12:54:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA03B2087D
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 12:54:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EsysurUi";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="bPPrnh4B"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA03B2087D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KPzP6av8qaIfrnQmEJbHUDEKbgrY7BuJjOtsn03tyiU=; b=EsysurUisF/7OT9viCJ3VLMZf
	ripjWxGoSxzrAhsT80zO+KqMT3haaH5uDaMQnCRiHH/MRpwpanAsMY4vpQ7jYXcHKdzyusvqj/ZZe
	/sU9GbaJVdZOkBAWSLJCEWR3IL9oKgX1ig2D9q42X5z0Oby2b2Dy09gG8bNX5odtK8uWn2ZwpAK8R
	uOkbuvoK3bGjlCUltLqiAiYNJDMykM3n/R6qnnmtGxzbSyeh+hGOSl2b+J+hYHDHv8fEEqkGQZbEc
	VyjM/Mm6ak6fGhAxDzs7+f++ocXtAFzkatxpKxeGXkESEbN37kHBgGJWtElk3ddStMb1Bni+3Qgam
	VvkvPQpnQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaemm-0004PA-6w; Thu, 05 Nov 2020 12:54:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaemi-0004Nb-JE
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 12:54:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id s13so1508570wmh.4
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2020 04:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iR+CVMR9Igk+i7q6zQ360QpQoQUWwq9hKMxFO8Y7cGA=;
 b=bPPrnh4BjIGHxssI9in0eI8avIf6lVSA1Fd+jmaHNuJRYj4GLesWwatvAf+cWdJ1Gn
 +T1a9zT5WiAc7uq+YkZ1UAi9uQqINJcLFkN5pbawGR6HDSkkCEunVz0GKT5BPbCo522L
 G94YF8sd+EF3xMH5d9NYF5qFQjmBr4VXc5pXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iR+CVMR9Igk+i7q6zQ360QpQoQUWwq9hKMxFO8Y7cGA=;
 b=BF0ASFJMMPU1fMSNGdcIOw5JmgOMKlVoqqtJdkHRlJ50+9qtIorNzIzEwK+ro7m0MI
 ZEMZvtOQVnu1sFPGNDWrhqFqQJwGftTHKTWWiawCcrc1gVShQd7ej7SdKNHW5jHRkldt
 ZTsknMgWV8O+0XX2nOnJfFezGxe1WnHlpIL/UQnXZTAPRTIMPOR57BlImK6I+jtCzotv
 Eem++oN2Z04d45itZidYxPC0YYn2qg4dV403HE+0fsg8rYz1mtPcg5wVDWd0Am09HtXK
 L1wWNPz8EEbjhhlcmR2tnI2WRibxrK72evZvdBQ0wYTQwlEFDLCl6pSxdnzZn/7SZdmq
 MUxQ==
X-Gm-Message-State: AOAM533g/jQPVm0sBGtKaqdT1TkPjj3/qwfVK66ifUc1z7FvxqR2b/eo
 xsyEQI3kxZkmxtjtGN9gbpFpNQ==
X-Google-Smtp-Source: ABdhPJwrW3OjL7kR/bAr74WjxI8azvpsj46DeaIlccjHcQq2wan765xbIbWOOKK6+3jptMrcJuyztQ==
X-Received: by 2002:a1c:6843:: with SMTP id d64mr2670603wmc.131.1604580875284; 
 Thu, 05 Nov 2020 04:54:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m12sm2468188wrs.92.2020.11.05.04.54.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 04:54:34 -0800 (PST)
Date: Thu, 5 Nov 2020 13:54:31 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v5 09/10] dma-buf-map: Add memcpy and pointer-increment
 interfaces
Message-ID: <20201105125431.GW401619@phenom.ffwll.local>
References: <20201020122046.31167-1-tzimmermann@suse.de>
 <20201020122046.31167-10-tzimmermann@suse.de>
 <CACRpkdbvGWKo8y323actUJn9xXmxpgDw1EKLiPH4RqB_kFx=XQ@mail.gmail.com>
 <27acbd7e-d72e-4e05-c147-b50f56e21589@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27acbd7e-d72e-4e05-c147-b50f56e21589@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_075436_789171_68549EA6 
X-CRM114-Status: GOOD (  35.60  )
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
Cc: luben.tuikov@amd.com, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Dave Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, melissa.srw@gmail.com,
 Eric Anholt <eric@anholt.net>, ray.huang@amd.com,
 Gerd Hoffmann <kraxel@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Emil Velikov <emil.velikov@collabora.com>, Rob Herring <robh@kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>, lima@lists.freedesktop.org,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, steven.price@arm.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kukjin Kim <kgene@kernel.org>, Ben Skeggs <bskeggs@redhat.com>,
 linux+etnaviv@armlinux.org.uk, spice-devel@lists.freedesktop.org,
 alyssa.rosenzweig@collabora.com,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 etnaviv@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Hans de Goede <hdegoede@redhat.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 xen-devel@lists.xenproject.org, virtualization@lists.linux-foundation.org,
 Sean Paul <sean@poorly.run>, apaneers@amd.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Qinglang Miao <miaoqinglang@huawei.com>, yuq825@gmail.com,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Nov 05, 2020 at 11:37:08AM +0100, Thomas Zimmermann wrote:
> Hi
> 
> Am 05.11.20 um 11:07 schrieb Linus Walleij:
> > Overall I like this, just an inline question:
> > 
> > On Tue, Oct 20, 2020 at 2:20 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
> > 
> >> To do framebuffer updates, one needs memcpy from system memory and a
> >> pointer-increment function. Add both interfaces with documentation.
> > 
> > (...)
> >> +/**
> >> + * dma_buf_map_memcpy_to - Memcpy into dma-buf mapping
> >> + * @dst:       The dma-buf mapping structure
> >> + * @src:       The source buffer
> >> + * @len:       The number of byte in src
> >> + *
> >> + * Copies data into a dma-buf mapping. The source buffer is in system
> >> + * memory. Depending on the buffer's location, the helper picks the correct
> >> + * method of accessing the memory.
> >> + */
> >> +static inline void dma_buf_map_memcpy_to(struct dma_buf_map *dst, const void *src, size_t len)
> >> +{
> >> +       if (dst->is_iomem)
> >> +               memcpy_toio(dst->vaddr_iomem, src, len);
> >> +       else
> >> +               memcpy(dst->vaddr, src, len);
> >> +}
> > 
> > Are these going to be really big memcpy() operations?
> 
> Individually, each could be a scanline, so a few KiB. (4 bytes *
> horizontal resolution). Updating a full framebuffer can sum up to
> several MiB.
> 
> > 
> > Some platforms have DMA offload engines that can perform memcpy(),They could be
> > drivers/dma, include/linux/dmaengine.h
> > especially if the CPU doesn't really need to touch the contents
> > and flush caches etc.
> > An example exist in some MTD drivers that move large quantities of
> > data off flash memory like this:
> > drivers/mtd/nand/raw/cadence-nand-controller.c
> > 
> > Notice that DMAengine and DMAbuf does not have much in common,
> > the names can be deceiving.
> > 
> > The value of this varies with the system architecture. It is not just
> > a question about performance but also about power and the CPU
> > being able to do other stuff in parallel for large transfers. So *when*
> > to use this facility to accelerate memcpy() is a delicate question.
> > 
> > What I'm after here is if these can be really big, do we want
> > (in the long run, not now) open up to the idea to slot in
> > hardware-accelerated memcpy() here?
> 
> We currently use this functionality for the graphical framebuffer
> console that most DRM drivers provide. It's non-accelerated and slow,
> but this has not been much of a problem so far.
> 
> Within DRM, we're more interested in removing console code from drivers
> and going for the generic implementation.
> 
> Most of the graphics HW allocates framebuffers from video RAM, system
> memory or CMA pools and does not really need these memcpys. Only a few
> systems with small video RAM require a shadow buffer, which we flush
> into VRAM as needed. Those might benefit.
> 
> OTOH, off-loading memcpys to hardware sounds reasonable if we can hide
> it from the DRM code. I think it all depends on how invasive that change
> would be.

I wouldn't, all the additional locks this would pull in sound like
nightmare. And when an oops happens, this might be the only thing that
manages to get the oops to the user.

Unless someone really starts caring about fbcon acceleration I really
wouldn't bother. Ok maybe it also matters for fbdev, but the problem is
that the page fault intercepting alone is already expensive, so the only
real solution if you care about performance in that case is to use kms
natively, and use a dirty rectangle flip (or the DIRTY syscall).

And in there drivers should (and do) use any dma engines they have to
upload the frames already.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
