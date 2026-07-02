Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84FA0C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QE6w81xrpRhT4NdbXHcvK/EDywec5+5JkmV9FBi7YM=; b=r2ENpNrrpoborj
	wxAXAAER6i4DyDqIINMyAgkHUUaarGYBr4r0tnowH9CHfgVStMhov6TvPvf6WLt+D7A/gl44WWTX7
	4onux7b2RZFebc2z2XIQUV2bLiyWxblmjKXe1h5Zbs9ocgswiSj7uv8Iu352FZw5JIurZSbvQ9l4V
	vXqWnHBxp9p4XY/t2trCnwNFo4BGtXc6FuaF7ZLCQxRRmk+SP7n8JD0bFfLfXLEJb7alvy5O04J9K
	FLbA59XH5V/9AgTbjfkuoWTCPN8gm4qEvOHkYa5OMhtL1tI072UQqjDZZwkchgk41/oLSjtRlW9sf
	JLYAzHfqtIAsGKyqGaXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVw-00000001cHG-3jwe;
	Thu, 09 Jul 2026 08:53:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfIDd-00000004c9Y-38Ii;
	Thu, 02 Jul 2026 14:16:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F28543249;
	Thu,  2 Jul 2026 14:16:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B77881F00A3A;
	Thu,  2 Jul 2026 14:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783001804;
	bh=vcXV/OFRF3o5nc90hy/rNYztoQp19dfE8boUb7skCPA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nBuFO4OKuZkx4g9lHIILMu0GcvZdBu9Hnc71+r10+sQ+KcL0n3xj7kUQucOnqcAk3
	 AkoJXlYf1oNjG50cQd8gf2TOHQhPraHIQjZt480Xg/htWdV6q91LBwFijLRn3TQOuu
	 DUzRy0MHOPnAYLdnUDmlOOE6s8dMsOCBWennldGjml9Hl6vq1cQQi9Nbr1EERzrjN/
	 Lkc41jqy6VqEbMgqwe1omDOJT4iOl7aycvqDHrKI8KUC4jXNXsDmIx9h9ZJsJesofT
	 OviVXSDvnQJkEiSWSZwtp7bcBRhTwnjivbJlK0EsZWjLSEUjELxUeBndnhMBbTL5bE
	 /U9iv5KrQkB8g==
Date: Thu, 2 Jul 2026 15:16:20 +0100
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
Subject: Re: [PATCH 02/13] mm/vma: update do_mmap() to use vma_flags_t
Message-ID: <akZwsS-_cywsXSjL@lucifer>
References: <e0ac58ad2b88ff7e2f0024e3286b2e786f79ca32.1782760670.git.ljs@kernel.org>
 <20260702111531.64883-1-lance.yang@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702111531.64883-1-lance.yang@linux.dev>
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

On Thu, Jul 02, 2026 at 07:15:31PM +0800, Lance Yang wrote:
>
> On Mon, Jun 29, 2026 at 08:25:25PM +0100, Lorenzo Stoakes wrote:
> >The core do_mmap() function accepts a vm_flags_t parameter which it then
> >manipulates before passing to mmap_region() to do the heavy lifting of the
> >memory mapping.
> >
> >Update do_mmap() to instead accept a vma_flags_t parameter, and adjust all
> >the logic within do_mmap() to manipulate this instead.
> >
> >This is as part of the ongoing effort to convert VMA flags from a system
> >word size to a bitmap type which allows us to unrestrict the number of VMA
> >flags, as well as gain control over how VMA flag manipulation occurs.
> >
> >We do not cascade these changes to all functions which accept vm_flags_t,
> >but rather use vma_flags_to_legacy() where necessary, specifically
> >deferring converting calc_vm_prot_bits(), calc_vm_flag_bits() and
> >__get_unmapped_area() to vma_flags_t.
> >
> >Also utilise the new vma_flags_can_grow() predicate which correctly handles
> >the case of architectures without upward growing stacks.
> >
> >As part of this change, introduce VMA_SHADOW_STACK so we can correctly
> >handle the case of the shadow stack not being defined.
> >
> >No functional change intended.
> >
> >Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
> >---
>
> Not exactly a small one :) I stared at this patch for a while, hopefully
> don't miss anythig ...

