Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0EAACA6015
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 00:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYF7RXTiim+Z1baMJVQ6IhIR+iS5ruAMcr49J6uB4lY=; b=zyKoJ+yAvIMFmq
	INyNdshekfVqS7MAD6Ks5U5GdNzGXAmyELg24CrCwunMCxqqCEnFnhJN6IlnUWWcqFufG/218JUvG
	rbMsm6Ecwh3AiRQ/gcNVUyPSeUANTpMaIwp8lzVT0dlAy7Fa4E90kxkpZ/CjP6sWyJfamsWFpGIpQ
	HdyOlCdEX+okvS4+w6eAAitifZiiXee38l7HPHdzgmuRjzYxfuEnJ12X9nDNtAaFgdTTuYfMD+FvC
	woDmybrh92UfOVVLP0YGYpiKB3FkRXdPgCW+bWFYMKgmmGgpjy7gPcDktiYpDdS96RDbRmhvl5Aks
	7p0s2sdo4gYof0laxM5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEyMh-00000005Bht-29zO;
	Fri, 09 Oct 2026 00:21:35 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEyMd-00000005BeE-1f2Q
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Oct 2026 00:21:33 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4a171b677d2so25649175e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 17:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791505289; x=1792110089; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SuA9XknANPL6VvC11pYgn0IAp4/AWH6zzAsKWJ2B0W4=;
        b=d9hbJ83+IvyEFxfvM8m7zloPhbuorzPlaDnDjJETucrmCNAeY5g5vI34/R+7olHqrq
         ZCUAP87JLnIPpoa8PXY3c7EWFjC3w03CR6T4a8XcDEv6ewr0piS82X8CS982eLkO67F7
         h/AhX8/Ul6aW9ZPW1nslafckudcUuKPpweDjMgJCmr7PHX/aK0/u2QWDJxUb4BdQXTkh
         8G4KphAD1D2aP4bT+rczzj0338SIhOeHX+ZD+8XhPE6o32CP1tcixMo5Nf2bAgPF+jj5
         FXB5jz2iXYa9ckYZ2XFOtoIwN7F8G/yMS3PVZ1A3S6ooV65iLpIdATVOzFM+AW3Z7A/4
         1NBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791505289; x=1792110089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=SuA9XknANPL6VvC11pYgn0IAp4/AWH6zzAsKWJ2B0W4=;
        b=Jk/+SmBrfZzurv8kKVt0+44XlWkmojpMZ8Drr2eoVpH5L4ZUDXteRDatAXD7MrGd/4
         JV2WAXBTaAw0U8oII7fOfBEGALQKXSjc5GKE9OZKXPLm3yyjIColdV141MJWglYyj8uB
         cGj1o6hJ1gh/6M6y0wmdgQv7H9AkmqKP4k+kv3B7++QgyA3EMUq93fMbcdgqZfLY0Rvc
         UXIPeQe7uHs3ZFVrrFQXIvglWiw0F0458HvpvZfQ8qZ/NVuUplBm+8K4I2pA2sXhFL0R
         g9thJkbnbmKT7fjZPZOxEkgLcnx463dlPhLieUAbd/WyajD3ahVNFuYY0PMp5sUFPPaJ
         0zQg==
X-Forwarded-Encrypted: i=1; AKwUvBzSHCnbBIUrzT9ct/mgYstzNrjxTcf5w2s9Y0imVu110lGCNzafl5EcIMyQxPFxt6L1O0Q7YmIKji4P6WW8og==@lists.infradead.org
X-Gm-Message-State: AFuF++mJqkwEFHhA3yrpGf//Z6xdip4CiaIYWWpZcOJrfxdVDKc9336I
	bEjI6HbVRRSowhDOht2ny5vpKXBvS5NM75SnVJ7+5S+6NvLWSZqnTGe7
X-Gm-Gg: AYBFou1WommTRWQumPrH7iqPHSFWED6q7tDWLyV5YFVzyTODUpVce/hUXn9l9GrOEn9
	aqN74cxoi1s7CDMDD47HCBz+xmjKluSFsSmGXlwbFUJKmueZFxXlgf7OQosOCNUJo6nCVDMzuHm
	HYgVcx55bBDOtmsD5Jlr0WFs9FRO06LkT80PkKnRTQGeUA8Da3XriJEeIfN56n+D9wqXDCY1f+t
	wnPgl04525keiVMqxsX2G8Bb+K0Io1eoamha1TvPvUd//CBkFyp+qamJIpZWMak69yY9P1mmtSE
	vl52cttOxMDXH1RUTrg/ot089nkCLEHc/PjrdCQV6wq2baNDnzD5kmYcBWjj3avQtQcRgz/luOZ
	/BiVSTs57VpP4PeidrI5GO7wDgbr0VZG8fI427D5dR5Acx18nN9oLmLXG0HN06w7EifeR0nJ2e8
	ls80Uk7+PUpR0lOXhTdYiUvcZwXtLoruYv+lsPI+BghtWtujvQ75m4P4Wv6OOoeZd0jtFewWu07
	B0m32pTXE5QNePXUVSwmigDNKNYZm1/pxf2UASAHh+gEl9lh4wW3DB9ipwiqXJUXSCTtqcea9J5
	OYnzMTIhTNO9Pl3NLZW1KtK6x+7m8ODp6HTT0trnisGaPfzNRP0ZPN7FlQeACHtRtFWW9ptS1+K
	LdfQe444=
