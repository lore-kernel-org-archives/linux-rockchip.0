Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDE82C44512
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9i6WjcyufMqD47abx5MsACZJjlDQNiBQ9ApF3eWkus=; b=d+Yfr3GVgloMfW
	3FDmefeHKtD7RSRdUP4qKvJ6OGl8YRLs446G2j+BYKaNzJ/d5e/Gcwa0ZCz7lSdQ+7ycFGm4GKDhp
	IEWxFJhYVpQtRGO4EImnvQ8pxAo5hHSVGtr5FhW89sBeTuso6NPYjgUBVJ9MVZCR8/yS0HPpNHhys
	heAOomZRPuFRduRYrsBEOMN51gjfYZ7L98rw+CU6HrdnuIdIk9De1kxL3wBNRQ3Q7MmyiZnNgGeYQ
	Azt5iJVVtxiFApqhqmU/zis86Uqwzw6Vdu7wqkKJnO4xF0uQHiRXJMbnSoPeR7TvuaKOUsw+32G9u
	rao7+Vb0jvrplq3rUkTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVb-00000001bA2-1C2N;
	Thu, 09 Jul 2026 08:53:27 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGi0-00000004SEG-0AII
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 12:40:01 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782995985;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MSqvG6QTDeOE5qt8LI9tLb3iySB/2eramUM4HlZdPG8=;
	b=F10EZD2MKuMsgIZGg+Kv4CpsFBAqfutqUSZV+CnlSj4mTRO6SM+hx7IFnwTXi02n4W5ksq
	B3eV7EruPZaVg8GiZqN77RrtZjvlyRAPzkka+Z5kYwT5shcZ0occtt6vxWz8dsjkDZRJwI
	jZvjN/4FCRiAB3/YW0BqvRoNYnrlgRU=
From: Lance Yang <lance.yang@linux.dev>
To: ljs@kernel.org
Cc: akpm@linux-foundation.org,
	tsbogend@alpha.franken.de,
	maddy@linux.ibm.com,
	mpe@ellerman.id.au,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	l.stach@pengutronix.de,
	inki.dae@samsung.com,
	sw0312.kim@samsung.com,
	kyungmin.park@samsung.com,
	krzk@kernel.org,
	peter.griffin@linaro.org,
	jani.nikula@linux.intel.com,
	joonas.lahtinen@linux.intel.com,
	rodrigo.vivi@intel.com,
	tursulin@ursulin.net,
	robin.clark@oss.qualcomm.com,
	lumag@kernel.org,
	lyude@redhat.com,
	dakr@kernel.org,
	tomi.valkeinen@ideasonboard.com,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	thierry.reding@kernel.org,
	mperttunen@nvidia.com,
	jonathanh@nvidia.com,
	kraxel@redhat.com,
	dmitry.osipenko@collabora.com,
	zack.rusin@broadcom.com,
	matthew.brost@intel.com,
	thomas.hellstrom@linux.intel.com,
	oleksandr_andrushchenko@epam.com,
	deller@gmx.de,
	bcrl@kvack.org,
	viro@zeniv.linux.org.uk,
	brauner@kernel.org,
	muchun.song@linux.dev,
	osalvador@suse.de,
	david@kernel.org,
	ziy@nvidia.com,
	baolin.wang@linux.alibaba.com,
	liam@infradead.org,
	npache@redhat.com,
	ryan.roberts@arm.com,
	dev.jain@arm.com,
	baohua@kernel.org,
	lance.yang@linux.dev,
	hughd@google.com,
	vbabka@kernel.org,
	rppt@kernel.org,
	surenb@google.com,
	mhocko@suse.com,
	jannh@google.com,
	pfalcato@suse.de,
	kees@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	dri-devel@lists.freedesktop.org,
	etnaviv@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org,
	nouveau@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	virtualization@lists.linux.dev,
	intel-xe@lists.freedesktop.org,
	xen-devel@lists.xenproject.org,
	linux-fbdev@vger.kernel.org,
	linux-aio@kvack.org,
	linux-fsdevel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-sound@vger.kernel.org
Subject: Re: [PATCH 08/13] mm: introduce vma_get_page_prot() and use it
Date: Thu,  2 Jul 2026 20:38:45 +0800
Message-Id: <20260702123845.95316-1-lance.yang@linux.dev>
In-Reply-To: <3bb8bdc4788230c33102166d56cbc5abfad9d4cb.1782760670.git.ljs@kernel.org>
References: <3bb8bdc4788230c33102166d56cbc5abfad9d4cb.1782760670.git.ljs@kernel.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_054000_218561_1CE65462 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
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


On Mon, Jun 29, 2026 at 08:25:31PM +0100, Lorenzo Stoakes wrote:
>There's a large number of vm_get_page_prot(vma->vm_flags) invocations. Make
>life easier by introducing vma_get_page_prot() parameterised by the VMA.
>
>This also makes converting vm_get_page_prot() to vma_flags_t easier.
>
>Also update the userland VMA tests to reflect the change.
>
>No functional change intended.
>
>Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
>---
> drivers/gpu/drm/drm_gem.c                   |  2 +-
> drivers/gpu/drm/drm_gem_dma_helper.c        |  2 +-
> drivers/gpu/drm/drm_gem_shmem_helper.c      |  2 +-
> drivers/gpu/drm/etnaviv/etnaviv_gem.c       |  2 +-
> drivers/gpu/drm/exynos/exynos_drm_gem.c     |  6 +++---
> drivers/gpu/drm/i915/gem/i915_gem_mman.c    | 12 ++++++------
> drivers/gpu/drm/msm/msm_gem.c               |  2 +-
> drivers/gpu/drm/nouveau/nouveau_gem.c       |  2 +-
> drivers/gpu/drm/omapdrm/omap_fbdev.c        |  2 +-
> drivers/gpu/drm/omapdrm/omap_gem.c          |  6 +++---
> drivers/gpu/drm/rockchip/rockchip_drm_gem.c |  2 +-
> drivers/gpu/drm/tegra/gem.c                 |  2 +-
> drivers/gpu/drm/virtio/virtgpu_vram.c       |  2 +-
> drivers/gpu/drm/vmwgfx/vmwgfx_page_dirty.c  |  2 +-
> drivers/gpu/drm/xe/xe_device.c              |  2 +-
> drivers/gpu/drm/xe/xe_mmio_gem.c            |  2 +-
> drivers/gpu/drm/xen/xen_drm_front_gem.c     |  2 +-
> drivers/video/fbdev/core/fb_io_fops.c       |  2 +-

One missed?

drivers/gpu/drm/panthor/panthor_gem.c still has:

	vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);

Can use vma_get_page_prot(vma) too.

[...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
