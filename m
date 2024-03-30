Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02481C47DD9
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zd1sNAi79RYC8Mkwq64ceI5o/F8fJdpZtsTwvOk5Oqw=; b=GY24c6J5940DN8
	VRDTvSyNItGZB9ZoQS6oklHIz+JXLHm/pl7ORYpp1xP4ZxdxEg9KNeUBUOJoMQAK3qTqM8sDmVKMQ
	clCMIaOXzQULQatAQwhfUhcFlWAU9QObAMXmN6o0eU6EjKut/L82tqexwEJh7DRS7AxIk83iOothz
	HW+J70XWQNDHSEZ64PkrCTtu+LYdWlZeotZ8A7fndcvBz96Yzi7H0yY5EHytp15fAe6sSWzVpAnZC
	eg9cgbAu4/l5z4+f3pg7JmTb+GQRQDhjtWcwP0MxhN77uH4OK4wjpxZ80ojKFYEQoVIJ9X9DHoV5r
	L0Db9NNZLUpZ3mC+SmbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCE-00000002jpW-0dA1;
	Sat, 30 Mar 2024 04:19:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQBv-00000002jdO-1pv6;
	Sat, 30 Mar 2024 04:19:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B570560AB2;
	Sat, 30 Mar 2024 04:19:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD449C43399;
	Sat, 30 Mar 2024 04:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772378;
	bh=SbRxx7xRTtT3nznBXshxL4iqyxq35PQ5qfUvq6y785Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NgbRatdaGfK+oHZh7Yh/t8NRyGHi/ZDVZ7mq/bd2Pe9cfOKURaDGyryN2uU7TwgSn
	 DkU2OMyWJiRAajDKQP/VjsqprfBn39ixtSd4w7jEIa9HSI+yqIqgbj3qFF/Yu59V+U
	 j7dbXjgmT+DnoMNkyq8hCNavotW0vgtsysbQtpl8gHdVqeljP8Va259oHvQFRY7qUG
	 050bvmv8py4DX5EIUuTogl7czRrnQXhah5sEZbIlpMbH/4RbpcVhX+QmvuNEIGXBXH
	 doxGx0dMe2wJVkyCGxtNI4lwAIR1K1ZKgXA9scQQzejaXhOlHs/qmUcPD2cnB9X0BQ
	 pNRwaui1ljOrA==
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
Subject: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
Date: Sat, 30 Mar 2024 13:19:12 +0900
Message-ID: <20240330041928.1555578-3-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_211939_887922_B2467CEF 
X-CRM114-Status: GOOD (  28.25  )
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

Some endpoint controllers have requirements on the alignment of the
controller physical memory address that must be used to map a RC PCI
address region. For instance, the rockchip endpoint controller uses
at most the lower 20 bits of a physical memory address region as the
lower bits of an RC PCI address. For mapping a PCI address region of
size bytes starting from pci_addr, the exact number of address bits
used is the number of address bits changing in the address range
[pci_addr..pci_addr + size - 1].

For this example, this creates the following constraints:
1) The offset into the controller physical memory allocated for a
   mapping depends on the mapping size *and* the starting PCI address
   for the mapping.
2) A mapping size cannot exceed the controller windows size (1MB) minus
   the offset needed into the allocated physical memory, which can end
   up being a smaller size than the desired mapping size.

Handling these constraints independently of the controller being used in
a PCI EP function driver is not possible with the current EPC API as
it only provides the ->align field in struct pci_epc_features.
Furthermore, this alignment is static and does not depend on a mapping
pci address and size.

Solve this by introducing the function pci_epc_map_align() and the
endpoint controller operation ->map_align to allow endpoint function
drivers to obtain the size and the offset into a controller address
region that must be used to map an RC PCI address region. The size
of the physical address region provided by pci_epc_map_align() can then
be used as the size argument for the function pci_epc_mem_alloc_addr().
The offset into the allocated controller memory can be used to
correctly handle data transfers. Of note is that pci_epc_map_align() may
indicate upon return a mapping size that is smaller (but not 0) than the
requested PCI address region size. For such case, an endpoint function
driver must handle data transfers in fragments.

The controller operation ->map_align is optional: controllers that do
not have any address alignment constraints for mapping a RC PCI address
region do not need to implement this operation. For such controllers,
pci_epc_map_align() always returns the mapping size as equal
to the requested size and an offset equal to 0.

The structure pci_epc_map is introduced to represent a mapping start PCI
address, size and the size and offset into the controller memory needed
for mapping the PCI address region.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/pci-epc-core.c | 66 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             | 33 +++++++++++++++
 2 files changed, 99 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 754afd115bbd..37758ca91d7f 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -433,6 +433,72 @@ void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 }
 EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
 
