Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D726BC44503
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qj7WLW+wwsdpg2s/brlZwq4bYIR7nQOoyt81MHPSJzM=; b=SHmn1SCKiR2qn/
	eAD+7scZL7K1dGIbWxPjXQJjKhMH6mMchAfOUDAwFsfYW17YBUpX2E7rbUZtmqTsg/diQ2H5uQ8nD
	BtYNkEh9GKw5EU6zY0RpKyORP1tUgbOm+9z6IH+S+TSZwN0X3V4dcqanOjCMVqSEOHnAKHgxUE/YY
	Jdhd0mCMNnFsXDqopQBNDUkMYEDEQpKIpgkO4SE+0w30Ks/s3rASvN2OqxFaJYdHloSCxVsjqPD6k
	BcLqr8JzG2zWVMxvfa+DgeVQhmllqMp+pGakFWcSd3YklwObQDH9uBLAMB4ZEhiTLLmBSzpjGqrOk
	cuIXfCz2mdNfnUJw51Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkW0-00000001cRb-38TK;
	Thu, 09 Jul 2026 08:53:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJWp-00000004qKP-1yFp;
	Thu, 02 Jul 2026 15:40:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C7EA7601CA;
	Thu,  2 Jul 2026 15:40:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE8E41F00A3E;
	Thu,  2 Jul 2026 15:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783006838;
	bh=gNLYS8EYE6bJ5KaXF7DR9fRu4urDF+a7laqqF8q0hcA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Z8vOAtQOT+iGTiy4xQ3GfxWy9CpR6iieY1qxm1fyBJSvxEFV2aEwGeTLwIZE4UbYF
	 sH6QvDHKQJHBXcc/JYlecYNDNZBJEw63vn2taYjOLxg3iNlePJRLcm76SDX3qcqqpf
	 OAzUHT+NRGQHyZOOfos5EJuVfaKEWfkdr4crDOBp2KFX/hKeIetGWLc1I64/oz6RHQ
	 NC8RA6ivq/IEW4DV1d+3Z0k229cWnviqo6Svky+UHUgnyeaFy3m0xyIovRQ1UfVX8n
	 wqqP9ts5FpBy46j7HS+G+te0/D/3BLeS388iQo+wLiLJCSDRdl7jDwGFy3vdpkllGJ
	 NUUDfmqseIbQg==
Date: Thu, 2 Jul 2026 16:40:15 +0100
From: Lorenzo Stoakes <ljs@kernel.org>
To: Lance Yang <lance.yang@linux.dev>
Cc: akpm@linux-foundation.org, tsbogend@alpha.franken.de, 
	maddy@linux.ibm.com, mpe@ellerman.id.au, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	l.stach@pengutronix.de, inki.dae@samsung.com, sw0312.kim@samsung.com, 
	kyungmin.park@samsung.com, krzk@kernel.org, peter.griffin@linaro.org, 
	jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, 
	tursulin@ursulin.net, robin.clark@oss.qualcomm.com, lumag@kernel.org, lyude@redhat.com, 
	dakr@kernel.org, tomi.valkeinen@ideasonboard.com, hjc@rock-chips.com, 
	heiko@sntech.de, andy.yan@rock-chips.com, thierry.reding@kernel.org, 
	mperttunen@nvidia.com, jonathanh@nvidia.com, kraxel@redhat.com, 
	dmitry.osipenko@collabora.com, zack.rusin@broadcom.com, matthew.brost@intel.com, 
	thomas.hellstrom@linux.intel.com, oleksandr_andrushchenko@epam.com, deller@gmx.de, bcrl@kvack.org, 
	viro@zeniv.linux.org.uk, brauner@kernel.org, muchun.song@linux.dev, osalvador@suse.de, 
	david@kernel.org, ziy@nvidia.com, baolin.wang@linux.alibaba.com, 
	liam@infradead.org, npache@redhat.com, ryan.roberts@arm.com, dev.jain@arm.com, 
	baohua@kernel.org, hughd@google.com, vbabka@kernel.org, rppt@kernel.org, 
	surenb@google.com, mhocko@suse.com, jannh@google.com, pfalcato@suse.de, 
	kees@kernel.org, perex@perex.cz, tiwai@suse.com, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org, 
	etnaviv@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, virtualization@lists.linux.dev, 
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, linux-fbdev@vger.kernel.org, 
	linux-aio@kvack.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
	linux-sound@vger.kernel.org
Subject: Re: [PATCH 08/13] mm: introduce vma_get_page_prot() and use it
Message-ID: <akaGOiLz-3Zx6kDs@lucifer>
References: <3bb8bdc4788230c33102166d56cbc5abfad9d4cb.1782760670.git.ljs@kernel.org>
 <20260702123845.95316-1-lance.yang@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702123845.95316-1-lance.yang@linux.dev>
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

On Thu, Jul 02, 2026 at 08:38:45PM +0800, Lance Yang wrote:
>
> On Mon, Jun 29, 2026 at 08:25:31PM +0100, Lorenzo Stoakes wrote:
> >There's a large number of vm_get_page_prot(vma->vm_flags) invocations. Make
> >life easier by introducing vma_get_page_prot() parameterised by the VMA.
> >
> >This also makes converting vm_get_page_prot() to vma_flags_t easier.
> >
> >Also update the userland VMA tests to reflect the change.
> >
> >No functional change intended.
> >
> >Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
> >---
> > drivers/gpu/drm/drm_gem.c                   |  2 +-
> > drivers/gpu/drm/drm_gem_dma_helper.c        |  2 +-
> > drivers/gpu/drm/drm_gem_shmem_helper.c      |  2 +-
> > drivers/gpu/drm/etnaviv/etnaviv_gem.c       |  2 +-
> > drivers/gpu/drm/exynos/exynos_drm_gem.c     |  6 +++---
> > drivers/gpu/drm/i915/gem/i915_gem_mman.c    | 12 ++++++------
> > drivers/gpu/drm/msm/msm_gem.c               |  2 +-
> > drivers/gpu/drm/nouveau/nouveau_gem.c       |  2 +-
> > drivers/gpu/drm/omapdrm/omap_fbdev.c        |  2 +-
> > drivers/gpu/drm/omapdrm/omap_gem.c          |  6 +++---
> > drivers/gpu/drm/rockchip/rockchip_drm_gem.c |  2 +-
> > drivers/gpu/drm/tegra/gem.c                 |  2 +-
> > drivers/gpu/drm/virtio/virtgpu_vram.c       |  2 +-
> > drivers/gpu/drm/vmwgfx/vmwgfx_page_dirty.c  |  2 +-
> > drivers/gpu/drm/xe/xe_device.c              |  2 +-
> > drivers/gpu/drm/xe/xe_mmio_gem.c            |  2 +-
> > drivers/gpu/drm/xen/xen_drm_front_gem.c     |  2 +-
> > drivers/video/fbdev/core/fb_io_fops.c       |  2 +-
>
> One missed?
>
> drivers/gpu/drm/panthor/panthor_gem.c still has:
>
> 	vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
>
> Can use vma_get_page_prot(vma) too.

Oops! Will respin and update. Good spot!

>
> [...]

Thanks, Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
