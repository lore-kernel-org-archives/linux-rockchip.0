Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 010AAC44509
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBRIMw+OcVQoSpDo5qENiCACYfNyRvJVnw63gJyi6Lw=; b=hJo1qVCA/5lucn
	NqfW1wXS7fhpT2Wuq4aNhXXXzMg2VPv2Gumo8PC+8OGs0dTY5Qmu50Zg+H8xVr2gz4On6NpW42zx8
	6Qa7gnEodr1572zVOQ5EnJ2OrC47I47PTpGcPlnfI1qEujLqO3c7LGOl2ZhVSUDahjIvmBi8CIB9z
	LWF/MKsVRMxi8gEJQkSq4XeCsKS0vu25MTTrJEdihRSSOUQcEsyka0y8V7CtpdKsB8DDYLyhHCvcv
	nUqnDUdjzHpHDBZZLbw0zXbxc4EdYekaMv6RGHrEqsRSoeUHqL1ZANoxV39ZiIJxSICJCmxse8b/y
	DypOfqZRNLCY41Lx+MTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVv-00000001cC9-0AYX;
	Thu, 09 Jul 2026 08:53:47 +0000
Received: from out-186.mta0.migadu.com ([2001:41d0:1004:224b::ba])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHEF-00000004V4w-1TTp
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 13:13:20 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782997985;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3WkYIESER5H1pxokBfEp6m9xEZZ5ghGe4TjZZy4BO5I=;
	b=jHDhEc6CTiPftGqyHzVdl3xS/wEnOHSN4PeeVFnRX9fUml//8WA53GAPbsxSbJvWuzc/sf
	tH1rSEqcTxDFS7qyJ0iIaX/a6tA48FPP/mFE4c/byOkvPcPlvJwYSUFubJkz9Jxs6S5ya/
	AItLuFoisprFM8kvEpkf04Kk84Cg/T0=
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
Subject: Re: [PATCH 10/13] mm/vma: convert miscellaneous uses of VMA flags in core mm
Date: Thu,  2 Jul 2026 21:12:33 +0800
Message-Id: <20260702131233.59026-1-lance.yang@linux.dev>
In-Reply-To: <1e7d834c887b6a65627d730addcff13d458c6268.1782760670.git.ljs@kernel.org>
References: <1e7d834c887b6a65627d730addcff13d458c6268.1782760670.git.ljs@kernel.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_061319_540554_1B8CF379 
X-CRM114-Status: UNSURE (   5.52  )
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


On Mon, Jun 29, 2026 at 08:25:33PM +0100, Lorenzo Stoakes wrote:
>Update various uses of legacy flags in vma.c and mmap.c to the new
>vma_flags_t type, updating comments alongside them to be consistent.
>
>Also update __install_special_mapping() to rearrange things slightly to
>accommodate the changes.
>
>Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
>---
[...]
>diff --git a/mm/vma.c b/mm/vma.c
>index b81c05e67a61..ab2ef0f04420 100644
>--- a/mm/vma.c
>+++ b/mm/vma.c
>@@ -3417,23 +3417,27 @@ struct vm_area_struct *__install_special_mapping(
> 	vm_flags_t vm_flags, void *priv,
> 	const struct vm_operations_struct *ops)
> {
>-	int ret;
>+	vma_flags_t vma_flags = legacy_to_vma_flags(vm_flags);
> 	struct vm_area_struct *vma;
>+	int ret;
> 
> 	vma = vm_area_alloc(mm);
>-	if (unlikely(vma == NULL))
>+	if (unlikely(!vma))
> 		return ERR_PTR(-ENOMEM);
> 
>-	vma_set_range(vma, addr, addr + len, 0);
>-	vm_flags |= vma_flags_to_legacy(mm->def_vma_flags) | VM_DONTEXPAND;
>+	vma_flags_set_mask(&vma_flags, mm->def_vma_flags);
>+	vma_flags_set(&vma_flags, VMA_DONTEXPAND_BIT);
> 	if (pgtable_supports_soft_dirty())
>-		vm_flags |= VM_SOFTDIRTY;
>-	vm_flags_init(vma, vm_flags & ~VM_LOCKED_MASK);
>+		vma_flags_set(&vma_flags, VMA_SOFTDIRTY_BIT);
>+	vma_flags_clear_mask(&vma_flags, VMA_LOCKED_MASK);
>+	vma->flags = vma_flags;

Maybe worth a vma_flags_init() helper here to mirror vm_flags_init()?
With this open-coded, we lose the soft-dirty WARN_ON_ONCE sanity check.

Might be nicer to keep that check in one place ;)

[...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
