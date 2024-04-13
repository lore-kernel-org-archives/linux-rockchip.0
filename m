Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBBD6C00A94
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRlLYUESO2lASVNqn+U+UvsfKnQsutjjyqgru2euG5c=; b=T4QhqJBEW+o4lb
	1pC2mlYsJNsmIWTb8mr7sz3F1QI9T3OuTgewb1oiRRX2L17GGqvddmyTSLqCLTTz5B1k7TNWWyDoM
	7NdaAqeqZTCy7ve0fiU5Thgid1NRGchvqmP8/wIjam/O7H3BjSHgYzkxe3xo14xuDSZjRfaNSHgPI
	AyyeVAm03Z/Jy6uzz6WbpwXh7haVZvZ04dtO1cHmgd6xyqiLvw9Nb+8zZ7IHV6t/1MpVBffYKIFZC
	8kQa3l/rLBJReLp0rhAn9SyP8biHra9AbM0o3F3XLCFgT3iDyzo+Z2NgoiO6fis7XkcJHtee0ad+B
	8T0lI9ZlyEYa3Za2T4OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRDE-00000001nsy-1Glv;
	Sat, 13 Apr 2024 00:25:44 +0000
Received: from mail-yw1-f169.google.com ([209.85.128.169])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRD1-00000001njg-2ObN
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:25:38 +0000
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-618874234c9so10950437b3.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712967929; x=1713572729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fv5XjUyHQAdWl3bPoRKg0WmIlKdHELCmSaFid/+Qq0w=;
        b=fyjRB8qmS9FRAl02lEOWJsoFQgxr9AafQkNQvbCuEzwO/6w2CH8z52WTpuoM62vfq5
         RpCmNs8ilWHCp7WyJXL9OJh5igoIjXA8tPkDqxV7wdkmz2yEqQCWx/WISSzMROuu9TxQ
         QSzTqDDwwWaMkNWzJG8rA+kj8IACwUAr7xIa4VzEZR6TZE4tkxdDGiPnLAbc1sXvprGV
         epbgsxionTbIm8tr1k1mDCTW7L1YS5WDILS3povZE63e34O6B8s4HxEnntAgLuEEsexP
         AIIUBwRWuXyzPcsfJg3mQZWcpgD5bdW924zT717rxyLWiMkEMP66mravPj5Z5id+l1eG
         XQzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712967929; x=1713572729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fv5XjUyHQAdWl3bPoRKg0WmIlKdHELCmSaFid/+Qq0w=;
        b=LKy8Ad50H9ivrQu1isHlnitWixn7f52Ba2K1eYoPPgDL+M8DzJO2ishIeSgKwMDP68
         ppklbvk29oAavHHFfU2Ll93PCqLJ/rdqw7K0oyPMXN2C8JPgezY9VCFnbRKDd8CsTKr2
         J4Xio0q7dMSiVZvIJ5+V/cQeU/Ntu1KiZiF86WUrx4ij0H4H/BS+WMp7ZkyUBwzbIOcO
         6fj13172mVImzWwA/kK3N2nYswPXXEN49HWgS0PPqoWQQV8nD46cUuYY2EcRXjKBH+u6
         H7+ICW3PtlRczQDilosI2IoqKPwdNGma9MAQTN2UTu08R2ZUlG3mQ5hfMGfKPIgvEtao
         NDOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWb4MyF7CjFV38Jgk0I2my2qUAz9R8jrYTP9gprQR2tR6qZnC7zIbNjPA6RZH6NskAYR/IKZPRsi//OP5JknQ4blIT/PuORP7oUpbsxnURlJI/P
X-Gm-Message-State: AOJu0Yz3vCq6Yeqf+FqTNiBgJAIGA9OOlQs5Y1wfdgV9TQ5VdBLgXTvw
	Auo4C24nYtgILhFtSZeBe2Vf21S6/8/BJA8qHgbXrAKDJc7S2rBVkfTFXLS8RCM=
