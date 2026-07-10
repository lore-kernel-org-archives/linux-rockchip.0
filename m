Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D58A0C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 06:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U4ry/zWWZ8tPMXNku7DOzCyYZb/rezQhIIIbvoVOCC0=; b=keDS8uGqhvSUeZ
	/VBDVlqmCd1tkuczknMaous9OSzdO84CPjPilhY893rD06FlW/J58BHTeN8czVMkgMGwXNcOtHDnm
	nlFQMHN87qN31hyIEtVnhGK16iIyoAHbgv4R+4nOJ94xdYEh90cXvB4d4rnIc0lTQrVzfgZmLuJ8u
	nQUtCgjGmAQSbxgbl31i1jPj5mXt4T3iM3PehbeRT1ZkLAJKA9i40Mdssbd200YCEfzvVXWrO9nRm
	PiTue/47ZI3UWtamn1PJJ+GDEp+QekX6hDCBVbRq/ot1tdEROs+8YI8Pc6R5KFonXRhLyVLa0Euaj
	Ge7wozFqgAPlRxQWIR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi4MY-00000004F2M-0OjU;
	Fri, 10 Jul 2026 06:05:26 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi4MU-00000004F0f-0CCl
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 06:05:24 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2ce7ac92dfcso5324485ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jul 2026 23:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783663521; x=1784268321; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pQgPhs+dZcfRNPuJReU9TiVxwha1e01HcHWKyyYl0NE=;
        b=VRgGW+szlAy3DGqKXRPo+KCYgTdX0SAGe4VOcpVIQnGJwa1S/TqFWsDOXm5FvupD87
         Q/v9UtMO4iJGxlH4V2oi8i0HLqBBzLXxOjjXOIUQWkB9CIMV5rNVv709eRmQ5Xos6vuN
         E4AU88swa38D6Kz/rocMOGdMZlXc2DQdqNgc4tFdE1Chq9rTEd3GavVPbbL82F14ayxR
         PNIOQ8ONYtUEYCNu89g4RxFk9vkSL00TGDvHDhIlpRmUDVKi+4Bd9aiklqrpta+URQfe
         wH/B/8fjdxcyQYqwbzFxLLxat2RACElkEku6rTSJeZW4yBEPNcyOer1Ht93saN9FVWPy
         ib0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783663521; x=1784268321;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pQgPhs+dZcfRNPuJReU9TiVxwha1e01HcHWKyyYl0NE=;
        b=LuGQoWPcPNS/qjQLiamIQJnEuYO/JuRYob+jS78bmJwHb+Sth3r9xSUtnuKwN60XYW
         UmjL0CGuBpQpOQnHvXEb/26Ui8yJGdFk8xYzoviNR8Qre4ff9iboPrbqSXLMfQo6Qnyv
         2MPLxDrF4Q8gUVqB26ZjkZfVPZ6yTQ0EpGMteSWCcEuD35vTvhsHqDPmokbsIXG1xGj7
         H0wPdSbiWKrWdAEZ8yqjboMdB9fyEx0nxS9WjKM99+8yPIUtmkMWOP2LKPl0ZkFZ0NtJ
         kEDn0izqQD7HD4lbkYpD6k/YQODbDKjXKgnvfUcAdazQc9w0pzzPqhFVi+iCj5k4a+UI
         jQcA==
X-Forwarded-Encrypted: i=1; AHgh+RrjU/BzJSbQrMWjYtWmLTC1GFuFPuKaCew5/A0HzRe0mT4IiN40e2nWfeXQ7+K5g63CeknfCTH4G3LeuiVDJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyBcpdrSROe+XHTfrZNSfq65IpIIJXkvS6cUvlDhQG5ByKAPuXb
	RRl6Y87wLVkBqHviAnvip4JyOjnv6cLdxaPFKuSP9is8cFR5gVW+LE51