+/**
+ * pci_epc_map_align() - Get the offset into and the size of a controller memory
+ *			 address region needed to map a RC PCI address region
+ * @epc: the EPC device on which address is allocated
+ * @func_no: the physical endpoint function number in the EPC device
+ * @vfunc_no: the virtual endpoint function number in the physical function
+ * @pci_addr: PCI address to which the physical address should be mapped
+ * @size: the size of the mapping starting from @pci_addr
+ * @map: populate here the actual size and offset into the controller memory
+ *       that must be allocated for the mapping
+ *
+ * Invoke the controller map_align operation to obtain the size and the offset
+ * into a controller address region that must be allocated to map @size
+ * bytes of the RC PCI address space starting from @pci_addr.
+ *
+ * The size of the mapping that can be handled by the controller is indicated
+ * using the pci_size field of @map. This size may be smaller than the requested
+ * @size. In such case, the function driver must handle the mapping using
+ * several fragments. The offset into the controller memory for the effective
+ * mapping of the @pci_addr..@pci_addr+@map->pci_size address range is indicated
+ * using the map_ofst field of @map.
+ */
+int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+		      u64 pci_addr, size_t size, struct pci_epc_map *map)
+{
+	const struct pci_epc_features *features;
+	size_t mask;
+	int ret;
+
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
+		return -EINVAL;
+
+	if (!size || !map)
+		return -EINVAL;
+
+	memset(map, 0, sizeof(*map));
+	map->pci_addr = pci_addr;
+	map->pci_size = size;
+
+	if (epc->ops->map_align) {
+		mutex_lock(&epc->lock);
+		ret = epc->ops->map_align(epc, func_no, vfunc_no, map);
+		mutex_unlock(&epc->lock);
+		return ret;
+	}
+
+	/*
+	 * Assume a fixed alignment constraint as specified by the controller
+	 * features.
+	 */
+	features = pci_epc_get_features(epc, func_no, vfunc_no);
+	if (!features || !features->align) {
+		map->map_pci_addr = pci_addr;
+		map->map_size = size;
+		map->map_ofst = 0;
+	}
+
+	mask = features->align - 1;
+	map->map_pci_addr = map->pci_addr & ~mask;
+	map->map_ofst = map->pci_addr & mask;
+	map->map_size = ALIGN(map->map_ofst + map->pci_size, features->align);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pci_epc_map_align);
+
 /**
  * pci_epc_map_addr() - map CPU address to PCI address
  * @epc: the EPC device on which address is allocated
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cc2f70d061c8..8cfb4aaf2628 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -32,11 +32,40 @@ pci_epc_interface_string(enum pci_epc_interface_type type)
 	}
 }
 
+/**
+ * struct pci_epc_map - information about EPC memory for mapping a RC PCI
+ *                      address range
+ * @pci_addr: start address of the RC PCI address range to map
+ * @pci_size: size of the RC PCI address range to map
+ * @map_pci_addr: RC PCI address used as the first address mapped
+ * @map_size: size of the controller memory needed for the mapping
+ * @map_ofst: offset into the controller memory needed for the mapping
+ * @phys_base: base physical address of the allocated EPC memory
+ * @phys_addr: physical address at which @pci_addr is mapped
+ * @virt_base: base virtual address of the allocated EPC memory
+ * @virt_addr: virtual address at which @pci_addr is mapped
+ */
+struct pci_epc_map {
+	phys_addr_t	pci_addr;
+	size_t		pci_size;
+
+	phys_addr_t	map_pci_addr;
+	size_t		map_size;
+	phys_addr_t	map_ofst;
+
+	phys_addr_t	phys_base;
+	phys_addr_t	phys_addr;
+	void __iomem	*virt_base;
+	void __iomem	*virt_addr;
+};
+
 /**
  * struct pci_epc_ops - set of function pointers for performing EPC operations
  * @write_header: ops to populate configuration space header
  * @set_bar: ops to configure the BAR
  * @clear_bar: ops to reset the BAR
+ * @map_align: operation to get the size and offset into a controller memory
+ *             window needed to map an RC PCI address region
  * @map_addr: ops to map CPU address to PCI address
  * @unmap_addr: ops to unmap CPU address and PCI address
  * @set_msi: ops to set the requested number of MSI interrupts in the MSI
@@ -61,6 +90,8 @@ struct pci_epc_ops {
 			   struct pci_epf_bar *epf_bar);
 	void	(*clear_bar)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 			     struct pci_epf_bar *epf_bar);
+	int	(*map_align)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			    struct pci_epc_map *map);
 	int	(*map_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 			    phys_addr_t addr, u64 pci_addr, size_t size);
 	void	(*unmap_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
@@ -234,6 +265,8 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		    struct pci_epf_bar *epf_bar);
 void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		       struct pci_epf_bar *epf_bar);
+int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+		      u64 pci_addr, size_t size, struct pci_epc_map *map);
 int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		     phys_addr_t phys_addr,
 		     u64 pci_addr, size_t size);
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