X-Google-Smtp-Source: AGHT+IGW898pCeGLPa+VWvrRPz3hbxFV00Y+MnKqLO1UnlnMcO/OnmtgMSPxUoES+7xDasPhpBwxcQ==
X-Received: by 2002:a0d:d442:0:b0:611:3105:93e5 with SMTP id w63-20020a0dd442000000b00611310593e5mr4391402ywd.17.1712967928280;
        Fri, 12 Apr 2024 17:25:28 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:28 -0700 (PDT)
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
Subject: [PATCH v6 03/11] iommu/amd: use page allocation function provided by iommu-pages.h
Date: Sat, 13 Apr 2024 00:25:14 +0000
Message-ID: <20240413002522.1101315-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
References: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_172531_840504_430EAB00 
X-CRM114-Status: GOOD (  15.79  )
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

Convert iommu/amd/* files to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/amd/amd_iommu.h     |  8 ---
 drivers/iommu/amd/init.c          | 91 ++++++++++++++-----------------
 drivers/iommu/amd/io_pgtable.c    | 13 +++--
 drivers/iommu/amd/io_pgtable_v2.c | 18 +++---
 drivers/iommu/amd/iommu.c         | 11 ++--
 5 files changed, 62 insertions(+), 79 deletions(-)

diff --git a/drivers/iommu/amd/amd_iommu.h b/drivers/iommu/amd/amd_iommu.h
index f482aab420f7..e01409037206 100644
--- a/drivers/iommu/amd/amd_iommu.h
+++ b/drivers/iommu/amd/amd_iommu.h
@@ -134,14 +134,6 @@ static inline int get_pci_sbdf_id(struct pci_dev *pdev)
 	return PCI_SEG_DEVID_TO_SBDF(seg, devid);
 }
 
-static inline void *alloc_pgtable_page(int nid, gfp_t gfp)
-{
-	struct page *page;
-
-	page = alloc_pages_node(nid, gfp | __GFP_ZERO, 0);
-	return page ? page_address(page) : NULL;
-}
-
 /*
  * This must be called after device probe completes. During probe
  * use rlookup_amd_iommu() get the iommu.
diff --git a/drivers/iommu/amd/init.c b/drivers/iommu/amd/init.c
index ac6754a85f35..40b3b9cffade 100644
--- a/drivers/iommu/amd/init.c
+++ b/drivers/iommu/amd/init.c
@@ -36,6 +36,7 @@
 
 #include "amd_iommu.h"
 #include "../irq_remapping.h"
+#include "../iommu-pages.h"
 
 /*
  * definitions for the ACPI scanning code
@@ -649,8 +650,8 @@ static int __init find_last_devid_acpi(struct acpi_table_header *table, u16 pci_
 /* Allocate per PCI segment device table */
 static inline int __init alloc_dev_table(struct amd_iommu_pci_seg *pci_seg)
 {
-	pci_seg->dev_table = (void *)__get_free_pages(GFP_KERNEL | __GFP_ZERO | GFP_DMA32,
-						      get_order(pci_seg->dev_table_size));
+	pci_seg->dev_table = iommu_alloc_pages(GFP_KERNEL | GFP_DMA32,
+					       get_order(pci_seg->dev_table_size));
 	if (!pci_seg->dev_table)
 		return -ENOMEM;
 
@@ -659,17 +660,16 @@ static inline int __init alloc_dev_table(struct amd_iommu_pci_seg *pci_seg)
 
 static inline void free_dev_table(struct amd_iommu_pci_seg *pci_seg)
 {
-	free_pages((unsigned long)pci_seg->dev_table,
-		    get_order(pci_seg->dev_table_size));
+	iommu_free_pages(pci_seg->dev_table,
+			 get_order(pci_seg->dev_table_size));
 	pci_seg->dev_table = NULL;
 }
 
 /* Allocate per PCI segment IOMMU rlookup table. */
 static inline int __init alloc_rlookup_table(struct amd_iommu_pci_seg *pci_seg)
 {
-	pci_seg->rlookup_table = (void *)__get_free_pages(
-						GFP_KERNEL | __GFP_ZERO,
-						get_order(pci_seg->rlookup_table_size));
+	pci_seg->rlookup_table = iommu_alloc_pages(GFP_KERNEL,
+						   get_order(pci_seg->rlookup_table_size));
 	if (pci_seg->rlookup_table == NULL)
 		return -ENOMEM;
 
@@ -678,16 +678,15 @@ static inline int __init alloc_rlookup_table(struct amd_iommu_pci_seg *pci_seg)
 
 static inline void free_rlookup_table(struct amd_iommu_pci_seg *pci_seg)
 {
-	free_pages((unsigned long)pci_seg->rlookup_table,
-		   get_order(pci_seg->rlookup_table_size));
+	iommu_free_pages(pci_seg->rlookup_table,
+			 get_order(pci_seg->rlookup_table_size));
 	pci_seg->rlookup_table = NULL;
 }
 
 static inline int __init alloc_irq_lookup_table(struct amd_iommu_pci_seg *pci_seg)
 {
-	pci_seg->irq_lookup_table = (void *)__get_free_pages(
-					     GFP_KERNEL | __GFP_ZERO,
-					     get_order(pci_seg->rlookup_table_size));
+	pci_seg->irq_lookup_table = iommu_alloc_pages(GFP_KERNEL,
+						      get_order(pci_seg->rlookup_table_size));
 	kmemleak_alloc(pci_seg->irq_lookup_table,
 		       pci_seg->rlookup_table_size, 1, GFP_KERNEL);
 	if (pci_seg->irq_lookup_table == NULL)
@@ -699,8 +698,8 @@ static inline int __init alloc_irq_lookup_table(struct amd_iommu_pci_seg *pci_se
 static inline void free_irq_lookup_table(struct amd_iommu_pci_seg *pci_seg)
 {
 	kmemleak_free(pci_seg->irq_lookup_table);
-	free_pages((unsigned long)pci_seg->irq_lookup_table,
-		   get_order(pci_seg->rlookup_table_size));
+	iommu_free_pages(pci_seg->irq_lookup_table,
+			 get_order(pci_seg->rlookup_table_size));
 	pci_seg->irq_lookup_table = NULL;
 }
 
@@ -708,8 +707,8 @@ static int __init alloc_alias_table(struct amd_iommu_pci_seg *pci_seg)
 {
 	int i;
 
-	pci_seg->alias_table = (void *)__get_free_pages(GFP_KERNEL,
-					get_order(pci_seg->alias_table_size));
+	pci_seg->alias_table = iommu_alloc_pages(GFP_KERNEL,
+						 get_order(pci_seg->alias_table_size));
 	if (!pci_seg->alias_table)
 		return -ENOMEM;
 
@@ -724,8 +723,8 @@ static int __init alloc_alias_table(struct amd_iommu_pci_seg *pci_seg)
 
 static void __init free_alias_table(struct amd_iommu_pci_seg *pci_seg)
 {
-	free_pages((unsigned long)pci_seg->alias_table,
-		   get_order(pci_seg->alias_table_size));
+	iommu_free_pages(pci_seg->alias_table,
+			 get_order(pci_seg->alias_table_size));
 	pci_seg->alias_table = NULL;
 }
 
@@ -736,8 +735,8 @@ static void __init free_alias_table(struct amd_iommu_pci_seg *pci_seg)
  */
 static int __init alloc_command_buffer(struct amd_iommu *iommu)
 {
-	iommu->cmd_buf = (void *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
-						  get_order(CMD_BUFFER_SIZE));
+	iommu->cmd_buf = iommu_alloc_pages(GFP_KERNEL,
+					   get_order(CMD_BUFFER_SIZE));
 
 	return iommu->cmd_buf ? 0 : -ENOMEM;
 }
@@ -845,19 +844,19 @@ static void iommu_disable_command_buffer(struct amd_iommu *iommu)
 
 static void __init free_command_buffer(struct amd_iommu *iommu)
 {
-	free_pages((unsigned long)iommu->cmd_buf, get_order(CMD_BUFFER_SIZE));
+	iommu_free_pages(iommu->cmd_buf, get_order(CMD_BUFFER_SIZE));
 }
 
 static void *__init iommu_alloc_4k_pages(struct amd_iommu *iommu,
 					 gfp_t gfp, size_t size)
 {
 	int order = get_order(size);
-	void *buf = (void *)__get_free_pages(gfp, order);
+	void *buf = iommu_alloc_pages(gfp, order);
 
 	if (buf &&
 	    check_feature(FEATURE_SNP) &&
 	    set_memory_4k((unsigned long)buf, (1 << order))) {
-		free_pages((unsigned long)buf, order);
+		iommu_free_pages(buf, order);
 		buf = NULL;
 	}
 
@@ -867,7 +866,7 @@ static void *__init iommu_alloc_4k_pages(struct amd_iommu *iommu,
 /* allocates the memory where the IOMMU will log its events to */
 static int __init alloc_event_buffer(struct amd_iommu *iommu)
 {
-	iommu->evt_buf = iommu_alloc_4k_pages(iommu, GFP_KERNEL | __GFP_ZERO,
+	iommu->evt_buf = iommu_alloc_4k_pages(iommu, GFP_KERNEL,
 					      EVT_BUFFER_SIZE);
 
 	return iommu->evt_buf ? 0 : -ENOMEM;
@@ -901,14 +900,13 @@ static void iommu_disable_event_buffer(struct amd_iommu *iommu)
 
 static void __init free_event_buffer(struct amd_iommu *iommu)
 {
-	free_pages((unsigned long)iommu->evt_buf, get_order(EVT_BUFFER_SIZE));
+	iommu_free_pages(iommu->evt_buf, get_order(EVT_BUFFER_SIZE));
 }
 
 /* allocates the memory where the IOMMU will log its events to */
 static int __init alloc_ppr_log(struct amd_iommu *iommu)
 {
-	iommu->ppr_log = iommu_alloc_4k_pages(iommu, GFP_KERNEL | __GFP_ZERO,
-					      PPR_LOG_SIZE);
+	iommu->ppr_log = iommu_alloc_4k_pages(iommu, GFP_KERNEL, PPR_LOG_SIZE);
 
 	return iommu->ppr_log ? 0 : -ENOMEM;
 }
@@ -937,14 +935,14 @@ static void iommu_enable_ppr_log(struct amd_iommu *iommu)
 
 static void __init free_ppr_log(struct amd_iommu *iommu)
 {
-	free_pages((unsigned long)iommu->ppr_log, get_order(PPR_LOG_SIZE));
+	iommu_free_pages(iommu->ppr_log, get_order(PPR_LOG_SIZE));
 }
 
 static void free_ga_log(struct amd_iommu *iommu)
 {
 #ifdef CONFIG_IRQ_REMAP
-	free_pages((unsigned long)iommu->ga_log, get_order(GA_LOG_SIZE));
-	free_pages((unsigned long)iommu->ga_log_tail, get_order(8));
+	iommu_free_pages(iommu->ga_log, get_order(GA_LOG_SIZE));
+	iommu_free_pages(iommu->ga_log_tail, get_order(8));
 #endif
 }
 
@@ -989,13 +987,11 @@ static int iommu_init_ga_log(struct amd_iommu *iommu)
 	if (!AMD_IOMMU_GUEST_IR_VAPIC(amd_iommu_guest_ir))
 		return 0;
 
-	iommu->ga_log = (u8 *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
-					get_order(GA_LOG_SIZE));
+	iommu->ga_log = iommu_alloc_pages(GFP_KERNEL, get_order(GA_LOG_SIZE));
 	if (!iommu->ga_log)
 		goto err_out;
 
-	iommu->ga_log_tail = (u8 *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
-					get_order(8));
+	iommu->ga_log_tail = iommu_alloc_pages(GFP_KERNEL, get_order(8));
 	if (!iommu->ga_log_tail)
 		goto err_out;
 
@@ -1008,7 +1004,7 @@ static int iommu_init_ga_log(struct amd_iommu *iommu)
 
 static int __init alloc_cwwb_sem(struct amd_iommu *iommu)
 {
-	iommu->cmd_sem = iommu_alloc_4k_pages(iommu, GFP_KERNEL | __GFP_ZERO, 1);
+	iommu->cmd_sem = iommu_alloc_4k_pages(iommu, GFP_KERNEL, 1);
 
 	return iommu->cmd_sem ? 0 : -ENOMEM;
 }
@@ -1016,7 +1012,7 @@ static int __init alloc_cwwb_sem(struct amd_iommu *iommu)
 static void __init free_cwwb_sem(struct amd_iommu *iommu)
 {
 	if (iommu->cmd_sem)
-		free_page((unsigned long)iommu->cmd_sem);
+		iommu_free_page((void *)iommu->cmd_sem);
 }
 
 static void iommu_enable_xt(struct amd_iommu *iommu)
@@ -1081,7 +1077,6 @@ static bool __copy_device_table(struct amd_iommu *iommu)
 	u32 lo, hi, devid, old_devtb_size;
 	phys_addr_t old_devtb_phys;
 	u16 dom_id, dte_v, irq_v;
-	gfp_t gfp_flag;
 	u64 tmp;
 
 	/* Each IOMMU use separate device table with the same size */
@@ -1115,9 +1110,8 @@ static bool __copy_device_table(struct amd_iommu *iommu)
 	if (!old_devtb)
 		return false;
 
-	gfp_flag = GFP_KERNEL | __GFP_ZERO | GFP_DMA32;
-	pci_seg->old_dev_tbl_cpy = (void *)__get_free_pages(gfp_flag,
-						    get_order(pci_seg->dev_table_size));
+	pci_seg->old_dev_tbl_cpy = iommu_alloc_pages(GFP_KERNEL | GFP_DMA32,
+						     get_order(pci_seg->dev_table_size));
 	if (pci_seg->old_dev_tbl_cpy == NULL) {
 		pr_err("Failed to allocate memory for copying old device table!\n");
 		memunmap(old_devtb);
@@ -2805,8 +2799,8 @@ static void early_enable_iommus(void)
 
 		for_each_pci_segment(pci_seg) {
 			if (pci_seg->old_dev_tbl_cpy != NULL) {
-				free_pages((unsigned long)pci_seg->old_dev_tbl_cpy,
-						get_order(pci_seg->dev_table_size));
+				iommu_free_pages(pci_seg->old_dev_tbl_cpy,
+						 get_order(pci_seg->dev_table_size));
 				pci_seg->old_dev_tbl_cpy = NULL;
 			}
 		}
@@ -2819,8 +2813,8 @@ static void early_enable_iommus(void)
 		pr_info("Copied DEV table from previous kernel.\n");
 
 		for_each_pci_segment(pci_seg) {
-			free_pages((unsigned long)pci_seg->dev_table,
-				   get_order(pci_seg->dev_table_size));
+			iommu_free_pages(pci_seg->dev_table,
+					 get_order(pci_seg->dev_table_size));
 			pci_seg->dev_table = pci_seg->old_dev_tbl_cpy;
 		}
 
@@ -3022,8 +3016,8 @@ static bool __init check_ioapic_information(void)
 
 static void __init free_dma_resources(void)
 {
-	free_pages((unsigned long)amd_iommu_pd_alloc_bitmap,
-		   get_order(MAX_DOMAIN_ID/8));
+	iommu_free_pages(amd_iommu_pd_alloc_bitmap,
+			 get_order(MAX_DOMAIN_ID / 8));
 	amd_iommu_pd_alloc_bitmap = NULL;
 
 	free_unity_maps();
@@ -3095,9 +3089,8 @@ static int __init early_amd_iommu_init(void)
 	/* Device table - directly used by all IOMMUs */
 	ret = -ENOMEM;
 
-	amd_iommu_pd_alloc_bitmap = (void *)__get_free_pages(
-					    GFP_KERNEL | __GFP_ZERO,
-					    get_order(MAX_DOMAIN_ID/8));
+	amd_iommu_pd_alloc_bitmap = iommu_alloc_pages(GFP_KERNEL,
+						      get_order(MAX_DOMAIN_ID / 8));
 	if (amd_iommu_pd_alloc_bitmap == NULL)
 		goto out;
 
diff --git a/drivers/iommu/amd/io_pgtable.c b/drivers/iommu/amd/io_pgtable.c
index 2a0d1e97e52f..9d9a7fde59e7 100644
--- a/drivers/iommu/amd/io_pgtable.c
+++ b/drivers/iommu/amd/io_pgtable.c
@@ -22,6 +22,7 @@
 
 #include "amd_iommu_types.h"
 #include "amd_iommu.h"
+#include "../iommu-pages.h"
 
 static void v1_tlb_flush_all(void *cookie)
 {
@@ -156,7 +157,7 @@ static bool increase_address_space(struct protection_domain *domain,
 	bool ret = true;
 	u64 *pte;
 
-	pte = alloc_pgtable_page(domain->nid, gfp);
+	pte = iommu_alloc_page_node(domain->nid, gfp);
 	if (!pte)
 		return false;
 
@@ -187,7 +188,7 @@ static bool increase_address_space(struct protection_domain *domain,
 
 out:
 	spin_unlock_irqrestore(&domain->lock, flags);
-	free_page((unsigned long)pte);
+	iommu_free_page(pte);
 
 	return ret;
 }
@@ -250,7 +251,7 @@ static u64 *alloc_pte(struct protection_domain *domain,
 
 		if (!IOMMU_PTE_PRESENT(__pte) ||
 		    pte_level == PAGE_MODE_NONE) {
-			page = alloc_pgtable_page(domain->nid, gfp);
+			page = iommu_alloc_page_node(domain->nid, gfp);
 
 			if (!page)
 				return NULL;
@@ -259,7 +260,7 @@ static u64 *alloc_pte(struct protection_domain *domain,
 
 			/* pte could have been changed somewhere. */
 			if (!try_cmpxchg64(pte, &__pte, __npte))
-				free_page((unsigned long)page);
+				iommu_free_page(page);
 			else if (IOMMU_PTE_PRESENT(__pte))
 				*updated = true;
 
@@ -431,7 +432,7 @@ static int iommu_v1_map_pages(struct io_pgtable_ops *ops, unsigned long iova,
 	}
 
 	/* Everything flushed out, free pages now */
-	put_pages_list(&freelist);
+	iommu_put_pages_list(&freelist);
 
 	return ret;
 }
@@ -580,7 +581,7 @@ static void v1_free_pgtable(struct io_pgtable *iop)
 	/* Make changes visible to IOMMUs */
 	amd_iommu_domain_update(dom);
 
-	put_pages_list(&freelist);
+	iommu_put_pages_list(&freelist);
 }
 
 static struct io_pgtable *v1_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
diff --git a/drivers/iommu/amd/io_pgtable_v2.c b/drivers/iommu/amd/io_pgtable_v2.c
index 93489d2db4e8..78ac37c5ccc1 100644
--- a/drivers/iommu/amd/io_pgtable_v2.c
+++ b/drivers/iommu/amd/io_pgtable_v2.c
@@ -18,6 +18,7 @@
 
 #include "amd_iommu_types.h"
 #include "amd_iommu.h"
+#include "../iommu-pages.h"
 
 #define IOMMU_PAGE_PRESENT	BIT_ULL(0)	/* Is present */
 #define IOMMU_PAGE_RW		BIT_ULL(1)	/* Writeable */
@@ -99,11 +100,6 @@ static inline int page_size_to_level(u64 pg_size)
 	return PAGE_MODE_1_LEVEL;
 }
 
-static inline void free_pgtable_page(u64 *pt)
-{
-	free_page((unsigned long)pt);
-}
-
 static void free_pgtable(u64 *pt, int level)
 {
 	u64 *p;
@@ -125,10 +121,10 @@ static void free_pgtable(u64 *pt, int level)
 		if (level > 2)
 			free_pgtable(p, level - 1);
 		else
-			free_pgtable_page(p);
+			iommu_free_page(p);
 	}
 
-	free_pgtable_page(pt);
+	iommu_free_page(pt);
 }
 
 /* Allocate page table */
@@ -156,14 +152,14 @@ static u64 *v2_alloc_pte(int nid, u64 *pgd, unsigned long iova,
 		}
 
 		if (!IOMMU_PTE_PRESENT(__pte)) {
-			page = alloc_pgtable_page(nid, gfp);
+			page = iommu_alloc_page_node(nid, gfp);
 			if (!page)
 				return NULL;
 
 			__npte = set_pgtable_attr(page);
 			/* pte could have been changed somewhere. */
 			if (cmpxchg64(pte, __pte, __npte) != __pte)
-				free_pgtable_page(page);
+				iommu_free_page(page);
 			else if (IOMMU_PTE_PRESENT(__pte))
 				*updated = true;
 
@@ -185,7 +181,7 @@ static u64 *v2_alloc_pte(int nid, u64 *pgd, unsigned long iova,
 		if (pg_size == IOMMU_PAGE_SIZE_1G)
 			free_pgtable(__pte, end_level - 1);
 		else if (pg_size == IOMMU_PAGE_SIZE_2M)
-			free_pgtable_page(__pte);
+			iommu_free_page(__pte);
 	}
 
 	return pte;
@@ -366,7 +362,7 @@ static struct io_pgtable *v2_alloc_pgtable(struct io_pgtable_cfg *cfg, void *coo
 	struct protection_domain *pdom = (struct protection_domain *)cookie;
 	int ias = IOMMU_IN_ADDR_BIT_SIZE;
 
-	pgtable->pgd = alloc_pgtable_page(pdom->nid, GFP_ATOMIC);
+	pgtable->pgd = iommu_alloc_page_node(pdom->nid, GFP_ATOMIC);
 	if (!pgtable->pgd)
 		return NULL;
 
diff --git a/drivers/iommu/amd/iommu.c b/drivers/iommu/amd/iommu.c
index e692217fcb28..922f5d42c18e 100644
--- a/drivers/iommu/amd/iommu.c
+++ b/drivers/iommu/amd/iommu.c
@@ -42,6 +42,7 @@
 #include "amd_iommu.h"
 #include "../dma-iommu.h"
 #include "../irq_remapping.h"
+#include "../iommu-pages.h"
 
 #define CMD_SET_TYPE(cmd, t) ((cmd)->data[1] |= ((t) << 28))
 
@@ -1728,7 +1729,7 @@ static void free_gcr3_tbl_level1(u64 *tbl)
 
 		ptr = iommu_phys_to_virt(tbl[i] & PAGE_MASK);
 
-		free_page((unsigned long)ptr);
+		iommu_free_page(ptr);
 	}
 }
 
@@ -1761,7 +1762,7 @@ static void free_gcr3_table(struct gcr3_tbl_info *gcr3_info)
 	/* Free per device domain ID */
 	domain_id_free(gcr3_info->domid);
 
-	free_page((unsigned long)gcr3_info->gcr3_tbl);
+	iommu_free_page(gcr3_info->gcr3_tbl);
 	gcr3_info->gcr3_tbl = NULL;
 }
 
@@ -1796,7 +1797,7 @@ static int setup_gcr3_table(struct gcr3_tbl_info *gcr3_info,
 	/* Allocate per device domain ID */
 	gcr3_info->domid = domain_id_alloc();
 
-	gcr3_info->gcr3_tbl = alloc_pgtable_page(nid, GFP_ATOMIC);
+	gcr3_info->gcr3_tbl = iommu_alloc_page_node(nid, GFP_ATOMIC);
 	if (gcr3_info->gcr3_tbl == NULL) {
 		domain_id_free(gcr3_info->domid);
 		return -ENOMEM;
@@ -2245,7 +2246,7 @@ static void protection_domain_free(struct protection_domain *domain)
 		free_io_pgtable_ops(&domain->iop.iop.ops);
 
 	if (domain->iop.root)
-		free_page((unsigned long)domain->iop.root);
+		iommu_free_page(domain->iop.root);
 
 	if (domain->id)
 		domain_id_free(domain->id);
@@ -2260,7 +2261,7 @@ static int protection_domain_init_v1(struct protection_domain *domain, int mode)
 	BUG_ON(mode < PAGE_MODE_NONE || mode > PAGE_MODE_6_LEVEL);
 
 	if (mode != PAGE_MODE_NONE) {
-		pt_root = (void *)get_zeroed_page(GFP_KERNEL);
+		pt_root = iommu_alloc_page(GFP_KERNEL);
 		if (!pt_root)
 			return -ENOMEM;
 	}
-- 
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
