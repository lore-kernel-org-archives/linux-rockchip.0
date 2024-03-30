Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D3ABC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4pkWNxHdjtNoHs2OOx8h2c57FFo5WxN+EIV4hSklfs=; b=UCiCU5l1BKIDVJ
	ONQj/eEyOOXz5rd0qtJbh/y3Z8dPsAEKPiEij9wR1Az+OehNogg6tCEXPsawKA/bpdyj/uaqMCAyL
	ZkMPlnSB8WTSkVQVqJCS/NH/PBKY4QBVnU31dM3LTYyJ3qsaS/OXLxwLwhWKpQSdM9YILqiWAor6W
	7NgsBg5WQu6+CUgtViMgZ/7dU6iwc1bgIGblVfY7zpHK4geaUzRUbyCALyC3sM4DgIlk5wyYmCwVe
	21WbY7UJjWdAtV8ViM8Px8++ThitjifnCLW7xEOcKORipuuGeiYQiUMFcHLKws2vw4Mm4jzEyWrHm
	jvgTEKdemNh/rts70hjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQDm-00000002kg0-0fs4;
	Sat, 30 Mar 2024 04:21:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCU-00000002k0I-04NJ;
	Sat, 30 Mar 2024 04:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/D7hfhdvvtaDCuqvZ3U8RlwDkbw921q/Zaxyz6An2Po=; b=mX2dNE3xyZ9D95qykZshmJMRQ1
	0LCQ5UnPopfWQiQUHQyneMlxdDWKaS2CQxqsCbeVbsuq140D89iUy7CSE2AnEJhD8LcvCVoeytF4H
	pNeuP6xvegpYSoUINqORTd8v6orHMry/X8lJHblqmnc4leTAifPQsfizZJKlYVLGqqwEGpDuFN0ef
	JhEbQoZbtYfd6c/Fzc63ekG47TRpHrtDKIVMqJMHHoXa8Dc3mE87m4IYlspJ45L/+0rO1OdnINu3d
	GjDoI67kTYvehpRMM0GRv5xr3M3A0FY8d1Ykd8Kq0JEddQVJnM2Yb8kOoWxxmsZtZPduzTBkt5pmo
	anyVa38Q==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCQ-00000001uQ8-1lsC;
	Sat, 30 Mar 2024 04:20:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CED13CE3197;
	Sat, 30 Mar 2024 04:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 653D8C433F1;
	Sat, 30 Mar 2024 04:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772406;
	bh=vF92UsHdcc7u7pscloXUxLattNRVIg68v7JoBPX9gsQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NOkho2Fix6/RW/16qPagV5H8vEfApgiolbdcRIJkn7Sfwqa8cv/Au4bNmvkyvVbYl
	 uXbeCTqrrGQo2frcEWMKdz/bptusrhK1/+VntvNZHHbqC88/75SkmcHOPsd0gWAELH
	 0VexWnsWk1fxCLKFbf1Pnvt3LuXxvKLixbXmmTHmd6WOjnPONQbqaOQDcdTd4GuyqM
	 acnprHhZmD6Gbjy7D3MDERwBVtd7Q2B+yKAvayp992CPWHr9TKmrfWwMLTxSc6p2+E
	 yxOxaNA67Zwkg8XxPFq0ZlD+un/rYL6yOBaEBHLm2MW2Rv/MWZbC1RDbJ07wTNJRFp
	 Iy+uM7f8OKfIw==
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
Subject: [PATCH v2 11/18] PCI: rockchip-ep: Implement the map_align endpoint controller operation
Date: Sat, 30 Mar 2024 13:19:21 +0900
Message-ID: <20240330041928.1555578-12-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_042011_077906_2A5E6483 
X-CRM114-Status: GOOD (  15.58  )
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

Implement the ->map_align() endpoint controller operation to allow the
mapping alignment to be transparently handled by endpoint function
drivers through the function pci_epc_map_align().

This commit contains contributions from Rick Wertenbroek
<rick.wertenbroek@gmail.com>.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 22 ++++++++++++++++++++++
 drivers/pci/controller/pcie-rockchip.h    |  5 +++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 36692e34ca31..10fff395a13f 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -237,6 +237,27 @@ static inline u32 rockchip_ob_region(phys_addr_t addr)
 	return (addr >> ilog2(SZ_1M)) & 0x1f;
 }
 
+static int rockchip_pcie_ep_map_align(struct pci_epc *epc, u8 fn, u8 vfn,
+				      struct pci_epc_map *map)
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
@@ -460,6 +481,7 @@ static const struct pci_epc_ops rockchip_pcie_epc_ops = {
 	.write_header	= rockchip_pcie_ep_write_header,
 	.set_bar	= rockchip_pcie_ep_set_bar,
 	.clear_bar	= rockchip_pcie_ep_clear_bar,
+	.map_align	= rockchip_pcie_ep_map_align,
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
