Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 637FBC48BC3
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AE0yDnCqsFjgbeGAOw6ytGw2eLmZxhm4Y+vW3yJ+t/U=; b=kA1+uwBrQmcaTf
	XRFRfu8+tFBgYmbtub6Hu1rBvTKRpuFbaLRI6tyxUM6ojmgjWBaUb27xy+bjbS8xQVRLntgyOYyTh
	fQ5A75MDV8MCfKfZWPKncYW01DBqVk1Xk2wTCAakjSSFnVNDMfEdYkdOanz1oaVoYy+4yH5MkLSwv
	fvmwD/tGh7i7a9Gck6xG76+4KckXnioJsd4w6hj4yBCclT8ti9Vwmtt06YNoH4p5C2OCxoAQwnkqe
	RBsYLSl+WRsApZCFlT48q6FuYns6Fl1tEV06eAbWyrfsZW4nvEmOgdDPH2geHQwEfKNOSO4D3v51E
	k7XT+AxXQfeVetRb10yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlv7-0000000BKDM-3Xvo;
	Wed, 07 Feb 2024 17:41:13 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlv3-0000000BK9C-0ewB
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:11 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-7857bc09456so32295385a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327667; x=1707932467; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fhDOSWkos8j2XnPjoAZB6lU3EqOYdg7M0aCb6iAvNKU=;
        b=aXBeh80oKx6oOxlj4TtlFSA/1L16n/j1W25eTLQ4jbelo1dNW5w4embg8zwFtNRsDI
         mUFvaeROg5ZGkxEYf+iLHjW5rDLiX6nkcVrI7te9edzQLODKQaW93rJYnzRuIPyTqqqr
         EZMT/3lJ59K7nPfrooLs8If+4MjM4g6ljrbTuQCU+4wulehq3zTXHORH1RrEswBS4P/U
         TsOTVm3b9QWa24Tw6yLQvbO0cI3w0SXMnN+kZ7a+4xq++qGsN825zSyaHlobs5hTVv6w
         SZ4WeNtzCSBbkZZhaFL8sq2UDY5zw3cHtno1SMr6LFc0sEQ9R9GL0Lpg6eoxUpcwTCI0
         GM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327667; x=1707932467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhDOSWkos8j2XnPjoAZB6lU3EqOYdg7M0aCb6iAvNKU=;
        b=MWJ/X696iCSYO9cfKHq7LbKxFOg8wMNrg+cVdymtWm5h4V1YkzelZuzV6+laEVEiKy
         3pVrxJ7pQrxZg/qFtry/Es2wqAzdNyxymsICt7b77yd+s9LLSPEae2qKjan038IIIhUy
         EM+O+BVntrHvWmeY9OOks4KMVwDI23BgHt29fROl9ybiwMHoWEyOS9SdWFbQO4F42eHg
         gO1zNYc1FOUc2+dBdleyniL9OSmGAVz+Q87uvpmw3y38cphyIKOGJAM0vZzuP3I5TQTo
         99oHOSBaMqwP1I39lGmp8TLAaT2AvDt/nWURDEbJM2nyW5/EZOcMtvqt7951Sfk/PqaL
         FsAg==
X-Gm-Message-State: AOJu0Yy4W3jOeKrcgv3mfhrUtsuZFkBnaIgQpxJSzhASES4shxLklFB7
	/LlkztZh8G+9rBoK32AdtLcqwmCtFnWD6KgYavcCTX1wG7n0dduJfvYtm47q5cc=