X-Gm-Gg: AfdE7cnBR0it269mFLdFZa1WPgHMH7MYE6ArUWt6EKqYXMiDwIF+iWhYaz1Jzk5YjA3
	uVSJa9/XE/zlBab4vYVqeqUkz3qn9tmzFUjGDJoJVrvIOXkTvJ8aB6cBDasd1wL5Q/BYJIn/GWf
	FjXKh/rFN3Whl7GqejJy7Uj2N7JP5Ul9TrQWetTxJUtU+Z/yKWYuFkWBQ1oObWY6sxh3YtTqh1V
	cRLmWfD64Aebca3veaj7rBJbORMNXfRMLsMflK3Q9ti4o+FPJQfNWHgkCf/3qRk7WhyEE90HdDh
	IOAljksXHZn5/U8c9SiwZ4e6Bd60+YvSYz65bidqwTZyKarC74Xha/ehCgI5rNvFNOrsRlwrik8
	IQdkTlnvd8ft+Z83Lzjy0VkuYqGwL2Ns8ZCB4dmUSP/Q0uv/kd3P57GcBUinNbKA58jpy7FsUoB
	vU+s4uim2FVyL41Girw9QroslS8oYfa6Y155Y4wY2hRk8HdCYV6c+BSNX9VsdyOh/vGpDvx18=
X-Received: by 2002:a17:903:1b0f:b0:2c9:c95e:5836 with SMTP id d9443c01a7336-2ccea2a5748mr105552515ad.5.1783663520722;
        Thu, 09 Jul 2026 23:05:20 -0700 (PDT)
Received: from ubuntu-gnu-linux-24-04-3.hub ([2407:7000:af23:3e00:61b7:bd9d:8d64:1bac])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9bdb76asm56314635ad.12.2026.07.09.23.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 23:05:19 -0700 (PDT)
From: Jiaxing Hu <huhuvmb88@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] iommu/rockchip: implement .flush_iotlb_all
Date: Fri, 10 Jul 2026 18:05:13 +1200
Message-ID: <20260710060513.863714-1-huhuvmb88@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_230522_107746_147C10E6 
X-CRM114-Status: GOOD (  12.50  )
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

rk_iommu invalidates the IOTLB synchronously in .unmap (via
rk_iommu_zap_iova), so it stays consistent without a deferred .iotlb_sync
and does not advertise IOMMU_CAP_DEFERRED_FLUSH.

It never implemented the optional .flush_iotlb_all op, though, and
iommu_flush_iotlb_all() is a no-op when that op is absent -- so on Rockchip
a driver that owns an rk_iommu domain and calls it to flush the whole
domain's TLB (e.g. before reusing a mapping, without unmapping it) gets
nothing, even though the hardware can do it: rk_iommu already issues
ZAP_CACHE for range shootdowns.

Implement it with that same primitive: ZAP_CACHE every bank of every IOMMU
on the domain, under the runtime-PM + clk guard already used by
rk_iommu_zap_iova().

Found while bringing up an out-of-tree RK3576 NPU (accel/rocket) driver
that flushes before each submit; on Rockchip that flush did nothing.

Signed-off-by: Jiaxing Hu <huhuvmb88@gmail.com>
---
diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1202,6 +1202,30 @@
 	return 0;
 }
 
+/* shootdown the entire tlb on all iommus using this domain */
+static void rk_iommu_flush_iotlb_all(struct iommu_domain *domain)
+{
+	struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
+	struct list_head *pos;
+	unsigned long flags;
+
+	spin_lock_irqsave(&rk_domain->iommus_lock, flags);
+	list_for_each(pos, &rk_domain->iommus) {
+		struct rk_iommu *iommu = list_entry(pos, struct rk_iommu, node);
+		int ret = pm_runtime_get_if_in_use(iommu->dev);
+
+		if (WARN_ON_ONCE(ret < 0))
+			continue;
+		if (ret) {
+			WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks));
+			rk_iommu_command(iommu, RK_MMU_CMD_ZAP_CACHE);
+			clk_bulk_disable(iommu->num_clocks, iommu->clocks);
+			pm_runtime_put(iommu->dev);
+		}
+	}
+	spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);
+}
+
 static const struct iommu_ops rk_iommu_ops = {
 	.identity_domain = &rk_identity_domain,
 	.domain_alloc_paging = rk_iommu_domain_alloc_paging,
@@ -1214,6 +1245,7 @@
 		.map_pages	= rk_iommu_map,
 		.unmap_pages	= rk_iommu_unmap,
 		.iova_to_phys	= rk_iommu_iova_to_phys,
+		.flush_iotlb_all = rk_iommu_flush_iotlb_all,
 		.free		= rk_iommu_domain_free,
 	}
 };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
