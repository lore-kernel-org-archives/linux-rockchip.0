Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 743A9C44506
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3V7eBHStkPLe4tPBIzrag08qS9KpVbtIIjKI3uc6SXw=; b=XzXHjbTQ0B/szN
	6XqdF+7PayX5pzMN0vlVmiuaRN+Ka16a7Wz/XIrcomkYeht2acudU9YZZTf+0+e1cpJkfhyHqUOn6
	gO+bXOp+XoQgVz7IXQUQY1Igg7O3810lYYKRF9xyRej9I9cQpcu2xF/V7+Pk6GtP55v2SFiWgyLJE
	ubLK04rF9CphPAn8t/VquQT/R4sOcZenT7k8mLk6ZNjfYVh82q8oObRRfYdK6IA1bwHBpMY+h2Rpc
	L4NhIdYjiH9lhm5DVjLZRC7/dAq7pJIs/H45/WKtuhKGu1zw13QLz3NRc7hf77TbT7DigtyB2CvP6
	93++hiIfiN9bGNy/iOuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVz-00000001cMB-0qTE;
	Thu, 09 Jul 2026 08:53:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJHi-00000004nZm-0hVZ;
	Thu, 02 Jul 2026 15:25:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C929640801;
	Thu,  2 Jul 2026 15:25:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F0E41F000E9;
	Thu,  2 Jul 2026 15:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783005900;
	bh=LX3BYrLY2k63JpXB67A/Bjg+Ew5yjhUF+WJZEyA1fRw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kbG+cL/z/Lm6qSE4udnGibaK8FsMK4daZd2R+hoEFAnemIecEE1GgHP0X+YmGanAO
	 lUy6V/tOsn4eLItop07tyF1+tKZLAB376Z73zBZZR/VxVccPToewSf2zWsClidLb0a
	 1ba3VdHACF4EGJhQZxBSvTHBcWlMH/zUclnichRT0/C3hk+pIj4TS7GYchozD+ZWNu
	 evu0CqyUEndELEE8NUvVmpXBep2Kukvvzwrnf2DWGzh4uAWg/PKpNORRO9bOZEjI+M
	 pMTZGas90E8+KBulzvC/BZdad1hSIx2FR4a50cjXxyZVyxi/oq6E9v6gCdozTTgwHV
	 VbLDs0NzwuGjg==
Date: Thu, 2 Jul 2026 16:24:37 +0100
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
Subject: Re: [PATCH 05/13] mm: prefer mm->def_vma_flags in mm logic
Message-ID: <akaCFf_SjccZznnP@lucifer>
References: <3b4ccdc38819b42ddc79ee5a795831208ac7986c.1782760670.git.ljs@kernel.org>
 <20260702121022.49113-1-lance.yang@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702121022.49113-1-lance.yang@linux.dev>
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

On Thu, Jul 02, 2026 at 08:10:22PM +0800, Lance Yang wrote:
>
> On Mon, Jun 29, 2026 at 08:25:28PM +0100, Lorenzo Stoakes wrote:
> >Currently mm->def_flags (of type vm_flags_t) is union'd with
> >mm->def_vma_flags (of type vma_flags_t).
> >
> >As part of the effort to convert vm_flags_t usage to vma_flags_t (in order
> >to no longer be arbitrarily limited to a system word size for VMA flags),
> >prefer mm->def_vma_flags to mm->def_flags throughout the mm logic.
> >
> >No functional change intended.
> >
> >Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
> >---
> > mm/debug.c |  2 +-
> > mm/mlock.c | 13 +++++++------
> > mm/mmap.c  | 11 ++++++-----
> > mm/vma.c   |  4 ++--
> > 4 files changed, 16 insertions(+), 14 deletions(-)
> >
> >diff --git a/mm/debug.c b/mm/debug.c
> >index 497654b36f1a..f0a354a9496a 100644
> >--- a/mm/debug.c
> >+++ b/mm/debug.c
> >@@ -226,7 +226,7 @@ void dump_mm(const struct mm_struct *mm)
> > 		mm->numa_next_scan, mm->numa_scan_offset, mm->numa_scan_seq,
> > #endif
> > 		atomic_read(&mm->tlb_flush_pending),
> >-		mm->def_flags, &mm->def_flags
> >+		vma_flags_to_legacy(mm->def_vma_flags), &mm->def_vma_flags
> > 	);
>
> While at it, one thing for later: dump_mm() still assumes one-world VMA
> flags. That works today since vma_flags_t is one word. Maybe worth a
> BUILD_BUG_ON() here, before that stops being true?

Ah yeah that could actually be pretty straightforward, if you see
https://www.kernel.org/doc/Documentation/printk-formats.txt there is a bitmap
format that could be used.

Can do that on a respin!

>
> Not a big deal though. Feel free to add:
>
> Reviewed-by: Lance Yang <lance.yang@linux.dev>
>
> > }
> > EXPORT_SYMBOL(dump_mm);
> [...]

Cheers, Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
