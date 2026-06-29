Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697ECC44511
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPf3TY39gxUgGZ8FGpTJOkw19/4//85xrgd7cTYTYx8=; b=2A4/eUbYGQZQMn
	Z88aPPvd53f1oH0QuvmKQWzhNvU49SE9dVUfLdZO5Q0iXc9Z7Jk+RysClfEd0BMVBqASuWThd7qR0
	mF0TbLW6PDLfHdzGv0Um5xy75N93BH6jc2kyidOp8MRJKHP9IFTFPq+LlqWb5lRqyxgG2FIaoJHFH
	14up3l+t/OjhqlnCVMXJo8CRvzW52Q4J26bmE+YRspbS5mEBvdeZvg8Sw8c/Wzbh71utKD1E3NiRd
	908VBLp2AkV8msaKWBU8+nFDs+QY/dgfbrzaFdZub3fiTcB32fdUwx6cb3dBcCm8rrilzWVo7mOmu
	KqiOrOF7wA/y7r11CHbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVP-00000001acp-429O;
	Thu, 09 Jul 2026 08:53:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weHcN-0000000FOaH-0tTO;
	Mon, 29 Jun 2026 19:26:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 77E68601C0;
	Mon, 29 Jun 2026 19:26:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EB941F00A3A;
	Mon, 29 Jun 2026 19:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782761165;
	bh=MaO3ayQRsy4eLXJAr5Gtftk/d6G7w4vRnYQhd7ERP88=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=mh42CEnVAN4v5nNg2E2/FA5haGMowMalAtIhiu+jbLMz622FqQ/mkU+OD8A8R+yDp
	 aKYJaUUgJ3tLX8cfrvsmlfZK49qR6WEvGGkeQVA64WyFjSC1BsdkpQ0ktF0R74pkvC
	 mSSIA94MxJ06qZ+pMsoJll3Jsje3muSqIB9/In1/WqYQgCP0+YuPVyG8eVcQbvvNkT
	 XJrCQmi5s5QyHIrhwBlICQZohXF426NyGqUWSgXGrkaMRD9dbErFFKyaoBkMJ1D/QV
	 VeE4pk4MUcm2iFemV68BZLTTbFYfaHPCaDovkn6E5AV34oefv6H0Y/5nizqKm8EYK/
	 k5bPckliCXy3Q==
From: Lorenzo Stoakes <ljs@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Lucas Stach <l.stach@pengutronix.de>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Lyude Paul <lyude@redhat.com>,
	Danilo Krummrich <dakr@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Zack Rusin <zack.rusin@broadcom.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
	Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin LaHaise <bcrl@kvack.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Christian Brauner <brauner@kernel.org>,
	Muchun Song <muchun.song@linux.dev>,
	Oscar Salvador <osalvador@suse.de>,
	David Hildenbrand <david@kernel.org>,
	Zi Yan <ziy@nvidia.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	"Liam R . Howlett" <liam@infradead.org>,
	Nico Pache <npache@redhat.com>,
	Ryan Roberts <ryan.roberts@arm.com>,
	Dev Jain <dev.jain@arm.com>,
	Barry Song <baohua@kernel.org>,
	Lance Yang <lance.yang@linux.dev>,
	Hugh Dickins <hughd@google.com>,
	Vlastimil Babka <vbabka@kernel.org>,
	Mike Rapoport <rppt@kernel.org>,
	Suren Baghdasaryan <surenb@google.com>,
	Michal Hocko <mhocko@suse.com>,
	Jann Horn <jannh@google.com>,
	Pedro Falcato <pfalcato@suse.de>,
	Kees Cook <kees@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
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
Subject: [PATCH 03/13] mm: convert __get_unmapped_area() to use vma_flags_t
Date: Mon, 29 Jun 2026 20:25:26 +0100
Message-ID: <b1ad7c4443f5cba622e4c48c5a9ef15427001a93.1782760670.git.ljs@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <cover.1782760670.git.ljs@kernel.org>
References: <cover.1782760670.git.ljs@kernel.org>
MIME-Version: 1.0
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

Update __get_unmapped_area() to be parameterised by vma_flags_t rather than
vm_flags_t as part of the effort to move VMA flags from a system word to a
bitmap.

We cascade the changes up to arch_get_unmapped_area_topdown() and
arch_get_unmapped_area(), where, for now, we use vma_flags_to_legacy() in
order to propagate the VMA flags.

No functional change intended.

Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
---
 fs/hugetlbfs/inode.c     |  3 ++-
 include/linux/huge_mm.h  | 10 +++++-----
 include/linux/mm.h       |  6 ++++--
 include/linux/sched/mm.h | 12 ++++++------
 mm/huge_memory.c         | 21 ++++++++++++---------
 mm/mmap.c                | 27 ++++++++++++++-------------
 6 files changed, 43 insertions(+), 36 deletions(-)

diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
index 894d02e73302..fe7d5a5d60bd 100644
--- a/fs/hugetlbfs/inode.c
+++ b/fs/hugetlbfs/inode.c
@@ -184,7 +184,8 @@ hugetlb_get_unmapped_area(struct file *file, unsigned long addr,
 	if (addr)
 		addr0 = ALIGN(addr, huge_page_size(h));
 
-	return mm_get_unmapped_area_vmflags(file, addr0, len, pgoff, flags, 0);
+	return mm_get_unmapped_area_vmaflags(file, addr0, len, pgoff, flags,
+					     EMPTY_VMA_FLAGS);
 }
 
 /*
diff --git a/include/linux/huge_mm.h b/include/linux/huge_mm.h
index 653b81d08fe7..ae84a714907f 100644
--- a/include/linux/huge_mm.h
+++ b/include/linux/huge_mm.h
@@ -391,9 +391,9 @@ static inline bool thp_disabled_by_hw(void)
 
 unsigned long thp_get_unmapped_area(struct file *filp, unsigned long addr,
 		unsigned long len, unsigned long pgoff, unsigned long flags);
-unsigned long thp_get_unmapped_area_vmflags(struct file *filp, unsigned long addr,
+unsigned long thp_get_unmapped_area_vmaflags(struct file *filp, unsigned long addr,
 		unsigned long len, unsigned long pgoff, unsigned long flags,
-		vm_flags_t vm_flags);
+		vma_flags_t vma_flags);
 
 enum split_type {
 	SPLIT_TYPE_UNIFORM,
@@ -615,9 +615,9 @@ static inline unsigned long thp_vma_allowable_orders(struct vm_area_struct *vma,
 #define thp_get_unmapped_area	NULL
 
 static inline unsigned long
-thp_get_unmapped_area_vmflags(struct file *filp, unsigned long addr,
-			      unsigned long len, unsigned long pgoff,
-			      unsigned long flags, vm_flags_t vm_flags)
+thp_get_unmapped_area_vmaflags(struct file *filp, unsigned long addr,
+			       unsigned long len, unsigned long pgoff,
+			       unsigned long flags, vma_flags_t vma_flags)
 {
 	return 0;
 }
diff --git a/include/linux/mm.h b/include/linux/mm.h
index cc2a87755adb..474b3698f565 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -4160,13 +4160,15 @@ unsigned long randomize_page(unsigned long start, unsigned long range);
 
 unsigned long
 __get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
-		    unsigned long pgoff, unsigned long flags, vm_flags_t vm_flags);
+		    unsigned long pgoff, unsigned long flags,
+		    vma_flags_t vma_flags);
 
 static inline unsigned long
 get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
 		  unsigned long pgoff, unsigned long flags)
 {
-	return __get_unmapped_area(file, addr, len, pgoff, flags, 0);
+	return __get_unmapped_area(file, addr, len, pgoff, flags,
+				   EMPTY_VMA_FLAGS);
 }
 
 unsigned long do_mmap(struct file *file, unsigned long addr,
diff --git a/include/linux/sched/mm.h b/include/linux/sched/mm.h
index 95d0040df584..b301ec90740a 100644
--- a/include/linux/sched/mm.h
+++ b/include/linux/sched/mm.h
@@ -193,12 +193,12 @@ unsigned long mm_get_unmapped_area(struct file *filp, unsigned long addr,
 				   unsigned long len, unsigned long pgoff,
 				   unsigned long flags);
 
-unsigned long mm_get_unmapped_area_vmflags(struct file *filp,
-					   unsigned long addr,
-					   unsigned long len,
-					   unsigned long pgoff,
-					   unsigned long flags,
-					   vm_flags_t vm_flags);
+unsigned long mm_get_unmapped_area_vmaflags(struct file *filp,
+					    unsigned long addr,
+					    unsigned long len,
+					    unsigned long pgoff,
+					    unsigned long flags,
+					    vma_flags_t vma_flags);
 
 unsigned long
 generic_get_unmapped_area(struct file *filp, unsigned long addr,
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index e94f56487225..d6c5f51ee399 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -1196,7 +1196,7 @@ static inline bool is_transparent_hugepage(const struct folio *folio)
 static unsigned long __thp_get_unmapped_area(struct file *filp,
 		unsigned long addr, unsigned long len,
 		loff_t off, unsigned long flags, unsigned long size,
-		vm_flags_t vm_flags)
+		vma_flags_t vma_flags)
 {
 	loff_t off_end = off + len;
 	loff_t off_align = round_up(off, size);
@@ -1212,8 +1212,9 @@ static unsigned long __thp_get_unmapped_area(struct file *filp,
 	if (len_pad < len || (off + len_pad) < off)
 		return 0;
 
-	ret = mm_get_unmapped_area_vmflags(filp, addr, len_pad,
-					   off >> PAGE_SHIFT, flags, vm_flags);
+	ret = mm_get_unmapped_area_vmaflags(filp, addr, len_pad,
+					    off >> PAGE_SHIFT, flags,
+					    vma_flags);
 
 	/*
 	 * The failure might be due to length padding. The caller will retry
@@ -1238,25 +1239,27 @@ static unsigned long __thp_get_unmapped_area(struct file *filp,
 	return ret;
 }
 
-unsigned long thp_get_unmapped_area_vmflags(struct file *filp, unsigned long addr,
+unsigned long thp_get_unmapped_area_vmaflags(struct file *filp, unsigned long addr,
 		unsigned long len, unsigned long pgoff, unsigned long flags,
-		vm_flags_t vm_flags)
+		vma_flags_t vma_flags)
 {
 	unsigned long ret;
 	loff_t off = (loff_t)pgoff << PAGE_SHIFT;
 
-	ret = __thp_get_unmapped_area(filp, addr, len, off, flags, PMD_SIZE, vm_flags);
+	ret = __thp_get_unmapped_area(filp, addr, len, off, flags, PMD_SIZE,
+				      vma_flags);
 	if (ret)
 		return ret;
 
-	return mm_get_unmapped_area_vmflags(filp, addr, len, pgoff, flags,
-					    vm_flags);
+	return mm_get_unmapped_area_vmaflags(filp, addr, len, pgoff, flags,
+					     vma_flags);
 }
 
 unsigned long thp_get_unmapped_area(struct file *filp, unsigned long addr,
 		unsigned long len, unsigned long pgoff, unsigned long flags)
 {
-	return thp_get_unmapped_area_vmflags(filp, addr, len, pgoff, flags, 0);
+	return thp_get_unmapped_area_vmaflags(filp, addr, len, pgoff, flags,
+					      EMPTY_VMA_FLAGS);
 }
 EXPORT_SYMBOL_GPL(thp_get_unmapped_area);
 
diff --git a/mm/mmap.c b/mm/mmap.c
index 547352183214..461ce510e12a 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -411,8 +411,7 @@ unsigned long do_mmap(struct file *file, unsigned long addr,
 	/* Obtain the address to map to. we verify (or select) it and ensure
 	 * that it represents a valid section of the address space.
 	 */
