Return-Path: <SRS0=ncim=NC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A68FC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Aug 2021 06:50:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA4F66056C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Aug 2021 06:50:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DA4F66056C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koS3C/MOWBqK9yVNIwkYf25SY/fuay68/rrxzyRq/kQ=; b=e/zvJPYBBs8EHq
	Ly4ONi9kUYCHQ7M9+aynQ65DRIZOUyPioUz7+PgH44bEl+WSfiMDmLbufUIB4ZVE6iLfSNB7WKdXo
	bhQJftem/Itm+hIIcnh4uuUwIrGyIcACACJXGnGa0574x702ETlco8OE4fF+Yw+lBmKRwL+hfK5AR
	WAqyJyrNeVu9rrMHPvppqzrRQL0XNKMNo30uGq52kwg6bQpblfD9HsmJIlj+0Cy2QwZ/M1wTdz1kd
	bmPYNDH/MReyJ171HVhwCsPqgH8YleU2jFKiKvVk3R3cEBgIIIPh24xUYLzbI4IfRuA+LqC+yJ/O7
	fxtv7md8qivVjxnwsrCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDi4e-005n7J-JO; Wed, 11 Aug 2021 06:50:48 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDi1u-005leg-5p; Wed, 11 Aug 2021 06:48:01 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17B6lnLq026553;
 Wed, 11 Aug 2021 01:47:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1628664470;
 bh=yJXHkszJihnTqj2UqwLfOGN+87+d9hkpDxXXD8FDTMQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=viy23ANkd2p9p0cME3x7bgf1Qsje/GYbkh1EZrFS1DbxsAFXbF7wJt5MLH/FqFPuu
 L92iRfs7cYyzYyoOaDPjOeLYW0AMHxIzuuLBWuNCIH7/SvzoK5bwJ2GnUQAlI5ZIdB
 oxjbghGrRAbYw8d5+6fl8KwAomYfo4zXRnOdyfe4=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17B6lnaw052659
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 11 Aug 2021 01:47:49 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 11
 Aug 2021 01:47:49 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 11 Aug 2021 01:47:49 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17B6kvu7013269;
 Wed, 11 Aug 2021 01:47:42 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Tom Joseph
 <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
CC: Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, <kishon@ti.com>
Subject: [PATCH v8 6/8] PCI: cadence: Add support to configure virtual
 functions
Date: Wed, 11 Aug 2021 12:16:54 +0530
Message-ID: <20210811064656.15399-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210811064656.15399-1-kishon@ti.com>
References: <20210811064656.15399-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210810_234758_348486_9BDF0DF2 
X-CRM114-Status: GOOD (  25.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Now that support for SR-IOV is added in PCIe endpoint core, add support
to configure virtual functions in the Cadence PCIe EP driver.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../pci/controller/cadence/pcie-cadence-ep.c  | 136 +++++++++++++++---
 drivers/pci/controller/cadence/pcie-cadence.h |   9 ++
 2 files changed, 125 insertions(+), 20 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index f337f0842400..443dd06dfcfc 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -16,11 +16,37 @@
 #define CDNS_PCIE_EP_IRQ_PCI_ADDR_NONE		0x1
 #define CDNS_PCIE_EP_IRQ_PCI_ADDR_LEGACY	0x3
 
+static u8 cdns_pcie_get_fn_from_vfn(struct cdns_pcie *pcie, u8 fn, u8 vfn)
+{
+	u32 cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
+	u32 first_vf_offset, stride;
+
+	if (vfn == 0)
+		return fn;
+
+	first_vf_offset = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_SRIOV_VF_OFFSET);
+	stride = cdns_pcie_ep_fn_readw(pcie, fn, cap +  PCI_SRIOV_VF_STRIDE);
+	fn = fn + first_vf_offset + ((vfn - 1) * stride);
+
+	return fn;
+}
+
 static int cdns_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
 				     struct pci_epf_header *hdr)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	u32 cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
 	struct cdns_pcie *pcie = &ep->pcie;
+	u32 reg;
+
+	if (vfn > 1) {
+		dev_err(&epc->dev, "Only Virtual Function #1 has deviceID\n");
+		return -EINVAL;
+	} else if (vfn == 1) {
+		reg = cap + PCI_SRIOV_VF_DID;
+		cdns_pcie_ep_fn_writew(pcie, fn, reg, hdr->deviceid);
+		return 0;
+	}
 
 	cdns_pcie_ep_fn_writew(pcie, fn, PCI_DEVICE_ID, hdr->deviceid);
 	cdns_pcie_ep_fn_writeb(pcie, fn, PCI_REVISION_ID, hdr->revid);
@@ -92,21 +118,29 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
 
 	addr0 = lower_32_bits(bar_phys);
 	addr1 = upper_32_bits(bar_phys);
-	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar),
-			 addr0);
-	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar),
-			 addr1);
 
 	reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn);
+	if (vfn == 1)
+		reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG(bar, fn);
 	b = (bar < BAR_4) ? bar : bar - BAR_4;
 
