Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7AB4C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 09:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ap1Cr+F54cqZ6rWvXSu+Z7PKnyFHPDdZ3XT9AM/0jQ=; b=ZvyC/k0LFDK8//
	FFK2X1oJ6K57LWFkqumXIH37uz+jAg9jXlRO0SNENwSTqZEWqrUZ4LCNPN8dCh47oDNwS1y2VqEdG
	HHjL40eXTqBWUId9V0fvSFm+zHOkHfVF3fxs5cwjlV5Tce4Xo+g7TGse33EH5x+NoL2H6+8t0jwOs
	A+Tod5KHOYOHbQBLjgjjDnTBSOUrjkHFjI2fg5UInANhTTc76hXHjATY+yaGH31v3mHi8RVsryNbQ
	V2dnKSmheYKEjspprz4fPqQutB/egkcS8C6lTFUXLfSf8nZ+UnIBFDVBHRL5V6/c6z25s6fWXif3n
	p6UN86qvKXNngZWUeYXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FL-0000000HQ8p-3xAB;
	Fri, 29 Mar 2024 09:09:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FG-0000000HQ1O-2QZX
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:09:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 68D1B618EF;
	Fri, 29 Mar 2024 09:09:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1918CC43390;
	Fri, 29 Mar 2024 09:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703394;
	bh=HKiMTB0O7fIx/S5BlFDhoWZQHCueYyMiVzbKw6x++gs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ji+oGXyrtlvfIQ3j1ohmds6ftLT/Z9FNG1wS8AlN9LIoTSjxCcffjR8K7SaDTY9So
	 ymfeHkrbkg9sCxAifM+bmJHWBcEDp4LO7zxTAZGuuB7/WpJWlaiwo9hIGf401C2zWj
	 lqYeoNE4+HYAh8v+s7prkujTr4pvXkizlZvDOp7V2FIoAahBhnSw8nQrxnkvNyPD6Z
	 JBnKQkdqG2kJlVxjSjX/SDp8/CBNMIZaMjx6Yygn6JxBZu0lXI3bgyTRrskzUMHUUS
	 7gcj6bH4veBPGTMN0yxWsm2xVYWRXmKGyHqaFGXB5PvK1hT7kzPf60PGBm549yn8Vv
	 crLeTc+DymbjQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 04/19] PCI: endpoint: Introduce pci_epc_mem_map()/unmap()
Date: Fri, 29 Mar 2024 18:09:30 +0900
Message-ID: <20240329090945.1097609-5-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_020954_759336_49E5D444 
X-CRM114-Status: GOOD (  17.99  )
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

Introduce the function pci_epc_mem_map() to facilitate controller memory
address allocation and mapping to a RC PCI address region in endpoint
function drivers.

This function first uses pci_epc_map_align() to determine the controller
memory address alignment (offset and size) constraints. The result of
this function is used to allocate a controller physical memory region
using pci_epc_mem_alloc_addr() and map it to the RC PCI address
space with pci_epc_map_addr(). Since pci_epc_map_align() may indicate
that a mapping can be smaller than the requested size, pci_epc_mem_map()
may only partially map the RC PCI address region specified and return
a smaller size for the effective mapping.

The counterpart of pci_epc_mem_map() to unmap and free the controller
memory address region is pci_epc_mem_unmap().

Both functions operate using struct pci_epc_map data structure which is
extended to contain the physical and virtual addresses of the allocated
controller memory. Endpoint function drivers can use struct pci_epc_map
to implement read/write accesses within the mapped RC PCI address region
using the ->virt_addr and ->size fields.

Co-developed-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/pci-epc-core.c | 68 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  6 +++
 2 files changed, 74 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index f558b333f842..539196c602cb 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -529,6 +529,74 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 }
 EXPORT_SYMBOL_GPL(pci_epc_map_addr);
 
+/**
+ * pci_epc_mem_map() - allocate and map CPU address to PCI address
+ * @epc: the EPC device on which the CPU address is to be allocated and mapped
+ * @func_no: the physical endpoint function number in the EPC device
+ * @vfunc_no: the virtual endpoint function number in the physical function
+ * @pci_addr: PCI address to which the CPU address should be mapped
+ * @size: the number of bytes to map starting from @pci_addr
+ * @map: where to return the mapping information
+ *
+ * Allocate a controller physical address region and map it to a RC PCI address
+ * region, taking into account the controller physical address mapping
+ * constraints (if any). Returns the effective size of the mapping, which may
+ * be less than @size, or a negative error code in case of error.
+ */
+ssize_t pci_epc_mem_map(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			u64 pci_addr, size_t size, struct pci_epc_map *map)
+{
+	int ret;
+
+	ret = pci_epc_map_align(epc, func_no, vfunc_no, pci_addr, size, map);
+	if (ret)
+		return ret;
+
+	map->virt_base = pci_epc_mem_alloc_addr(epc, &map->phys_base,
+						map->map_size);
+	if (!map->virt_base)
+		return -ENOMEM;
+
+	map->phys_addr = map->phys_base + map->map_ofst;
+	map->virt_addr = map->virt_base + map->map_ofst;
+
+	ret = pci_epc_map_addr(epc, func_no, vfunc_no, map->phys_base,
+			       map->map_pci_addr, map->map_size);
+	if (ret) {
+		pci_epc_mem_free_addr(epc, map->phys_base, map->virt_base,
+				      map->map_size);
+		return ret;
+	}
+
+	return map->pci_size;
+}
+EXPORT_SYMBOL_GPL(pci_epc_mem_map);
+
+/**
+ * pci_epc_mem_unmap() - unmap from PCI address and free a CPU address region
+ * @epc: the EPC device on which the CPU address is allocated and mapped
+ * @func_no: the physical endpoint function number in the EPC device
+ * @vfunc_no: the virtual endpoint function number in the physical function
+ * @map: the mapping information
+ *
+ * Allocate and map local CPU address to a PCI address, accounting for the
+ * controller local CPU address alignement constraints.
+ */
+void pci_epc_mem_unmap(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+		       struct pci_epc_map *map)
+{
+	if (!pci_epc_check_func(epc, func_no, vfunc_no))
+		return;
+
+	if (!map || !map->pci_size)
+		return;
+
+	pci_epc_unmap_addr(epc, func_no, vfunc_no, map->phys_base);
+	pci_epc_mem_free_addr(epc, map->phys_base, map->virt_base,
+			      map->map_size);
+}
+EXPORT_SYMBOL_GPL(pci_epc_mem_unmap);
+
 /**
  * pci_epc_clear_bar() - reset the BAR
  * @epc: the EPC device for which the BAR has to be cleared
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 8cfb4aaf2628..86397a500b54 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -304,4 +304,10 @@ void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 				     phys_addr_t *phys_addr, size_t size);
 void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
 			   void __iomem *virt_addr, size_t size);
+
+ssize_t pci_epc_mem_map(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			u64 pci_addr, size_t size, struct pci_epc_map *map);
+void pci_epc_mem_unmap(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+		       struct pci_epc_map *map);
+
 #endif /* __LINUX_PCI_EPC_H */
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