-	addr = __get_unmapped_area(file, addr, len, pgoff, flags,
-				   vma_flags_to_legacy(vma_flags));
+	addr = __get_unmapped_area(file, addr, len, pgoff, flags, vma_flags);
 	if (IS_ERR_VALUE(addr))
 		return addr;
 
@@ -812,19 +811,20 @@ arch_get_unmapped_area_topdown(struct file *filp, unsigned long addr,
 }
 #endif
 
-unsigned long mm_get_unmapped_area_vmflags(struct file *filp, unsigned long addr,
-					   unsigned long len, unsigned long pgoff,
-					   unsigned long flags, vm_flags_t vm_flags)
+unsigned long mm_get_unmapped_area_vmaflags(struct file *filp, unsigned long addr,
+					    unsigned long len, unsigned long pgoff,
+					    unsigned long flags, vma_flags_t vma_flags)
 {
 	if (mm_flags_test(MMF_TOPDOWN, current->mm))
 		return arch_get_unmapped_area_topdown(filp, addr, len, pgoff,
-						      flags, vm_flags);
-	return arch_get_unmapped_area(filp, addr, len, pgoff, flags, vm_flags);
+				flags, vma_flags_to_legacy(vma_flags));
+	return arch_get_unmapped_area(filp, addr, len, pgoff, flags,
+			vma_flags_to_legacy(vma_flags));
 }
 
 unsigned long
 __get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
-		unsigned long pgoff, unsigned long flags, vm_flags_t vm_flags)
+		unsigned long pgoff, unsigned long flags, vma_flags_t vma_flags)
 {
 	unsigned long (*get_area)(struct file *, unsigned long,
 				  unsigned long, unsigned long, unsigned long)
@@ -859,11 +859,11 @@ __get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
 		   && !addr /* no hint */
 		   && IS_ALIGNED(len, PMD_SIZE)) {
 		/* Ensures that larger anonymous mappings are THP aligned. */
-		addr = thp_get_unmapped_area_vmflags(file, addr, len,
-						     pgoff, flags, vm_flags);
+		addr = thp_get_unmapped_area_vmaflags(file, addr, len,
+						      pgoff, flags, vma_flags);
 	} else {
-		addr = mm_get_unmapped_area_vmflags(file, addr, len,
-						    pgoff, flags, vm_flags);
+		addr = mm_get_unmapped_area_vmaflags(file, addr, len,
+						     pgoff, flags, vma_flags);
 	}
 	if (IS_ERR_VALUE(addr))
 		return addr;
@@ -881,7 +881,8 @@ unsigned long
 mm_get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
 		     unsigned long pgoff, unsigned long flags)
 {
-	return mm_get_unmapped_area_vmflags(file, addr, len, pgoff, flags, 0);
+	return mm_get_unmapped_area_vmaflags(file, addr, len, pgoff, flags,
+					     EMPTY_VMA_FLAGS);
 }
 EXPORT_SYMBOL(mm_get_unmapped_area);
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
