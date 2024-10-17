Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55C8CD2F7DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 01:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLiTt3/3xptO6pqk4kWVrLS/ziM1yFGhIBNLL0iGR0I=; b=boSvCbKV+d/gYh
	YaBI6i3DgYslIlcu7XQiKLU5xcfnxDPyXVrWkremsWx+Yhzl9el6M2RspTxKJ2pMsyU/ReIHjvYD4
	sZBb6XAiQR7yI4kNNEaakar6ve3Hihc0tHe1ssQXKvc45zRLNDU1IH3XK/ycy5ac5rkaEO7j7qDtv
	jzfgP7xu0cOqs9R53kaYHaAB89boHZaO0nlghBTu4vs0vv8ruLUDNUzBedSuM05dowlpaAnRNjS09
	dm09MmnEDGq1s8Z1cxJj/iiGgisK5aS6CgeMc/tClECreEET4A2LQc02+UnunUt0sfhoUf+9f23mJ
	1qpLrnXPB3Ez8IdPLHfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Fn9-0000000DUoM-1mUi;
	Thu, 17 Oct 2024 01:59:07 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Fn5-0000000DUkX-1Bbq
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:59:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 89B74A40DE4;
	Thu, 17 Oct 2024 01:58:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8749DC4CED0;
	Thu, 17 Oct 2024 01:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130342;
	bh=/G8QAI8kvEcdWwWRcNBS76LHUxKFVpIiDUO29Vg61NY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VLXBScuP3gCF2DE7VqWery7dd0EIqjLdo2P2DuUDOeyGThrIYu2hM7NJcv3o1dG/6
	 EKAXd82OtZLsIK6SyWvPRc9a7GbaNGYiQu7jT+EsvQ5MnzLpU3i5tvKUJh7lHwpwhH
	 PHs0lOIIpeZsz/zYTDqhiIxvk9Iw13k/ONpT7yoCK6iRIRhFHXjpeeFojvc2hDAmL9
	 p2WcOB849HtG/t3kVeM93HnVT/2pyy+Y9Qt9p3ZpVgS9kLFpeLGXLYkk2QWcy0CAAj
	 uTG/lhcq3kAwmzNG4rmBu+PuFtabb8fFz9X06O0BuXTeo1HqVMPksEhQJPLW+vNQUC
	 G5d7fU8A+3bzA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v5 05/14] PCI: rockchip-ep: Implement the pci_epc_ops::align_addr() operation
Date: Thu, 17 Oct 2024 10:58:40 +0900
Message-ID: <20241017015849.190271-6-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_185903_522324_2EEA10F5 
X-CRM114-Status: GOOD (  13.89  )
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

Implement the ->align_addr() endpoint controller operation to allow the
mapping alignment to be transparently handled by endpoint function
drivers through the function pci_epc_mem_map().

Co-developed-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 23 +++++++++++++++++++++++
 drivers/pci/controller/pcie-rockchip.h    |  5 +++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index edb84fb1ba39..f6959f9b94b7 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -235,6 +235,28 @@ static inline u32 rockchip_ob_region(phys_addr_t addr)
 	return (addr >> ilog2(SZ_1M)) & 0x1f;
 }
 
+static u64 rockchip_pcie_ep_align_addr(struct pci_epc *epc, u64 pci_addr,
+				       size_t *pci_size, size_t *offset)
+{
+	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
+	size_t size = *pci_size;
+	u64 ofst, mask;
+	int num_bits;
+
+	num_bits = rockchip_pcie_ep_ob_atu_num_bits(&ep->rockchip,
+						    pci_addr, size);
+	mask = (1ULL << num_bits) - 1;
+
+	ofst = pci_addr & mask;
+	if (size + ofst > SZ_1M)
+		size = SZ_1M - ofst;
+
+	*pci_size = ALIGN(ofst + size, ROCKCHIP_PCIE_AT_SIZE_ALIGN);
+	*offset = ofst;
+
+	return pci_addr & ~mask;
+}
+
 static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 				     phys_addr_t addr, u64 pci_addr,
 				     size_t size)
@@ -458,6 +480,7 @@ static const struct pci_epc_ops rockchip_pcie_epc_ops = {
 	.write_header	= rockchip_pcie_ep_write_header,
 	.set_bar	= rockchip_pcie_ep_set_bar,
 	.clear_bar	= rockchip_pcie_ep_clear_bar,
+	.align_addr	= rockchip_pcie_ep_align_addr,
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
