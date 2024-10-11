Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DFACFD37C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 12:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9iyfXiADMyZgJL/vcd4PHKbPLC3LKfVYiLbpWHzkb4=; b=EmrEzYYHnDLleA
	jBegAZlsstS/xKIN5dziOux2DqJVxygOrzYT7yFIWsSp80aUCn+5a2bPPqzSlEV4WhODTr3MgMWhi
	ItC7NvKeUTk9WTZGBBYwOfXr5SCBFv63hJMvD7P/NNX5eYpNhDyV9jjSlcxUftAKpoCZyQKLnUPKV
	MQuh6CLNzj3ePhQLldePqcFYdGZulpsP6cPPe0f7xKBHDgziZlBhLKlkNhLMsXs7PAU1pTWVicIAE
	iW/KaxlK11hilacfVmiZe1ibxRFTCcMLh/r4MHxcR1AMAL0mb4AelJ9AWmTySbShZa0OIjoYQxRL+
	+LMg+NF8yX1iSzGroVBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEhf-0000000GHu2-1GQB;
	Fri, 11 Oct 2024 12:25:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEXO-0000000GFui-1Tcz
	for linux-rockchip@bombadil.infradead.org;
	Fri, 11 Oct 2024 12:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bEtnqczralUDjsiC87aP0Xxv4imUa0uP20kb2RbZMA8=; b=S3LW4XmYsSHL2gjSZ/BqxMgaWX
	OPGY+AhpovE8Shi86AAC1tVYeI5fvuWpS8y0EM/wCxI4qVjx7XK/bYsSlSZIE1v2Vn199KHECvsqj
	Ej1ct7dSbUk+EPjs82IU7pb3U71iFWtmqHvBf7AHyTTxyJpiizHo12fohaEbwQOSUmoWatHZyoZiB
	vKYOTLwExed2MOCWOJ11A6FO/a1ZRdIdUtYm/G0KFQcaqEqZzHUuf2MMXJmtCnhxHt9EyjGy+3X2a
	/L7MJsHaDihYFeJUGBIvvJ8rxEGxGvceBgHxXR18bb1GT7JLHEExVHDk7Uia9Ay5AnKtxhhSVN3Li
	r23SrI1A==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEXL-00000005shT-0gqx
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 12:14:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0EB755C53A4;
	Fri, 11 Oct 2024 12:14:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17582C4CEC3;
	Fri, 11 Oct 2024 12:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648863;
	bh=+4Bc0xzZLXrwNb1/pM0RMrx2qd49EVBLF+NCGJoqYr0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Bd46q89CFRyb1dQbcXO056p9VS4DcMEVYrKlpMSsqmOFBLNtV3ARTmusCgnGkJ/na
	 Wgj7gvZXmHlSetN3ict4qebQZvLXst6wyPpaGCrSh/kPccSZyxO4rP5fkiIy0/qq/O
	 YclC59KDZkvcPcTlwqdp8O6zDJ57pYYc4xrqRGT+wXpaagi9lQ7H896fYeptnCkzRh
	 5gF7w5fRJnrrHxHxjBYMvfFE3yzdWxuQcuwxalbWFyuBoP/9ngF0kmdaPQMjy2TkaH
	 Tt5s/MWj2FmbOtn9xKGneTJcDFt1rXbbMYx02cbgAhPLP2wlGfE/+o5GLTVwzyiLdI
	 5R8z4XoEDbiFw==
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
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v4 05/12] PCI: rockchip-ep: Implement the pci_epc_ops::get_mem_map() operation
Date: Fri, 11 Oct 2024 21:14:01 +0900
Message-ID: <20241011121408.89890-6-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241011121408.89890-1-dlemoal@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_131427_616530_1C7BEB0D 
X-CRM114-Status: GOOD (  14.71  )
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

The rockchip PCIe endpoint controller handles PCIe transfers addresses
by masking the lower bits of the programmed PCI address and using the
same number of lower bits from the CPU address space used for the
mapping. For a PCI mapping of size bytes starting from pci_addr, the
number of bits masked is the number of address bits changing in the
address range [pci_addr..pci_addr + size - 1], up to 20 bits, that is,
up to 1MB mappings.

This means that when preparing a PCI address mapping, an endpoint
function driver must use an offset into the allocated controller
memory region that is equal to the mask of the starting PCI address
over rockchip_pcie_ep_ob_atu_num_bits() bits. This offset also
determines the maximum size of the mapping given the starting PCI
address and the fixed 1MB controller memory window size.

Implement the ->get_mem_map() endpoint controller operation to allow the
mapping alignment to be transparently handled by endpoint function
drivers through the function pci_epc_mem_map().

Co-developed-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 22 ++++++++++++++++++++++
 drivers/pci/controller/pcie-rockchip.h    |  5 +++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index edb84fb1ba39..c9c2bb72771f 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -235,6 +235,27 @@ static inline u32 rockchip_ob_region(phys_addr_t addr)
 	return (addr >> ilog2(SZ_1M)) & 0x1f;
 }
 
+static int rockchip_pcie_ep_get_mem_map(struct pci_epc *epc, u8 fn, u8 vfn,
+					struct pci_epc_map *map)
+{
+	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
+	int num_bits;
+
+	num_bits = rockchip_pcie_ep_ob_atu_num_bits(&ep->rockchip,
+						map->pci_addr, map->pci_size);
+
+	map->map_pci_addr = map->pci_addr & ~((1ULL << num_bits) - 1);
+	map->map_ofst = map->pci_addr - map->map_pci_addr;
+
+	if (map->map_ofst + map->pci_size > SZ_1M)
+		map->pci_size = SZ_1M - map->map_ofst;
+
+	map->map_size = ALIGN(map->map_ofst + map->pci_size,
+			      ROCKCHIP_PCIE_AT_SIZE_ALIGN);
+
+	return 0;
+}
+
 static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 				     phys_addr_t addr, u64 pci_addr,
 				     size_t size)
@@ -458,6 +479,7 @@ static const struct pci_epc_ops rockchip_pcie_epc_ops = {
 	.write_header	= rockchip_pcie_ep_write_header,
 	.set_bar	= rockchip_pcie_ep_set_bar,
 	.clear_bar	= rockchip_pcie_ep_clear_bar,
+	.get_mem_map	= rockchip_pcie_ep_get_mem_map,
 	.map_addr	= rockchip_pcie_ep_map_addr,
 	.unmap_addr	= rockchip_pcie_ep_unmap_addr,
 	.set_msi	= rockchip_pcie_ep_set_msi,
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 02368ce9bd54..30398156095f 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -241,6 +241,11 @@
 #define   ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK		GENMASK(15, 8)
 #define ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR				0x1
 #define ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR		0x3
+
+#define ROCKCHIP_PCIE_AT_MIN_NUM_BITS	8
+#define ROCKCHIP_PCIE_AT_MAX_NUM_BITS	20
+#define ROCKCHIP_PCIE_AT_SIZE_ALIGN	(1UL << ROCKCHIP_PCIE_AT_MIN_NUM_BITS)
+
 #define ROCKCHIP_PCIE_EP_FUNC_BASE(fn) \
 	(PCIE_EP_PF_CONFIG_REGS_BASE + (((fn) << 12) & GENMASK(19, 12)))
 #define ROCKCHIP_PCIE_EP_VIRT_FUNC_BASE(fn) \
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