X-Google-Smtp-Source: AGHT+IE4XQdazP3av9sxH0Ec8w6OzK4LULXb5fUCSEjJPmcuG9JUrjC221RDz2UA1gAIyCitPlfNog==
X-Received: by 2002:a05:620a:2227:b0:785:3f80:40ee with SMTP id n7-20020a05620a222700b007853f8040eemr5323724qkh.76.1707327666696;
        Wed, 07 Feb 2024 09:41:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXRHi04ENeUksSdGdKhq/7z8MXEDdVWRmjxHwc4l8awAa3wg1c0h/OFsaluNq8O4zYpHj3UYX0VM1N/7Biy5aTqGKUYxoRcw+Zx2Lo4SzVf/80uXLvvis6FfkqrtsO65Pq6Pgh/OuWypJtl+6GbrEzA40wBXgsDgjdqHry3yF1wQRAuBzM/OnVsu/lgc4eeIHsbl6IgKckEpXox7TtF7dbdrM8QIbkpoP0TWCRp8VpIYmrVCvFpRrmNs6XZ/21uGONL8kOM/f4jijdnT5mB622m31wLtFwxyKkl5y1TAZSK0g49TMgR+L+FijSUkvTiusISQJ9kaJu2ri5XIhQoZBt8JaTC1e4rlz4IMYz1JBXE9jEctp9NJ0bePTa2aWlThI5w7j6i1FaGlEJUj29Rea0Gf1BHGmmSR2xjI4PtcAtsokYgy3woLzqWeJNpkdDfL7GIK0THoCbbvgELx6CWAaDCtA2Gd9l2EY32T7Yi6elquaXK2bLxybQAUavoqL8cJRlwAsbHboyOnAMRw3kGMRLozAL4zEwOdvtjA5E65yM5K+7R1U5OXDYuk7KyoFWMnO40FLAYgZu7FiIkSggUYN3alzVse6Hsa3FsVtJA0WuKHF9s9jvwdgS2OXMa5oRXgspfAcLva5d8Gn49uG2HqUmhsqE65l51MIFxSzfEvFYJXHXGxVY/6rpA8TYkpyAfJX76sUnswPvCgHtcl7mItWKRTNTKgSzBpWtWSpquDnGq9+xQIVAtyn60QVV9Sf/4qbZwLOp7cB2pilLG7oUZsXNIzzh9ZEv6jo4oho+29BqgdQQ+smm4YWS4mtig7cyfsEU/XzxdmJavrHUsrLlB0NjnUW9342MJSr7NLIo5VzKCKEUY1vD39LO9sbf8OMACI4xVlzTlT9rXI54EG+Px6b+o3cHDj8/JJPjfN11HkYWvZWPANQPYyUZ9qheGXpUEo9aiJQ
 BTQ65lW3E+Ij2YKx9sNid/3+ymlJMIaGGSGy3cTjq58cSybMTwQdIVW4NiNTkTUZ5X3B4jYu+Q0wIU8xrXoTr5om0/9HroZ0w9LHv7e4+J/pheG5fC1pdaZKrrbE5nfW3lzayiejiZRdbBGUb6zgasOFU54XJEZmiYvtZlUROyQNwjHkmZSivnK0Vr/T3z032NS/BSfSbAev0xilAGwJp+0vgGyYjk3bZJGPHozHxcRWO/8bwqpaxlQdJl6V5yy3TyvfqBFz7mCXEy3sSmFybQwg7aft0Vl3VR1b86Jok/f5lG+4Vw9WexOFA+bfpkro3x4/Rv/YJa8KZ458aqEtfoiBU9Iv2xFWbDpQrdiweOg8w6YMdRRrpxdIkSeRIzFrfRfWyLO3SPVNm5CMC0tWlf0aZnMwJi0kH02e/XTf2bGP7c+hWVHKOeARfDcw/4AqtBouTP6Kx9CC3GPConmpndOI/UXrb+gLv8nu6j6l1liEEO
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:06 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alim.akhtar@samsung.com,
	alyssa@rosenzweig.io,
	asahi@lists.linux.dev,
	baolu.lu@linux.intel.com,
	bhelgaas@google.com,
	cgroups@vger.kernel.org,
	corbet@lwn.net,
	david@redhat.com,
	dwmw2@infradead.org,
	hannes@cmpxchg.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jernej.skrabec@gmail.com,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	krzysztof.kozlowski@linaro.org,
	linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	lizefan.x@bytedance.com,
	marcan@marcan.st,
	mhiramat@kernel.org,
	m.szyprowski@samsung.com,
	pasha.tatashin@soleen.com,
	paulmck@kernel.org,
	rdunlap@infradead.org,
	robin.murphy@arm.com,
	samuel@sholland.org,
	suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev,
	thierry.reding@gmail.com,
	tj@kernel.org,
	tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com,
	rientjes@google.com,
	bagasdotme@gmail.com,
	mkoutny@suse.com