-	cfg = cdns_pcie_readl(pcie, reg);
-	cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
-		 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
-	cfg |= (CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE(b, aperture) |
-		CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl));
-	cdns_pcie_writel(pcie, reg, cfg);
+	if (vfn == 0 || vfn == 1) {
+		cfg = cdns_pcie_readl(pcie, reg);
+		cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
+			 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
+		cfg |= (CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE(b, aperture) |
+			CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl));
+		cdns_pcie_writel(pcie, reg, cfg);
+	}
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
+	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar),
+			 addr0);
+	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar),
+			 addr1);
+
+	if (vfn > 0)
+		epf = &epf->epf[vfn - 1];
 	epf->epf_bar[bar] = epf_bar;
 
 	return 0;
@@ -122,18 +156,25 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn, u8 vfn,
 	u32 reg, cfg, b, ctrl;
 
 	reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn);
+	if (vfn == 1)
+		reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG(bar, fn);
 	b = (bar < BAR_4) ? bar : bar - BAR_4;
 
-	ctrl = CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED;
-	cfg = cdns_pcie_readl(pcie, reg);
-	cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
-		 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
-	cfg |= CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl);
-	cdns_pcie_writel(pcie, reg, cfg);
+	if (vfn == 0 || vfn == 1) {
+		ctrl = CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED;
+		cfg = cdns_pcie_readl(pcie, reg);
+		cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
+			 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
+		cfg |= CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl);
+		cdns_pcie_writel(pcie, reg, cfg);
+	}
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar), 0);
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar), 0);
 
+	if (vfn > 0)
+		epf = &epf->epf[vfn - 1];
 	epf->epf_bar[bar] = NULL;
 }
 
@@ -151,6 +192,7 @@ static int cdns_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 		return -EINVAL;
 	}
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
 	cdns_pcie_set_outbound_region(pcie, 0, fn, r, false, addr, pci_addr, size);
 
 	set_bit(r, &ep->ob_region_map);
@@ -186,6 +228,8 @@ static int cdns_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn, u8 mmc)
 	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
 	u16 flags;
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
+
 	/*
 	 * Set the Multiple Message Capable bitfield into the Message Control
 	 * register.
@@ -206,6 +250,8 @@ static int cdns_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
 	u16 flags, mme;
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
+
 	/* Validate that the MSI feature is actually enabled. */
 	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
 	if (!(flags & PCI_MSI_FLAGS_ENABLE))