X-Received: by 2002:a05:600c:8706:b0:4a0:1efa:c74a with SMTP id 5b1f17b1804b1-4a18e4b0f6amr2065355e9.20.1791505289240;
        Thu, 08 Oct 2026 17:21:29 -0700 (PDT)
Received: from localhost.localdomain (dynamic-2a02-3100-ad61-5a01-743c-891f-b33c-cae7.310.pool.telefonica.de. [2a02:3100:ad61:5a01:743c:891f:b33c:cae7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a18e4987casm3364605e9.1.2026.10.08.17.21.26
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 08 Oct 2026 17:21:27 -0700 (PDT)
From: Karl Mehltretter <kmehltretter@gmail.com>
To: iommu@lists.linux.dev,
	dri-devel@lists.freedesktop.org
Cc: Karl Mehltretter <kmehltretter@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Jason Gunthorpe <jgg@nvidia.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/2] iommu: Add iommu_map_sgtable_dma()
Date: Fri,  9 Oct 2026 02:21:13 +0200
Message-Id: <20261009002114.67851-2-kmehltretter@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20261009002114.67851-1-kmehltretter@gmail.com>
References: <20261009002114.67851-1-kmehltretter@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_172131_478490_B0065E26 
X-CRM114-Status: GOOD (  20.73  )
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

DMA-BUF attachments provide DMA addresses, not CPU-side pages.
iommu_map_sgtable() needs those pages, so private-domain importers such
as Rockchip cannot use it with strict DMABUF_DEBUG.

Add an iommu-dma helper to map a live attachment into another domain by
translating through the device's default DMA domain. Roll back target
mappings on error. This still recovers physical addresses internally.

Only non-bounced iommu-dma mappings are supported. Other DMA backends,
marked bus addresses and zero translations return -EOPNOTSUPP, as does
the IOMMU_DMA=n stub. A zero lookup cannot distinguish a hole from PA0.
Reject bounce slots because a second mapping cannot keep them in sync
with writes to the original buffer.

DMABUF_DEBUG currently drops DMA flags from its copy, so the bus-address
check depends on the input retaining that mark.

Assisted-by: LLM
Signed-off-by: Karl Mehltretter <kmehltretter@gmail.com>
---
 drivers/iommu/dma-iommu.c | 131 ++++++++++++++++++++++++++++++++++++++
 include/linux/iommu.h     |  12 ++++
 2 files changed, 143 insertions(+)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 58c624513cd4..b9a1f91ec5db 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -38,6 +38,137 @@
 #include "dma-iommu.h"
 #include "iommu-pages.h"
 
+/**
+ * iommu_map_sgtable_dma - map the DMA side of an sg_table into a domain
+ * @domain: domain to map into
+ * @iova: IOVA of the first byte
+ * @dev: device for which @sgt is mapped
+ * @sgt: live DMA-API mapping for @dev, backed by non-bounced RAM
+ * @prot: IOMMU protection flags
+ *
+ * Translate the DMA addresses through @dev's default iommu-dma domain and
+ * map the backing memory into @domain without reading the CPU side of @sgt.
+ * Direct DMA and other DMA backends are not supported. Entries marked as
+ * PCI P2P bus addresses and SWIOTLB bounce buffers are also not supported.
+ *
+ * The caller must keep the source mapping, DMA backend and default domain
+ * unchanged until the target mapping is removed. This function may sleep.
+ * DMA addresses and lengths must be aligned to the smaller of the source
+ * and target domains' minimum page sizes. @iova and the total length must
+ * be aligned to the target domain's minimum page size.
+ *
+ * A zero reverse translation is unsupported: iommu_iova_to_phys() cannot
+ * distinguish an absent mapping from a mapping to physical address zero.
+ *
+ * Return: the number of bytes mapped, -EOPNOTSUPP for unsupported source
+ * mappings or source alignment, or another negative errno on error. Any
+ * target mappings installed by this call are removed on error.
+ */
+ssize_t iommu_map_sgtable_dma(struct iommu_domain *domain, unsigned long iova,
+			      struct device *dev, struct sg_table *sgt,
+			      int prot)
+{
+	struct iommu_domain *dma_domain;
+	size_t len = 0, mapped = 0, total = 0;
+	struct scatterlist *sg;
+	size_t granule, target_granule;
+	phys_addr_t start = 0;
+	unsigned long last_iova;
+	unsigned int i;
+	int ret;
+
+	if (!domain->pgsize_bitmap)
+		return -EINVAL;
+
+	target_granule = 1UL << __ffs(domain->pgsize_bitmap);
+	if (!use_dma_iommu(dev))
+		return -EOPNOTSUPP;
+	dma_domain = iommu_get_dma_domain(dev);
+	if (!dma_domain || !dma_domain->pgsize_bitmap)
+		return -EOPNOTSUPP;
+	granule = min(target_granule,
+		      1UL << __ffs(dma_domain->pgsize_bitmap));
+
+	for_each_sgtable_dma_sg(sgt, sg, i) {
+		dma_addr_t last_dma;
+		size_t dma_len = sg_dma_len(sg);
+
+		if (sg_dma_is_bus_address(sg))
+			return -EOPNOTSUPP;
+		if (!dma_len || !IS_ALIGNED(sg_dma_address(sg), granule) ||
+		    !IS_ALIGNED(dma_len, granule))
+			return -EOPNOTSUPP;
+		if (check_add_overflow(sg_dma_address(sg), dma_len - 1,
+				       &last_dma) ||
+		    check_add_overflow(total, dma_len, &total))
+			return -EOVERFLOW;
+	}
+	if (!total)
+		return 0;
+	if (total > SSIZE_MAX || !IS_ALIGNED(iova, target_granule) ||
+	    !IS_ALIGNED(total, target_granule))
+		return -EINVAL;
+	if (check_add_overflow(iova, total - 1, &last_iova))
+		return -EOVERFLOW;
+
+	for_each_sgtable_dma_sg(sgt, sg, i) {
+		dma_addr_t dma_addr = sg_dma_address(sg);
+		size_t dma_len = sg_dma_len(sg);
+
+		while (dma_len) {
+			phys_addr_t next;
+			phys_addr_t phys;
+
+			phys = iommu_iova_to_phys(dma_domain, dma_addr);
+			if (!phys || swiotlb_find_pool(dev, phys)) {
+				ret = -EOPNOTSUPP;
+				goto out_err;
+			}
+
+			if (len && check_add_overflow(start, len, &next)) {
+				ret = -EOVERFLOW;
+				goto out_err;
+			}
+			if (len && phys != next) {
+				ret = iommu_map_nosync(domain, iova + mapped,
+						       start, len, prot,
+						       GFP_KERNEL);
+				if (ret)
+					goto out_err;
+				mapped += len;
+				len = 0;
+			}
+			if (!len)
+				start = phys;
+			if (check_add_overflow(len, granule, &len)) {
+				ret = -EOVERFLOW;
+				goto out_err;
+			}
+			dma_addr += granule;
+			dma_len -= granule;
+		}
+	}
+
+	if (len) {
+		ret = iommu_map_nosync(domain, iova + mapped, start, len, prot,
+				       GFP_KERNEL);
+		if (ret)
+			goto out_err;
+		mapped += len;
+	}
+
+	ret = iommu_sync_map(domain, iova, mapped);
+	if (ret)
+		goto out_err;
+
+	return mapped;
+
+out_err:
+	iommu_unmap(domain, iova, mapped);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(iommu_map_sgtable_dma);
+
 struct iommu_dma_msi_page {
 	struct list_head	list;
 	dma_addr_t		iova;
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index ac43b8b93f14..95d90c7f953b 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -1604,8 +1604,20 @@ static inline void iommu_debugfs_setup(void) {}
 #endif
 
 #ifdef CONFIG_IOMMU_DMA
+ssize_t iommu_map_sgtable_dma(struct iommu_domain *domain, unsigned long iova,
+			      struct device *dev, struct sg_table *sgt,
+			      int prot);
 int iommu_get_msi_cookie(struct iommu_domain *domain, dma_addr_t base);
 #else /* CONFIG_IOMMU_DMA */
+static inline ssize_t iommu_map_sgtable_dma(struct iommu_domain *domain,
+					    unsigned long iova,
+					    struct device *dev,
+					    struct sg_table *sgt,
+					    int prot)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int iommu_get_msi_cookie(struct iommu_domain *domain, dma_addr_t base)
 {
 	return -ENODEV;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
