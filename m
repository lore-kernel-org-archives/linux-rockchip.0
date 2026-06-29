Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DC5EC44503
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2Cec7hSt9+SOo39BQDehdCCTq1GtILIrhQzJUH1L7E=; b=2ofwGI2I+auXJe
	QW7Q6bOa0biReUquuugAWr1w6bbnL1SV4amcHrSszGQXai9MV/0KpYNIqnrDCQYzDY1a9mnrT2Ou3
	/uUjj4MrYYI4xx6881WDWz3eOICRviZV+bOPYboGUgl4v3wxlRiTWUNexrMWIoDoJ1+nKH4x5skv5
	zhDaz2P0ioE5gezR21iaOJI7+fprnDdDT/PVQUsg7ZjeXeyNVA18mer4QWUlY+dc0EPEidyOryk7l
	iqqnWfLkNKU4pNnp9CifClBlffRODeN7XSKRC+e8SkQ39gY7mfXvQCl2xp3VRtsTWeveZIiApsKdX
	WL4U+bD9WCz7R1wTH8Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVQ-00000001aeF-3DDY;
	Thu, 09 Jul 2026 08:53:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weHcX-0000000FOdX-1jRn;
	Mon, 29 Jun 2026 19:26:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D2D50601BE;
	Mon, 29 Jun 2026 19:26:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC1611F00A3A;
	Mon, 29 Jun 2026 19:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782761176;
	bh=kVNcj1n0t63iEIMvCjdqZpMGs73q5Ko9ggshfmmLkXE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=klEBAvxAFllrYroNuPJLJ6gpkhIWH2gTVoT+/xDpJL5trOYXohBGpPUklmeyy3M8s
	 V8yPCwMkEt0hiRNtDQFKpdz3l1uU7duIasGbSIztboWDM2ZAqiJD0rorDwfoqGlBAa
	 LG7rxtse+7tEtmE7jUNFo/a5he8kyou91LnB1mOd3C/3gEPhWsxleGxfu6UNzRLKT4
	 q/kle54fQbZ80BilK1fYXEKilUW+HJlbq+uSEtkk9SKLXzWuUuYgjrQUH6aBSmWp7O
	 s8EEU2+Bt7ipQc2WUzag4pdln2sWzLqlewf7/vmu4r9kXvNYawRuP/0vdC2aunN5Wg
	 EWS79jrl2lb4w==
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
Subject: [PATCH 07/13] mm/vma: rename vma_get_page_prot to vma_flags_to_page_prot
Date: Mon, 29 Jun 2026 20:25:30 +0100
Message-ID: <fc8ac30d03d29d236e76542b36432bba315aca60.1782760670.git.ljs@kernel.org>
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

Having vma_get_page_prot() refer to VMA flags and vma_set_page_prot() refer
to a VMA is confusing.

Rename vma_get_page_prot() to vma_flags_to_page_prot() to resolve this
confusion.

No functional change intended.

Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
---
 include/linux/mm.h              | 4 ++--
 mm/vma.c                        | 2 +-
 mm/vma.h                        | 2 +-
 tools/testing/vma/include/dup.h | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 474b3698f565..c8336f68d7bb 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -4568,7 +4568,7 @@ static inline bool range_in_vma_desc(const struct vm_area_desc *desc,
 #ifdef CONFIG_MMU
 pgprot_t vm_get_page_prot(vm_flags_t vm_flags);
 
-static inline pgprot_t vma_get_page_prot(vma_flags_t vma_flags)
+static inline pgprot_t vma_flags_to_page_prot(vma_flags_t vma_flags)
 {
 	const vm_flags_t vm_flags = vma_flags_to_legacy(vma_flags);
 
@@ -4581,7 +4581,7 @@ static inline pgprot_t vm_get_page_prot(vm_flags_t vm_flags)
 {
 	return __pgprot(0);
 }
-static inline pgprot_t vma_get_page_prot(vma_flags_t vma_flags)
+static inline pgprot_t vma_flags_to_page_prot(vma_flags_t vma_flags)
 {
 	return __pgprot(0);
 }
diff --git a/mm/vma.c b/mm/vma.c
index 395b6619ecc1..fcdd2ac3ac68 100644
--- a/mm/vma.c
+++ b/mm/vma.c
@@ -56,7 +56,7 @@ struct mmap_state {
 		.pglen = PHYS_PFN(len_),				\
 		.vma_flags = vma_flags_,				\
 		.file = file_,						\
-		.page_prot = vma_get_page_prot(vma_flags_),		\
+		.page_prot = vma_flags_to_page_prot(vma_flags_),	\
 	}
 
 #define VMG_MMAP_STATE(name, map_, vma_)				\
diff --git a/mm/vma.h b/mm/vma.h
index 6a8abb8ae937..d6b48d596f44 100644
--- a/mm/vma.h
+++ b/mm/vma.h
@@ -524,7 +524,7 @@ static inline bool vma_wants_manual_pte_write_upgrade(struct vm_area_struct *vma
 #ifdef CONFIG_MMU
 static inline pgprot_t vma_pgprot_modify(pgprot_t oldprot, vma_flags_t vma_flags)
 {
-	const pgprot_t prot = vma_get_page_prot(vma_flags);
+	const pgprot_t prot = vma_flags_to_page_prot(vma_flags);
 
 	return pgprot_modify(oldprot, prot);
 }
diff --git a/tools/testing/vma/include/dup.h b/tools/testing/vma/include/dup.h
index 813044781719..1ffac38a5377 100644
--- a/tools/testing/vma/include/dup.h
+++ b/tools/testing/vma/include/dup.h
@@ -1555,7 +1555,7 @@ static inline int get_sysctl_max_map_count(void)
 #define pgtable_supports_soft_dirty()	IS_ENABLED(CONFIG_MEM_SOFT_DIRTY)
 #endif
 
-static inline pgprot_t vma_get_page_prot(vma_flags_t vma_flags)
+static inline pgprot_t vma_flags_to_page_prot(vma_flags_t vma_flags)
 {
 	const vm_flags_t vm_flags = vma_flags_to_legacy(vma_flags);
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