Yeah sorry maybe I could have broken this down more!

>
> Just one tiny nit below. Overall, LGTM, feel free to add:
>
> Reviewed-by: Lance Yang <lance.yang@linux.dev>

Thanks!

>
> [...]
> >diff --git a/mm/mmap.c b/mm/mmap.c
> >index 46174e706bbe..547352183214 100644
> >--- a/mm/mmap.c
> >+++ b/mm/mmap.c
> [...]
> >@@ -488,23 +496,27 @@ unsigned long do_mmap(struct file *file, unsigned long addr,
> > 		 * Check to see if we are violating any seals and update VMA
> > 		 * flags if necessary to avoid future seal violations.
> > 		 */
> >-		err = memfd_check_seals_mmap(file, &vm_flags);
> >+		err = memfd_check_seals_mmap(file, &vma_flags);
> > 		if (err)
> > 			return (unsigned long)err;
> > 	} else {
> > 		switch (flags & MAP_TYPE) {
> > 		case MAP_SHARED:
> >-			if (vm_flags & (VM_GROWSDOWN|VM_GROWSUP))
> >+			if (vma_flags_can_grow(&vma_flags))
> > 				return -EINVAL;
> > 			/*
> > 			 * Ignore pgoff.
> > 			 */
> > 			pgoff = 0;
> >-			vm_flags |= VM_SHARED | VM_MAYSHARE;
> >+			vma_flags_set(&vma_flags, VMA_SHARED_BIT, VMA_MAYSHARE_BIT);
> > 			break;
> >-		case MAP_DROPPABLE:
> >-			if (VM_DROPPABLE == VM_NONE)
> >+		case MAP_DROPPABLE: {
> >+			vma_flags_t droppable = VMA_DROPPABLE;
> >+
> >+			if (vma_flags_empty(&droppable))
> > 				return -EOPNOTSUPP;
> >+			vma_flags_set_mask(&vma_flags, droppable);
> >+
> > 			/*
> > 			 * A locked or stack area makes no sense to be droppable.
> > 			 *
> >@@ -515,23 +527,24 @@ unsigned long do_mmap(struct file *file, unsigned long addr,
> > 			 */
> > 			if (flags & (MAP_LOCKED | MAP_HUGETLB))
> > 			        return -EINVAL;
> >-			if (vm_flags & (VM_GROWSDOWN | VM_GROWSUP))
> >+			if (vma_flags_can_grow(&vma_flags))
> > 			        return -EINVAL;
> >
> >-			vm_flags |= VM_DROPPABLE;
>
> Old code checked VM_GROWSDOWN|VM_GROWSUP before seting VM_DROPPABLE. New
> code flips that around. Hmm, shouldn't master, just made me look twice ;)
>
> Maybe keep old order?

I guess I feared that defining droppable above then referencing it below would
be less clear?

Can move if you feel strongly about it, and sorry for making the move at the
same time as the general vm_flags_t -> vma_flags_t refactor as it does make that
less clear...

>
> Cheers, Lance
>
> >-
> > 			/*
> > 			 * If the pages can be dropped, then it doesn't make
> > 			 * sense to reserve them.
> > 			 */
> >-			vm_flags |= VM_NORESERVE;
> >+			vma_flags_set(&vma_flags, VMA_NORESERVE_BIT);
> >
> > 			/*
> > 			 * Likewise, they're volatile enough that they
> > 			 * shouldn't survive forks or coredumps.
> > 			 */
> >-			vm_flags |= VM_WIPEONFORK | VM_DONTDUMP;
> >+			vma_flags_set(&vma_flags, VMA_WIPEONFORK_BIT,
> >+				      VMA_DONTDUMP_BIT);
> >+
> > 			fallthrough;
> >+		}
> > 		case MAP_PRIVATE:
> > 			/*
> > 			 * Set pgoff according to addr for anon_vma.
> [...]

Thanks, Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