Subject: [PATCH v4 01/10] iommu/vt-d: add wrapper functions for page allocations
Date: Wed,  7 Feb 2024 17:40:53 +0000
Message-ID: <20240207174102.1486130-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094109_254929_FF0D5AB2 
X-CRM114-Status: GOOD (  19.47  )
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

In order to improve observability and accountability of IOMMU layer, we
must account the number of pages that are allocated by functions that
are calling directly into buddy allocator.

This is achieved by first wrapping the allocation related functions into a
separate inline functions in new file:

drivers/iommu/iommu-pages.h

Convert all page allocation calls under iommu/intel to use these new
functions.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/intel/dmar.c          |  10 +-
 drivers/iommu/intel/iommu.c         |  47 +++----
 drivers/iommu/intel/iommu.h         |   2 -
 drivers/iommu/intel/irq_remapping.c |  10 +-
 drivers/iommu/intel/pasid.c         |  12 +-
 drivers/iommu/intel/svm.c           |   7 +-
 drivers/iommu/iommu-pages.h         | 204 ++++++++++++++++++++++++++++
 7 files changed, 241 insertions(+), 51 deletions(-)
 create mode 100644 drivers/iommu/iommu-pages.h

diff --git a/drivers/iommu/intel/dmar.c b/drivers/iommu/intel/dmar.c
index 23cb80d62a9a..f72b1e4334b1 100644
--- a/drivers/iommu/intel/dmar.c
+++ b/drivers/iommu/intel/dmar.c
@@ -32,6 +32,7 @@
 
 #include "iommu.h"
 #include "../irq_remapping.h"
+#include "../iommu-pages.h"
 #include "perf.h"
 #include "trace.h"
 #include "perfmon.h"
@@ -1185,7 +1186,7 @@ static void free_iommu(struct intel_iommu *iommu)
 	}
 
 	if (iommu->qi) {
-		free_page((unsigned long)iommu->qi->desc);
+		iommu_free_page(iommu->qi->desc);
 		kfree(iommu->qi->desc_status);
 		kfree(iommu->qi);
 	}
