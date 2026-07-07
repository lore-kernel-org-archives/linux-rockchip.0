Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44D77C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIMuIUndX19z9sYvdC5A/byekTPFwpKqwf8uNsKICXA=; b=si/n/NayuM6c3i
	Ut+WqomHMV2V5IZOl3oXxxgMXp9dZFmVnBt5oljEBEojM3hvnOyq58lMKKRj9lYsQFydUEsa4vNTb
	LSigFwJ+S7MGHJTtGjbHb6Y5oM+O6v3RBTjR86u6gygdOtv4t72e8GnvPB1SMfuBMknva157BEgXY
	Ng1s0KtbzCzKKxqCTpLE0dUVns4zTB4nGbBydafSoulqCG41LfX5FmJYHg/mIwWzFieKGRPFVnmN6
	iVLkm/cmLXc3BdZ4bM7R6OjngOjgFFeDyuN2ZF0KTbAgXoaDoZOEWZLAVc9u4340zNDOPAzHONINb
	yrvc6IIvI2ZABRFR/lvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkWQ-00000001dWc-1ryG;
	Thu, 09 Jul 2026 08:54:18 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh2rh-0000000EilF-3KMb;
	Tue, 07 Jul 2026 10:17:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 86145419A0;
	Tue,  7 Jul 2026 10:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 122461F000E9;
	Tue,  7 Jul 2026 10:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783419441;
	bh=mnyEnVNjUbkl63yjftBd6ZAUslZHuhLMLE5i1q1dbiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cGH+4V3qnWn/h2ntR4JOMP1MeFASTJyb/ukIFIKga6vmMPs4hWnZeyozgnP8o9zcj
	 4aOepXlE5yG0XgvATIbejO38So9984JOSQXxfemV7MrbXTQdbQqJryZ7by0rmLtk6g
	 KbyecrBlOO6RxZhZHoEJHQvN3lfQ+IRVIfllVkFrcFe5jzAzy0lAaGw02N38CG8Xem
	 bIuNc24pIIBeQZLitf75XKOixE/v2BoAd9XaTV+y7NflJFaBKiVOSfh8s3qL1kjbV3
	 QtnOkHzUZcffKxdXoostqrwbOmOdDgDEYFoMQefdIk5SYi6OuZQQ8BSF6bkbad2igD
	 ZZ2I4X8hc6i0g==
Date: Tue, 7 Jul 2026 11:16:56 +0100
From: Lorenzo Stoakes <ljs@kernel.org>
To: Zi Yan <ziy@nvidia.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Lucas Stach <l.stach@pengutronix.de>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@kernel.org>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Gerd Hoffmann <kraxel@redhat.com>, 
	Dmitry Osipenko <dmitry.osipenko@collabora.com>, Zack Rusin <zack.rusin@broadcom.com>, 
	Matthew Brost <matthew.brost@intel.com>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, 
	Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>, Helge Deller <deller@gmx.de>, Benjamin LaHaise <bcrl@kvack.org>, 
	Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, 
	Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, 
	David Hildenbrand <david@kernel.org>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	"Liam R . Howlett" <liam@infradead.org>, Nico Pache <npache@redhat.com>, 
	Ryan Roberts <ryan.roberts@arm.com>, Dev Jain <dev.jain@arm.com>, Barry Song <baohua@kernel.org>, 
	Lance Yang <lance.yang@linux.dev>, Hugh Dickins <hughd@google.com>, 
	Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>, 
	Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Jann Horn <jannh@google.com>, 
	Pedro Falcato <pfalcato@suse.de>, Kees Cook <kees@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org, etnaviv@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
	nouveau@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, 
	linux-fbdev@vger.kernel.org, linux-aio@kvack.org, linux-fsdevel@vger.kernel.org, 
	linux-mm@kvack.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH 03/13] mm: convert __get_unmapped_area() to use
 vma_flags_t
Message-ID: <akzR7JQuaKEQpH5Y@lucifer>
References: <cover.1782760670.git.ljs@kernel.org>
 <b1ad7c4443f5cba622e4c48c5a9ef15427001a93.1782760670.git.ljs@kernel.org>
 <DJRZGEZU5ESV.3IP5LEAUQJCBK@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DJRZGEZU5ESV.3IP5LEAUQJCBK@nvidia.com>
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

On Mon, Jul 06, 2026 at 10:28:24PM -0400, Zi Yan wrote:
> On Mon Jun 29, 2026 at 3:25 PM EDT, Lorenzo Stoakes wrote:
> > Update __get_unmapped_area() to be parameterised by vma_flags_t rather than
> > vm_flags_t as part of the effort to move VMA flags from a system word to a
> > bitmap.
> >
> > We cascade the changes up to arch_get_unmapped_area_topdown() and
> > arch_get_unmapped_area(), where, for now, we use vma_flags_to_legacy() in
> > order to propagate the VMA flags.
> >
> > No functional change intended.
> >
> > Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
> > ---
> >  fs/hugetlbfs/inode.c     |  3 ++-
> >  include/linux/huge_mm.h  | 10 +++++-----
> >  include/linux/mm.h       |  6 ++++--
> >  include/linux/sched/mm.h | 12 ++++++------
> >  mm/huge_memory.c         | 21 ++++++++++++---------
> >  mm/mmap.c                | 27 ++++++++++++++-------------
> >  6 files changed, 43 insertions(+), 36 deletions(-)
> >
> <snip>
>
> > diff --git a/include/linux/sched/mm.h b/include/linux/sched/mm.h
> > index 95d0040df584..b301ec90740a 100644
> > --- a/include/linux/sched/mm.h
> > +++ b/include/linux/sched/mm.h
> > @@ -193,12 +193,12 @@ unsigned long mm_get_unmapped_area(struct file *filp, unsigned long addr,
> >  				   unsigned long len, unsigned long pgoff,
> >  				   unsigned long flags);
> >
> > -unsigned long mm_get_unmapped_area_vmflags(struct file *filp,
> > -					   unsigned long addr,
> > -					   unsigned long len,
> > -					   unsigned long pgoff,
> > -					   unsigned long flags,
> > -					   vm_flags_t vm_flags);
> > +unsigned long mm_get_unmapped_area_vmaflags(struct file *filp,
> > +					    unsigned long addr,
> > +					    unsigned long len,
> > +					    unsigned long pgoff,
> > +					    unsigned long flags,
> > +					    vma_flags_t vma_flags);
>
> Want to use two-tab indentation while at it?

Yeah sure will fix on respin!

>
> <snip>
>
> > @@ -812,19 +811,20 @@ arch_get_unmapped_area_topdown(struct file *filp, unsigned long addr,
> >  }
> >  #endif
> >
> > -unsigned long mm_get_unmapped_area_vmflags(struct file *filp, unsigned long addr,
> > -					   unsigned long len, unsigned long pgoff,
> > -					   unsigned long flags, vm_flags_t vm_flags)
> > +unsigned long mm_get_unmapped_area_vmaflags(struct file *filp, unsigned long addr,
> > +					    unsigned long len, unsigned long pgoff,
> > +					    unsigned long flags, vma_flags_t vma_flags)
>
> Ditto.

Ack will fix!

>
> LGTM.
>
> Reviewed-by: Zi Yan <ziy@nvidia.com>

Thanks!

>
>
> --
> Best Regards,
> Yan, Zi
>

Cheers, Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