@@ -227,6 +273,8 @@ static int cdns_pcie_ep_get_msix(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
 	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
 	u32 val, reg;
 
+	func_no = cdns_pcie_get_fn_from_vfn(pcie, func_no, vfunc_no);
+
 	reg = cap + PCI_MSIX_FLAGS;
 	val = cdns_pcie_ep_fn_readw(pcie, func_no, reg);
 	if (!(val & PCI_MSIX_FLAGS_ENABLE))
@@ -246,6 +294,8 @@ static int cdns_pcie_ep_set_msix(struct pci_epc *epc, u8 fn, u8 vfn,
 	u32 cap = CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET;
 	u32 val, reg;
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
+
 	reg = cap + PCI_MSIX_FLAGS;
 	val = cdns_pcie_ep_fn_readw(pcie, fn, reg);
 	val &= ~PCI_MSIX_FLAGS_QSIZE;
@@ -265,8 +315,8 @@ static int cdns_pcie_ep_set_msix(struct pci_epc *epc, u8 fn, u8 vfn,
 	return 0;
 }
 
-static void cdns_pcie_ep_assert_intx(struct cdns_pcie_ep *ep, u8 fn,
-				     u8 intx, bool is_asserted)
+static void cdns_pcie_ep_assert_intx(struct cdns_pcie_ep *ep, u8 fn, u8 intx,
+				     bool is_asserted)
 {
 	struct cdns_pcie *pcie = &ep->pcie;
 	unsigned long flags;
@@ -335,6 +385,8 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 	u8 msi_count;
 	u64 pci_addr, pci_addr_mask = 0xff;
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
+
 	/* Check whether the MSI feature has been enabled by the PCI host. */
 	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
 	if (!(flags & PCI_MSI_FLAGS_ENABLE))
@@ -388,6 +440,8 @@ static int cdns_pcie_ep_map_msi_irq(struct pci_epc *epc, u8 fn, u8 vfn,
 	int ret;
 	int i;
 
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
+
 	/* Check whether the MSI feature has been enabled by the PCI host. */
 	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
 	if (!(flags & PCI_MSI_FLAGS_ENABLE))
@@ -438,6 +492,12 @@ static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 	u16 flags;
 	u8 bir;
 
+	epf = &ep->epf[fn];
+	if (vfn > 0)
+		epf = &epf->epf[vfn - 1];
+
+	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
+
 	/* Check whether the MSI-X feature has been enabled by the PCI host. */
 	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSIX_FLAGS);
 	if (!(flags & PCI_MSIX_FLAGS_ENABLE))
@@ -448,7 +508,6 @@ static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 	bir = tbl_offset & PCI_MSIX_TABLE_BIR;
 	tbl_offset &= PCI_MSIX_TABLE_OFFSET;
 
-	epf = &ep->epf[fn];
 	msix_tbl = epf->epf_bar[bir]->addr + tbl_offset;
 	msg_addr = msix_tbl[(interrupt_num - 1)].msg_addr;
 	msg_data = msix_tbl[(interrupt_num - 1)].msg_data;
@@ -475,9 +534,15 @@ static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn, u8 vfn,
 				  u16 interrupt_num)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	struct cdns_pcie *pcie = &ep->pcie;
+	struct device *dev = pcie->dev;
 
 	switch (type) {
 	case PCI_EPC_IRQ_LEGACY:
+		if (vfn > 0) {
+			dev_err(dev, "Cannot raise legacy interrupts for VF\n");
+			return -EINVAL;
+		}
 		return cdns_pcie_ep_send_legacy_irq(ep, fn, vfn, 0);
 
 	case PCI_EPC_IRQ_MSI:
@@ -515,6 +580,13 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 	return 0;
 }
 
+static const struct pci_epc_features cdns_pcie_epc_vf_features = {
+	.linkup_notifier = false,
+	.msi_capable = true,
+	.msix_capable = true,
+	.align = 65536,
+};
+
 static const struct pci_epc_features cdns_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
@@ -525,7 +597,10 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
 static const struct pci_epc_features*
 cdns_pcie_ep_get_features(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
 {
-	return &cdns_pcie_epc_features;
+	if (!vfunc_no)
+		return &cdns_pcie_epc_features;
+
+	return &cdns_pcie_epc_vf_features;
 }
 
 static const struct pci_epc_ops cdns_pcie_epc_ops = {
@@ -551,9 +626,11 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *np = dev->of_node;
 	struct cdns_pcie *pcie = &ep->pcie;
+	struct cdns_pcie_epf *epf;
 	struct resource *res;
 	struct pci_epc *epc;
 	int ret;
+	int i;
 
 	pcie->is_rc = false;
 
@@ -598,6 +675,25 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 	if (!ep->epf)
 		return -ENOMEM;
 
+	epc->max_vfs = devm_kcalloc(dev, epc->max_functions,
+				    sizeof(*epc->max_vfs), GFP_KERNEL);
+	if (!epc->max_vfs)
+		return -ENOMEM;
+
+	ret = of_property_read_u8_array(np, "max-virtual-functions",
+					epc->max_vfs, epc->max_functions);
+	if (ret == 0) {
+		for (i = 0; i < epc->max_functions; i++) {
+			epf = &ep->epf[i];
+			if (epc->max_vfs[i] == 0)
+				continue;
+			epf->epf = devm_kcalloc(dev, epc->max_vfs[i],
+						sizeof(*ep->epf), GFP_KERNEL);
+			if (!epf->epf)
+				return -ENOMEM;
+		}
+	}
+
 	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
 			       resource_size(pcie->mem_res), PAGE_SIZE);
 	if (ret < 0) {
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index d5b1fcf2c39d..b72de578b996 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -52,6 +52,12 @@
 	(CDNS_PCIE_LM_BASE + 0x0240 + (fn) * 0x0008)
 #define CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn) \
 	(CDNS_PCIE_LM_BASE + 0x0244 + (fn) * 0x0008)
+#define CDNS_PCIE_LM_EP_VFUNC_BAR_CFG(bar, fn) \
+	(((bar) < 4) ? CDNS_PCIE_LM_EP_VFUNC_BAR_CFG0(fn) : CDNS_PCIE_LM_EP_VFUNC_BAR_CFG1(fn))
+#define CDNS_PCIE_LM_EP_VFUNC_BAR_CFG0(fn) \
+	(CDNS_PCIE_LM_BASE + 0x0280 + (fn) * 0x0008)
+#define CDNS_PCIE_LM_EP_VFUNC_BAR_CFG1(fn) \
+	(CDNS_PCIE_LM_BASE + 0x0284 + (fn) * 0x0008)
 #define  CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) \
 	(GENMASK(4, 0) << ((b) * 8))
 #define  CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE(b, a) \
@@ -116,6 +122,7 @@
 
 #define CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET	0x90
 #define CDNS_PCIE_EP_FUNC_MSIX_CAP_OFFSET	0xb0
+#define CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET	0x200
 
 /*
  * Root Port Registers (PCI configuration space for the root port function)
@@ -310,9 +317,11 @@ struct cdns_pcie_rc {
 
 /**
  * struct cdns_pcie_epf - Structure to hold info about endpoint function
+ * @epf: Info about virtual functions attached to the physical function
  * @epf_bar: reference to the pci_epf_bar for the six Base Address Registers
  */
 struct cdns_pcie_epf {
+	struct cdns_pcie_epf *epf;
 	struct pci_epf_bar *epf_bar[PCI_STD_NUM_BARS];
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
