Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75214CD1288
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 05:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ihJpqGAUHsM801GK3OZ30+v/5fZ4BVeee39FKkm56E=; b=PXCbpLpj6VSItb
	GA/1ShyRheir6IEEOBYeSIrpf0nKjTSbsDdGjJg36QLjNXCdYY7qrTh+eOspBAz0SSoFCop7JRTsv
	/JsNm2mTT3putwh8uMNFJy917EmoMz48UW0L1uekKXT4FpDSklZf+hJlUUAn1pVudWtfmmsN2WDGN
	Wp35g9/gobUPMs09uORwRMI/XrBT5VhsWagDnp6o8Dykf9hJfsFwCS6tOcbubO3daO11IRj0cmGdT
	GYax6T4zFojVSZzvyJsrDLW+liZ/O6l/rb0tXL14IfVR6uFoH8/iFTulHHXQDwb53HH3uaWJRgYR4
	cqBP7P8EGBqxWJc+MpNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqRMP-00000002qEk-3Wvn;
	Sat, 30 Mar 2024 05:34:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQBy-00000002jeA-1afu;
	Sat, 30 Mar 2024 04:19:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CED5060BB7;
	Sat, 30 Mar 2024 04:19:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1927C43390;
	Sat, 30 Mar 2024 04:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772381;
	bh=Ao001csYCN6yZIStO43McU0FezoXkwzy4CBDoV75mOI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n0rVtTAdEHncI7btaISmeCrHohnNnZimfSjh8u0BHMWyGEtIOyJngOaFDTYXLUkf5
	 8knQ6x5u9cqpjFgu+BfDqpqYcn8AdVNcYzpkuZcV1b6AXG5dCFeynAD+d2wm/Jmmya
	 nBi51Ma1IiysY1PX47uuTCjh+eO+IW0NfrLlXkdUvP9+VxohyeH+01OBl6k/OysM2n
	 UoTFaPgwzkn0keVOcfa87qVht6Fawv8oCaHdABq2gXsNx3HnJLuCtMt3YMqj2t74RJ
	 gfKAkOdWngT0ucv6Ynd8Qs7ROtijXpAQ87nx+pdYdYEA1CtAuKgZlYjwM5and9pF7w
	 9nfn29KCNxbTg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v2 03/18] PCI: endpoint: Introduce pci_epc_mem_map()/unmap()
Date: Sat, 30 Mar 2024 13:19:13 +0900
Message-ID: <20240330041928.1555578-4-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_211942_536660_41161B01 
X-CRM114-Status: GOOD (  18.99  )
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

This commit contains contributions from Rick Wertenbroek
<rick.wertenbroek@gmail.com>.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/pci-epc-core.c | 68 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  6 +++
 2 files changed, 74 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 37758ca91d7f..0095b54bdf9e 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -530,6 +530,74 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
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
+ * controller local CPU address alignment constraints.
+ */
+void pci_epc_mem_unmap(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+		       struct pci_epc_map *map)
+{
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
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