@@ -1732,6 +1733,7 @@ int dmar_enable_qi(struct intel_iommu *iommu)
 {
 	struct q_inval *qi;
 	struct page *desc_page;
+	int order;
 
 	if (!ecap_qis(iommu->ecap))
 		return -ENOENT;
@@ -1752,8 +1754,8 @@ int dmar_enable_qi(struct intel_iommu *iommu)
 	 * Need two pages to accommodate 256 descriptors of 256 bits each
 	 * if the remapping hardware supports scalable mode translation.
 	 */
-	desc_page = alloc_pages_node(iommu->node, GFP_ATOMIC | __GFP_ZERO,
-				     !!ecap_smts(iommu->ecap));
+	order = ecap_smts(iommu->ecap) ? 1 : 0;
+	desc_page = __iommu_alloc_pages_node(iommu->node, GFP_ATOMIC, order);
 	if (!desc_page) {
 		kfree(qi);
 		iommu->qi = NULL;
@@ -1764,7 +1766,7 @@ int dmar_enable_qi(struct intel_iommu *iommu)
 
 	qi->desc_status = kcalloc(QI_LENGTH, sizeof(int), GFP_ATOMIC);
 	if (!qi->desc_status) {
-		free_page((unsigned long) qi->desc);
+		iommu_free_page(qi->desc);
 		kfree(qi);
 		iommu->qi = NULL;
 		return -ENOMEM;
diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 6fb5f6fceea1..a9cfb41a6a94 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -28,6 +28,7 @@
 #include "../dma-iommu.h"
 #include "../irq_remapping.h"
 #include "../iommu-sva.h"
+#include "../iommu-pages.h"
 #include "pasid.h"
 #include "cap_audit.h"
 #include "perfmon.h"
@@ -224,22 +225,6 @@ static int __init intel_iommu_setup(char *str)
 }
 __setup("intel_iommu=", intel_iommu_setup);
 
-void *alloc_pgtable_page(int node, gfp_t gfp)
-{
-	struct page *page;
-	void *vaddr = NULL;
-
-	page = alloc_pages_node(node, gfp | __GFP_ZERO, 0);
-	if (page)
-		vaddr = page_address(page);
-	return vaddr;
-}
-
-void free_pgtable_page(void *vaddr)
-{
-	free_page((unsigned long)vaddr);
-}
-
 static int domain_type_is_si(struct dmar_domain *domain)
 {
 	return domain->domain.type == IOMMU_DOMAIN_IDENTITY;
@@ -473,7 +458,7 @@ struct context_entry *iommu_context_addr(struct intel_iommu *iommu, u8 bus,
 		if (!alloc)
 			return NULL;
 
-		context = alloc_pgtable_page(iommu->node, GFP_ATOMIC);
+		context = iommu_alloc_page_node(iommu->node, GFP_ATOMIC);
 		if (!context)
 			return NULL;
 
@@ -647,17 +632,17 @@ static void free_context_table(struct intel_iommu *iommu)
 	for (i = 0; i < ROOT_ENTRY_NR; i++) {
 		context = iommu_context_addr(iommu, i, 0, 0);
 		if (context)
-			free_pgtable_page(context);
+			iommu_free_page(context);
 
 		if (!sm_supported(iommu))
 			continue;
 
 		context = iommu_context_addr(iommu, i, 0x80, 0);
 		if (context)
-			free_pgtable_page(context);
+			iommu_free_page(context);
 	}
 
-	free_pgtable_page(iommu->root_entry);
+	iommu_free_page(iommu->root_entry);
 	iommu->root_entry = NULL;
 }
 
@@ -795,7 +780,7 @@ static struct dma_pte *pfn_to_dma_pte(struct dmar_domain *domain,
 		if (!dma_pte_present(pte)) {
 			uint64_t pteval;
 
-			tmp_page = alloc_pgtable_page(domain->nid, gfp);
+			tmp_page = iommu_alloc_page_node(domain->nid, gfp);
 
 			if (!tmp_page)
 				return NULL;
@@ -807,7 +792,7 @@ static struct dma_pte *pfn_to_dma_pte(struct dmar_domain *domain,
 
 			if (cmpxchg64(&pte->val, 0ULL, pteval))
 				/* Someone else set it while we were thinking; use theirs. */
-				free_pgtable_page(tmp_page);
+				iommu_free_page(tmp_page);
 			else
 				domain_flush_cache(domain, pte, sizeof(*pte));
 		}
@@ -920,7 +905,7 @@ static void dma_pte_free_level(struct dmar_domain *domain, int level,
 		      last_pfn < level_pfn + level_size(level) - 1)) {
 			dma_clear_pte(pte);
 			domain_flush_cache(domain, pte, sizeof(*pte));
-			free_pgtable_page(level_pte);
+			iommu_free_page(level_pte);
 		}
 next:
 		pfn += level_size(level);
@@ -944,7 +929,7 @@ static void dma_pte_free_pagetable(struct dmar_domain *domain,
 
 	/* free pgd */
 	if (start_pfn == 0 && last_pfn == DOMAIN_MAX_PFN(domain->gaw)) {
-		free_pgtable_page(domain->pgd);
+		iommu_free_page(domain->pgd);
 		domain->pgd = NULL;
 	}
 }
@@ -1046,7 +1031,7 @@ static int iommu_alloc_root_entry(struct intel_iommu *iommu)
 {
 	struct root_entry *root;
 
-	root = alloc_pgtable_page(iommu->node, GFP_ATOMIC);
+	root = iommu_alloc_page_node(iommu->node, GFP_ATOMIC);
 	if (!root) {
 		pr_err("Allocating root entry for %s failed\n",
 			iommu->name);
@@ -1718,7 +1703,7 @@ static void domain_exit(struct dmar_domain *domain)
 		LIST_HEAD(freelist);
 
 		domain_unmap(domain, 0, DOMAIN_MAX_PFN(domain->gaw), &freelist);
-		put_pages_list(&freelist);
+		iommu_free_pages_list(&freelist);
 	}
 
 	if (WARN_ON(!list_empty(&domain->devices)))
@@ -2452,7 +2437,7 @@ static int copy_context_table(struct intel_iommu *iommu,
 			if (!old_ce)
 				goto out;
 
-			new_ce = alloc_pgtable_page(iommu->node, GFP_KERNEL);
+			new_ce = iommu_alloc_page_node(iommu->node, GFP_KERNEL);
 			if (!new_ce)
 				goto out_unmap;
 
@@ -3385,7 +3370,7 @@ static int intel_iommu_memory_notifier(struct notifier_block *nb,
 					start_vpfn, mhp->nr_pages,
 					list_empty(&freelist), 0);
 			rcu_read_unlock();
-			put_pages_list(&freelist);
+			iommu_free_pages_list(&freelist);
 		}
 		break;
 	}
@@ -3816,7 +3801,7 @@ static int md_domain_init(struct dmar_domain *domain, int guest_width)
 	domain->max_addr = 0;
 
 	/* always allocate the top pgd */
-	domain->pgd = alloc_pgtable_page(domain->nid, GFP_ATOMIC);
+	domain->pgd = iommu_alloc_page_node(domain->nid, GFP_ATOMIC);
 	if (!domain->pgd)
 		return -ENOMEM;
 	domain_flush_cache(domain, domain->pgd, PAGE_SIZE);
@@ -3960,7 +3945,7 @@ int prepare_domain_attach_device(struct iommu_domain *domain,
 		pte = dmar_domain->pgd;
 		if (dma_pte_present(pte)) {
 			dmar_domain->pgd = phys_to_virt(dma_pte_addr(pte));
-			free_pgtable_page(pte);
+			iommu_free_page(pte);
 		}
 		dmar_domain->agaw--;
 	}
@@ -4107,7 +4092,7 @@ static void intel_iommu_tlb_sync(struct iommu_domain *domain,
 				      start_pfn, nrpages,
 				      list_empty(&gather->freelist), 0);
 
-	put_pages_list(&gather->freelist);
+	iommu_free_pages_list(&gather->freelist);
 }
 
 static phys_addr_t intel_iommu_iova_to_phys(struct iommu_domain *domain,
diff --git a/drivers/iommu/intel/iommu.h b/drivers/iommu/intel/iommu.h
index d02f916d8e59..9fe04cea29c4 100644
--- a/drivers/iommu/intel/iommu.h
+++ b/drivers/iommu/intel/iommu.h
@@ -1069,8 +1069,6 @@ void domain_update_iommu_cap(struct dmar_domain *domain);
 
 int dmar_ir_support(void);
 
-void *alloc_pgtable_page(int node, gfp_t gfp);
-void free_pgtable_page(void *vaddr);
 void iommu_flush_write_buffer(struct intel_iommu *iommu);
 struct iommu_domain *intel_nested_domain_alloc(struct iommu_domain *parent,
 					       const struct iommu_user_data *user_data);
diff --git a/drivers/iommu/intel/irq_remapping.c b/drivers/iommu/intel/irq_remapping.c
index 566297bc87dd..4af73e87275a 100644
--- a/drivers/iommu/intel/irq_remapping.c
+++ b/drivers/iommu/intel/irq_remapping.c
@@ -22,6 +22,7 @@
 
 #include "iommu.h"
 #include "../irq_remapping.h"
+#include "../iommu-pages.h"
 #include "cap_audit.h"
 
 enum irq_mode {
@@ -536,8 +537,8 @@ static int intel_setup_irq_remapping(struct intel_iommu *iommu)
 	if (!ir_table)
 		return -ENOMEM;
 
-	pages = alloc_pages_node(iommu->node, GFP_KERNEL | __GFP_ZERO,
-				 INTR_REMAP_PAGE_ORDER);
+	pages = __iommu_alloc_pages_node(iommu->node, GFP_KERNEL,
+					 INTR_REMAP_PAGE_ORDER);
 	if (!pages) {
 		pr_err("IR%d: failed to allocate pages of order %d\n",
 		       iommu->seq_id, INTR_REMAP_PAGE_ORDER);
@@ -622,7 +623,7 @@ static int intel_setup_irq_remapping(struct intel_iommu *iommu)
 out_free_bitmap:
 	bitmap_free(bitmap);
 out_free_pages:
-	__free_pages(pages, INTR_REMAP_PAGE_ORDER);
+	__iommu_free_pages(pages, INTR_REMAP_PAGE_ORDER);
 out_free_table:
 	kfree(ir_table);
 
@@ -643,8 +644,7 @@ static void intel_teardown_irq_remapping(struct intel_iommu *iommu)
 			irq_domain_free_fwnode(fn);
 			iommu->ir_domain = NULL;
 		}
-		free_pages((unsigned long)iommu->ir_table->base,
-			   INTR_REMAP_PAGE_ORDER);
+		iommu_free_pages(iommu->ir_table->base, INTR_REMAP_PAGE_ORDER);
 		bitmap_free(iommu->ir_table->bitmap);
 		kfree(iommu->ir_table);
 		iommu->ir_table = NULL;
diff --git a/drivers/iommu/intel/pasid.c b/drivers/iommu/intel/pasid.c
index 3239cefa4c33..b6ecff24bafa 100644
--- a/drivers/iommu/intel/pasid.c
+++ b/drivers/iommu/intel/pasid.c
@@ -20,6 +20,7 @@
 
 #include "iommu.h"
 #include "pasid.h"
+#include "../iommu-pages.h"
 
 /*
  * Intel IOMMU system wide PASID name space:
@@ -59,8 +60,7 @@ int intel_pasid_alloc_table(struct device *dev)
 
 	size = max_pasid >> (PASID_PDE_SHIFT - 3);
 	order = size ? get_order(size) : 0;
-	pages = alloc_pages_node(info->iommu->node,
-				 GFP_KERNEL | __GFP_ZERO, order);
+	pages = __iommu_alloc_pages_node(info->iommu->node, GFP_KERNEL, order);
 	if (!pages) {
 		kfree(pasid_table);
 		return -ENOMEM;
@@ -97,10 +97,10 @@ void intel_pasid_free_table(struct device *dev)
 	max_pde = pasid_table->max_pasid >> PASID_PDE_SHIFT;
 	for (i = 0; i < max_pde; i++) {
 		table = get_pasid_table_from_pde(&dir[i]);
-		free_pgtable_page(table);
+		iommu_free_page(table);
 	}
 
-	free_pages((unsigned long)pasid_table->table, pasid_table->order);
+	iommu_free_pages(pasid_table->table, pasid_table->order);
 	kfree(pasid_table);
 }
 
@@ -146,7 +146,7 @@ static struct pasid_entry *intel_pasid_get_entry(struct device *dev, u32 pasid)
 retry:
 	entries = get_pasid_table_from_pde(&dir[dir_index]);
 	if (!entries) {
-		entries = alloc_pgtable_page(info->iommu->node, GFP_ATOMIC);
+		entries = iommu_alloc_page_node(info->iommu->node, GFP_ATOMIC);
 		if (!entries)
 			return NULL;
 
@@ -158,7 +158,7 @@ static struct pasid_entry *intel_pasid_get_entry(struct device *dev, u32 pasid)
 		 */
 		if (cmpxchg64(&dir[dir_index].val, 0ULL,
 			      (u64)virt_to_phys(entries) | PASID_PTE_PRESENT)) {
-			free_pgtable_page(entries);
+			iommu_free_page(entries);
 			goto retry;
 		}
 		if (!ecap_coherent(info->iommu->ecap)) {
diff --git a/drivers/iommu/intel/svm.c b/drivers/iommu/intel/svm.c
index 40edd282903f..ed3993657283 100644
--- a/drivers/iommu/intel/svm.c
+++ b/drivers/iommu/intel/svm.c
@@ -23,6 +23,7 @@
 #include "pasid.h"
 #include "perf.h"
 #include "../iommu-sva.h"
+#include "../iommu-pages.h"
 #include "trace.h"
 
 static irqreturn_t prq_event_thread(int irq, void *d);
@@ -67,7 +68,7 @@ int intel_svm_enable_prq(struct intel_iommu *iommu)
 	struct page *pages;
 	int irq, ret;
 
-	pages = alloc_pages(GFP_KERNEL | __GFP_ZERO, PRQ_ORDER);
+	pages = __iommu_alloc_pages(GFP_KERNEL, PRQ_ORDER);
 	if (!pages) {
 		pr_warn("IOMMU: %s: Failed to allocate page request queue\n",
 			iommu->name);
@@ -118,7 +119,7 @@ int intel_svm_enable_prq(struct intel_iommu *iommu)
 	dmar_free_hwirq(irq);
 	iommu->pr_irq = 0;
 free_prq:
-	free_pages((unsigned long)iommu->prq, PRQ_ORDER);
+	iommu_free_pages(iommu->prq, PRQ_ORDER);
 	iommu->prq = NULL;
 
 	return ret;
@@ -141,7 +142,7 @@ int intel_svm_finish_prq(struct intel_iommu *iommu)
 		iommu->iopf_queue = NULL;
 	}
 
-	free_pages((unsigned long)iommu->prq, PRQ_ORDER);
+	iommu_free_pages(iommu->prq, PRQ_ORDER);
 	iommu->prq = NULL;
 
 	return 0;
diff --git a/drivers/iommu/iommu-pages.h b/drivers/iommu/iommu-pages.h
new file mode 100644
index 000000000000..c412d0aaa399
--- /dev/null
+++ b/drivers/iommu/iommu-pages.h
@@ -0,0 +1,204 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2024, Google LLC.
+ * Pasha Tatashin <pasha.tatashin@soleen.com>
+ */
+
+#ifndef __IOMMU_PAGES_H
+#define __IOMMU_PAGES_H
+
+#include <linux/vmstat.h>
+#include <linux/gfp.h>
+#include <linux/mm.h>
+
+/*
+ * All page allocation that are performed in the IOMMU subsystem must use one of
+ * the functions below.  This is necessary for the proper accounting as IOMMU
+ * state can be rather large, i.e. multiple gigabytes in size.
+ */
+
+/**
+ * __iommu_alloc_pages_node - allocate a zeroed page of a given order from
+ * specific NUMA node.
+ * @nid: memory NUMA node id
+ * @gfp: buddy allocator flags
+ * @order: page order
+ *
+ * returns the head struct page of the allocated page.
+ */
+static inline struct page *__iommu_alloc_pages_node(int nid, gfp_t gfp,
+						    int order)
+{
+	struct page *page;
+
+	page = alloc_pages_node(nid, gfp | __GFP_ZERO, order);
+	if (unlikely(!page))
+		return NULL;
+
+	return page;
+}
+
+/**
+ * __iommu_alloc_pages - allocate a zeroed page of a given order.
+ * @gfp: buddy allocator flags
+ * @order: page order
+ *
+ * returns the head struct page of the allocated page.
+ */
+static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
+{
+	struct page *page;
+
+	page = alloc_pages(gfp | __GFP_ZERO, order);
+	if (unlikely(!page))
+		return NULL;
+
+	return page;
+}
+
+/**
+ * __iommu_alloc_page_node - allocate a zeroed page at specific NUMA node.
+ * @nid: memory NUMA node id
+ * @gfp: buddy allocator flags
+ *
+ * returns the struct page of the allocated page.
+ */
+static inline struct page *__iommu_alloc_page_node(int nid, gfp_t gfp)
+{
+	return __iommu_alloc_pages_node(nid, gfp, 0);
+}
+
+/**
+ * __iommu_alloc_page - allocate a zeroed page
+ * @gfp: buddy allocator flags
+ *
+ * returns the struct page of the allocated page.
+ */
+static inline struct page *__iommu_alloc_page(gfp_t gfp)
+{
+	return __iommu_alloc_pages(gfp, 0);
+}
+
+/**
+ * __iommu_free_pages - free page of a given order
+ * @page: head struct page of the page
+ * @order: page order
+ */
+static inline void __iommu_free_pages(struct page *page, int order)
+{
+	if (!page)
+		return;
+
+	__free_pages(page, order);
+}
+
+/**
+ * __iommu_free_page - free page
+ * @page: struct page of the page
+ */
+static inline void __iommu_free_page(struct page *page)
+{
+	__iommu_free_pages(page, 0);
+}
+
+/**
+ * iommu_alloc_pages_node - allocate a zeroed page of a given order from
+ * specific NUMA node.
+ * @nid: memory NUMA node id
+ * @gfp: buddy allocator flags
+ * @order: page order
+ *
+ * returns the virtual address of the allocated page
+ */
+static inline void *iommu_alloc_pages_node(int nid, gfp_t gfp, int order)
+{
+	struct page *page = __iommu_alloc_pages_node(nid, gfp, order);
+
+	if (unlikely(!page))
+		return NULL;
+
+	return page_address(page);
+}
+
+/**
+ * iommu_alloc_pages - allocate a zeroed page of a given order
+ * @gfp: buddy allocator flags
+ * @order: page order
+ *
+ * returns the virtual address of the allocated page
+ */
+static inline void *iommu_alloc_pages(gfp_t gfp, int order)
+{
+	struct page *page = __iommu_alloc_pages(gfp, order);
+
+	if (unlikely(!page))
+		return NULL;
+
+	return page_address(page);
+}
+
+/**
+ * iommu_alloc_page_node - allocate a zeroed page at specific NUMA node.
+ * @nid: memory NUMA node id
+ * @gfp: buddy allocator flags
+ *
+ * returns the virtual address of the allocated page
+ */
+static inline void *iommu_alloc_page_node(int nid, gfp_t gfp)
+{
+	return iommu_alloc_pages_node(nid, gfp, 0);
+}
+
+/**
+ * iommu_alloc_page - allocate a zeroed page
+ * @gfp: buddy allocator flags
+ *
+ * returns the virtual address of the allocated page
+ */
+static inline void *iommu_alloc_page(gfp_t gfp)
+{
+	return iommu_alloc_pages(gfp, 0);
+}
+
+/**
+ * iommu_free_pages - free page of a given order
+ * @virt: virtual address of the page to be freed.
+ * @order: page order
+ */
+static inline void iommu_free_pages(void *virt, int order)
+{
+	if (!virt)
+		return;
+
+	__iommu_free_pages(virt_to_page(virt), order);
+}
+
+/**
+ * iommu_free_page - free page
+ * @virt: virtual address of the page to be freed.
+ */
+static inline void iommu_free_page(void *virt)
+{
+	iommu_free_pages(virt, 0);
+}
+
+/**
+ * iommu_free_pages_list - free a list of pages.
+ * @page: the head of the lru list to be freed.
+ *
+ * There are no locking requirement for these pages, as they are going to be
+ * put on a free list as soon as refcount reaches 0. Pages are put on this LRU
+ * list once they are removed from the IOMMU page tables. However, they can
+ * still be access through debugfs.
+ */
+static inline void iommu_free_pages_list(struct list_head *page)
+{
+	while (!list_empty(page)) {
+		struct page *p = list_entry(page->prev, struct page, lru);
+
+		list_del(&p->lru);
+		put_page(p);
+	}
+}
+
+#endif	/* __IOMMU_PAGES_H */
-- 
2.43.0.594.gd9cf4e227d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
