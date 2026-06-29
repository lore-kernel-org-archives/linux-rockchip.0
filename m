Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83928C44507
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=es1zm+7ywBQIJ5J0r45xE2XGBSBz3qMADVI/QEv2oXg=; b=J9LfBWprN8bYlg
	kDXn5T65K4FWBvTnByVs4Rqb5S5Jc0qplae9mTQeUuqLzmuBu8Xnvk51uJ80wTDrM2GuxiY5TJVj2
	65zfsNrZdXmxY4iCuJpbXr0SB/WxaG0/8HwlL6bAGSuWP40ABP5+I7TRkV+ONawImG8Cdi8hA5Gr0
	sUm/cXAUnJlDHm+36D6ST+wYU1E1GgfUiKB5lvjpMgMeuLPrxxSCYoV7oYSJU1CW1Y8yLmjcq2GEd
	4I/jze0d95cW6cGuGdB9xp/0a6Pp+TjMavIDbymqxZvxK/0eOOJ/kdpCdXagHBbv3VkCgVtvpkBfH
	4S0Lt7/kLCDTnNcADh7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVU-00000001anP-0QWO;
	Thu, 09 Jul 2026 08:53:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weHcl-0000000FOjQ-1iV1;
	Mon, 29 Jun 2026 19:26:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1543A43A16;
	Mon, 29 Jun 2026 19:26:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21CD81F00A3E;
	Mon, 29 Jun 2026 19:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782761191;
	bh=7iylMldrhSOO1IEZlbk7MTKXM0GrQcJsQB4ToBzrfcg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=fdO1PP2gxmsSJuRPnWwcheJxMiMKiZBWn90xI79zJaMiV/YAWbO2W0UnkIARGEFmJ
	 bUUypPCeo0RpYETiZpTVAWC1ZJgInCqeTo7CPwT1NJ+iAS/OA2fkIDIiwkzF2IdCxJ
	 H1jkYqazpwvk7cCzjQ8KC3Eq3OzDzM19YONhlNaTINb3vxc5OIdkaX0FQvTizRIsMV
	 fFHMoQDX/6bV24SU/j+ksLGs/hI3k+hEd9nomwhzobiDnGLxs0IIuDY4YCRVYktHIy
	 Ns0cVUa1HvnaEuLjD4poIn0XFh/n+4WbEqsH7icPumiQlF5blcflwYpgekG7KvEtiI
	 s5/n6ZeMI4APw==
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
Subject: [PATCH 12/13] mm/mprotect: convert mprotect code to use vma_flags_t
Date: Mon, 29 Jun 2026 20:25:35 +0100
Message-ID: <7ef626d8a12dc742cfc09d080be5dc09850e873a.1782760670.git.ljs@kernel.org>
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

Replace use of the legacy vm_flags_t flags with vma_flags_t values
throughout the mprotect logic.

Note that we retain the legacy vm_flags_t bit shifting code in
do_mprotect_key(), deferring a vma_flags_t approach to this for the time
being.

Additionally update comments to reflect the changes to be consistent.

No functional change intended.

Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
---
 mm/mprotect.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/mm/mprotect.c b/mm/mprotect.c
index 9cbf932b028c..c9504b2a2525 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -40,7 +40,7 @@
 
 static bool maybe_change_pte_writable(struct vm_area_struct *vma, pte_t pte)
 {
-	if (WARN_ON_ONCE(!(vma->vm_flags & VM_WRITE)))
+	if (WARN_ON_ONCE(!vma_test(vma, VMA_WRITE_BIT)))
 		return false;
 
 	/* Don't touch entries that are not even readable. */
@@ -97,7 +97,7 @@ static bool can_change_shared_pte_writable(struct vm_area_struct *vma,
 bool can_change_pte_writable(struct vm_area_struct *vma, unsigned long addr,
 			     pte_t pte)
 {
-	if (!(vma->vm_flags & VM_SHARED))
+	if (!vma_test(vma, VMA_SHARED_BIT))
 		return can_change_private_pte_writable(vma, addr, pte);
 
 	return can_change_shared_pte_writable(vma, pte);
@@ -194,7 +194,7 @@ static __always_inline void set_write_prot_commit_flush_ptes(struct vm_area_stru
 {
 	bool set_write;
 
-	if (vma->vm_flags & VM_SHARED) {
+	if (vma_test(vma, VMA_SHARED_BIT)) {
 		set_write = can_change_shared_pte_writable(vma, ptent);
 		prot_commit_flush_ptes(vma, addr, ptep, oldpte, ptent, nr_ptes,
 				       /* idx = */ 0, set_write, tlb);
@@ -811,8 +811,8 @@ mprotect_fixup(struct vma_iterator *vmi, struct mmu_gather *tlb,
 		vm_unacct_memory(nrpages);
 
 	/*
-	 * Private VM_LOCKED VMA becoming writable: trigger COW to avoid major
-	 * fault on access.
+	 * Private VMA_LOCKED_BIT VMA becoming writable: trigger COW to avoid
+	 * major fault on access.
 	 */
 	if (vma_flags_test(&new_vma_flags, VMA_WRITE_BIT) &&
 	    vma_flags_test(&old_vma_flags, VMA_LOCKED_BIT) &&
@@ -886,7 +886,7 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 			goto out;
 		start = vma->vm_start;
 		error = -EINVAL;
-		if (!(vma->vm_flags & VM_GROWSDOWN))
+		if (!vma_test(vma, VMA_GROWSDOWN_BIT))
 			goto out;
 	} else {
 		if (vma->vm_start > start)
@@ -894,7 +894,7 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 		if (unlikely(grows & PROT_GROWSUP)) {
 			end = vma->vm_end;
 			error = -EINVAL;
-			if (!(vma->vm_flags & VM_GROWSUP))
+			if (!vma_test(vma, VMA_GROWSUP_BIT))
 				goto out;
 		}
 	}
@@ -918,7 +918,7 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 		}
 
 		/* Does the application expect PROT_READ to imply PROT_EXEC */
-		if (rier && (vma->vm_flags & VM_MAYEXEC))
+		if (rier && vma_test(vma, VMA_MAYEXEC_BIT))
 			prot |= PROT_EXEC;
 
 		/*
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
