Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB20C4450D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1Ino8FHmGxrxxd+fFvw6VMECwUjtUA870BuCgoJm1A=; b=NhYKhI49UO7Mph
	8unfmIEuLEXzbYJvRBEpDB9PvseHps100e1Mnr0s2gxTXn/RXobwhHDyGPXBIhmM5GXswLbViRg7u
	N5tf6Kh8RzDKs4pozKMXzJFLHwcDPKOWIxebQY6bROphF58jFcNdTvZ62l8cqKQYQKR5LBRW+VBZG
	+xp7iYrlm7JC8xe42zTQoUm1gTl+ciZe0rgaRUrHcsO8mm7/jbcSfyOee3wKTfBRFDl1HCxqbRFsb
	Y/8nK2M92Zc341BrKDbaK2knN4VFvgOK+1BQpzm5BFFB4LZOYsV9qyNqAkeew5cpvpfqB2GbQIhxK
	/7VJcCZ6RUQqGw2CcygQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVZ-00000001b5H-3SrB;
	Thu, 09 Jul 2026 08:53:25 +0000
Received: from out-170.mta0.migadu.com ([91.218.175.170])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGG5-00000004Pzj-1l6X
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 12:11:10 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782994254;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=szYxJDyUXLwpHCPYtdT5QZRTamk7ohIwjDiVPC1pzUs=;
	b=o2h14zEvKcQ49vaQ50LBNnbgHGGpFBTA0OsIFCWdpiUc7gYaraiUcJHgmdFM4mBzY7pBJH
	3Nawgn9WkBzIHxRb3Nw1H0UdEQI7UMwMGIksMhfoUjYHvm6uqPS5csZAIdTgWkWJ0NxwiR
	+fbu3PSBP2IvpsY/0wNqYNag0+1ZZPU=
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
Subject: Re: [PATCH 05/13] mm: prefer mm->def_vma_flags in mm logic
Date: Thu,  2 Jul 2026 20:10:22 +0800
Message-Id: <20260702121022.49113-1-lance.yang@linux.dev>
In-Reply-To: <3b4ccdc38819b42ddc79ee5a795831208ac7986c.1782760670.git.ljs@kernel.org>
References: <3b4ccdc38819b42ddc79ee5a795831208ac7986c.1782760670.git.ljs@kernel.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_051109_623597_D30396C9 
X-CRM114-Status: UNSURE (   6.84  )
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


On Mon, Jun 29, 2026 at 08:25:28PM +0100, Lorenzo Stoakes wrote:
>Currently mm->def_flags (of type vm_flags_t) is union'd with
>mm->def_vma_flags (of type vma_flags_t).
>
>As part of the effort to convert vm_flags_t usage to vma_flags_t (in order
>to no longer be arbitrarily limited to a system word size for VMA flags),
>prefer mm->def_vma_flags to mm->def_flags throughout the mm logic.
>
>No functional change intended.
>
>Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
>---
> mm/debug.c |  2 +-
> mm/mlock.c | 13 +++++++------
> mm/mmap.c  | 11 ++++++-----
> mm/vma.c   |  4 ++--
> 4 files changed, 16 insertions(+), 14 deletions(-)
>
>diff --git a/mm/debug.c b/mm/debug.c
>index 497654b36f1a..f0a354a9496a 100644
>--- a/mm/debug.c
>+++ b/mm/debug.c
>@@ -226,7 +226,7 @@ void dump_mm(const struct mm_struct *mm)
> 		mm->numa_next_scan, mm->numa_scan_offset, mm->numa_scan_seq,
> #endif
> 		atomic_read(&mm->tlb_flush_pending),
>-		mm->def_flags, &mm->def_flags
>+		vma_flags_to_legacy(mm->def_vma_flags), &mm->def_vma_flags
> 	);

While at it, one thing for later: dump_mm() still assumes one-world VMA
flags. That works today since vma_flags_t is one word. Maybe worth a
BUILD_BUG_ON() here, before that stops being true?

Not a big deal though. Feel free to add:

Reviewed-by: Lance Yang <lance.yang@linux.dev>

> }
> EXPORT_SYMBOL(dump_mm);
[...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
