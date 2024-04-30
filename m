Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6926BC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVpJAH+06KDbHnc/aW3ZuQpmVdyG53fzKUlX+a57yO0=; b=M1KhswReJEYGp/
	BIgbfoCjQxhy3Seyjl9beiDKNKwPurctqFwy0I87nMNjfanjCdMrNId/H+Cqnwjejs4w0W+PFZM7i
	9P3/wYGxb6mxNDwsUoNpUJMRA18lYpkdPD3+cm2Lz62AGo3RPMGKepdmuMIJZ6FCCEDrVzJXYSdb3
	uQGTG+azTc4Dl631eE6WWYFtoPsmGo2qm1QwVkqslitU/YvhsyEjPc8qbuH4FaYou+gQqvGU2sZPF
	bMT+45/zSjp0ndWjKd8xsr2FpbENx13Z4bFzJf348wcbw0Jl9Q5qAdAjcvmbO61QyWdH60uJ6KWgv
	apR1x9g+EACx6VBy9zAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mC9-00000006H2W-0Ghr;
	Tue, 30 Apr 2024 12:02:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mC4-00000006Gz7-2Wa6
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0C009614FD;
	Tue, 30 Apr 2024 12:02:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7561C4AF19;
	Tue, 30 Apr 2024 12:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478563;
	bh=KKezyn/XrsrdUGmwMl+9QvJJ8bcKDxP+lCmQctoad+k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=c6UW/X842kayfwT26w7j1ASvSMSvl5toK+pCl52y0CT4UN/m/ICWXIiFh6qfoYQM3
	 oYwvr6RMm9vow0q3llSBRXxxzUT3jvSEPcgOnODO49eHYIHD7YFJOZRbckCKGCNFSl
	 9dkuWtIA4cFkCvIG5u305Vq5OaF1u2QEE5Xo6y1E/Xh2IKYH7NFQ5iBbA4ADFDhANc
	 3c7j4Hd7HEXOTOZc92DcMvI9micitSHpshDrgDz5rV9Mb/iM2i8a+VEA3+JVedL0AK
	 +17aG6DsmEk+gfE3eILVIElMznqRcYvAPip11oRtAnxFyDDXkwkRQPkJ4yAhY5x22Q
	 SKIVGv2rUItqA==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:08 +0200
Subject: [PATCH v2 11/14] PCI: dw-rockchip: Add endpoint mode support
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-11-a0f5ee2a77b6@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9538; i=cassel@kernel.org;
 h=from:subject:message-id; bh=KKezyn/XrsrdUGmwMl+9QvJJ8bcKDxP+lCmQctoad+k=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m5IOmLAGxS6p0w6c1pdNqfq8sp9LZKNuXvPJKQWV
 2x+qdvUUcrCIMbFICumyOL7w2V/cbf7lOOKd2xg5rAygQxh4OIUgIkUnmNkuKKgU83pXsaz7NlP
 NjfD31eufstXSBfiMJJx8mtyeGH0gJHhJUuKVtNERmbVLs6/z5qCVspOZzn1sdPV+ZRuRUJBtxo
 jAA==
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050244_856391_1B1E467A 
X-CRM114-Status: GOOD (  21.90  )
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

The PCIe controller in rk3568 and rk3588 can operate in endpoint mode.
This endpoint mode support heavily leverages the existing code in
pcie-designware-ep.c.

Add support for endpoint mode to the existing pcie-dw-rockchip glue
driver.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/Kconfig            |  17 ++-
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 177 ++++++++++++++++++++++++++
 2 files changed, 191 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index 8afacc90c63b..9fae0d977271 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -311,16 +311,27 @@ config PCIE_RCAR_GEN4_EP
 	  SoCs. To compile this driver as a module, choose M here: the module
 	  will be called pcie-rcar-gen4.ko. This uses the DesignWare core.
 
+config PCIE_ROCKCHIP_DW
+	bool
+
 config PCIE_ROCKCHIP_DW_HOST
-	bool "Rockchip DesignWare PCIe controller"
-	select PCIE_DW
+	bool "Rockchip DesignWare PCIe controller (host mode)"
 	select PCIE_DW_HOST
 	depends on PCI_MSI
 	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on OF
 	help
 	  Enables support for the DesignWare PCIe controller in the
-	  Rockchip SoC except RK3399.
+	  Rockchip SoC (except RK3399) to work in host mode.
+
+config PCIE_ROCKCHIP_DW_EP
+	bool "Rockchip DesignWare PCIe controller (endpoint mode)"
+	select PCIE_DW_EP
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on OF
+	help
+	  Enables support for the DesignWare PCIe controller in the
+	  Rockchip SoC (except RK3399) to work in endpoint mode.
 
 config PCI_EXYNOS
 	tristate "Samsung Exynos PCIe controller"
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index f38d267e4e64..7614c20c7112 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -34,10 +34,16 @@
 #define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
 
 #define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
+#define PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
 #define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
+#define PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
+#define PCIE_CLIENT_INTR_STATUS_MISC	0x10
+#define PCIE_CLIENT_INTR_MASK_MISC	0x24
 #define PCIE_SMLH_LINKUP		BIT(16)
 #define PCIE_RDLH_LINKUP		BIT(17)
 #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
+#define PCIE_RDLH_LINK_UP_CHGED		BIT(1)
+#define PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
 #define PCIE_L0S_ENTRY			0x11
 #define PCIE_CLIENT_GENERAL_CONTROL	0x0
 #define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
@@ -159,6 +165,12 @@ static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 				 PCIE_CLIENT_GENERAL_CONTROL);
 }
 
+static void rockchip_pcie_disable_ltssm(struct rockchip_pcie *rockchip)
+{
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DISABLE_LTSSM,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+}
+
 static int rockchip_pcie_link_up(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
@@ -195,6 +207,13 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	return 0;
 }
 
+static void rockchip_pcie_stop_link(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	rockchip_pcie_disable_ltssm(rockchip);
+}
+
 static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -220,6 +239,59 @@ static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
 	.init = rockchip_pcie_host_init,
 };
 
+static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	enum pci_barno bar;
+
+	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
+		dw_pcie_ep_reset_bar(pci, bar);
+};
+
+static int rockchip_pcie_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
+				   unsigned int type, u16 interrupt_num)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+
+	switch (type) {
+	case PCI_IRQ_INTX:
+		return dw_pcie_ep_raise_intx_irq(ep, func_no);
+	case PCI_IRQ_MSI:
+		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
+	case PCI_IRQ_MSIX:
+		return dw_pcie_ep_raise_msix_irq(ep, func_no, interrupt_num);
+	default:
+		dev_err(pci->dev, "UNKNOWN IRQ type\n");
+	}
+
+	return 0;
+}
+
+static const struct pci_epc_features rockchip_pcie_epc_features = {
+	.linkup_notifier = true,
+	.msi_capable = true,
+	.msix_capable = true,
+	.align = SZ_64K,
+	.bar[BAR_0] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_1] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_2] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_3] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_4] = { .type = BAR_RESERVED, },
+	.bar[BAR_5] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+};
+
+static const struct pci_epc_features *
+rockchip_pcie_get_features(struct dw_pcie_ep *ep)
+{
+	return &rockchip_pcie_epc_features;
+}
+
+static const struct dw_pcie_ep_ops rockchip_pcie_ep_ops = {
+	.init = rockchip_pcie_ep_init,
+	.raise_irq = rockchip_pcie_raise_irq,
+	.get_features = rockchip_pcie_get_features,
+};
+
 static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
 {
 	struct device *dev = rockchip->pci.dev;
@@ -284,8 +356,39 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = rockchip_pcie_link_up,
 	.start_link = rockchip_pcie_start_link,
+	.stop_link = rockchip_pcie_stop_link,
 };
 
+static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
+{
+	struct rockchip_pcie *rockchip = arg;
+	struct dw_pcie *pci = &rockchip->pci;
+	struct device *dev = pci->dev;
+	u32 reg, val;
+
+	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
+
+	dev_dbg(dev, "PCIE_CLIENT_INTR_STATUS_MISC: %#x\n", reg);
+	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_ltssm(rockchip));
+
+	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
+		dev_dbg(dev, "hot reset or link-down reset\n");
+		dw_pcie_ep_linkdown(&pci->ep);
+	}
+
+	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
+		val = rockchip_pcie_ltssm(rockchip);
+		if ((val & PCIE_LINKUP) == PCIE_LINKUP) {
+			dev_dbg(dev, "link up\n");
+			dw_pcie_ep_linkup(&pci->ep);
+		}
+	}
+
+	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
+
+	return IRQ_HANDLED;
+}
+
 static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
 {
 	struct dw_pcie_rp *pp;
@@ -307,6 +410,63 @@ static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
 	return dw_pcie_host_init(pp);
 }
 
+static int rockchip_pcie_configure_ep(struct platform_device *pdev,
+				      struct rockchip_pcie *rockchip)
+{
+	struct device *dev = &pdev->dev;
+	int irq, ret;
+	u32 val;
+
+	if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_EP))
+		return -ENODEV;
+
+	irq = platform_get_irq_byname(pdev, "sys");
+	if (irq < 0) {
+		dev_err(dev, "missing sys IRQ resource\n");
+		return irq;
+	}
+
+	ret = devm_request_threaded_irq(dev, irq, NULL,
+					rockchip_pcie_ep_sys_irq_thread,
+					IRQF_ONESHOT, "pcie-sys", rockchip);
+	if (ret) {
+		dev_err(dev, "failed to request PCIe sys IRQ\n");
+		return ret;
+	}
+
+	/* LTSSM enable control mode */
+	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_EP_MODE,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+
+	rockchip->pci.ep.ops = &rockchip_pcie_ep_ops;
+	rockchip->pci.ep.page_size = SZ_64K;
+
+	dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+
+	ret = dw_pcie_ep_init(&rockchip->pci.ep);
+	if (ret) {
+		dev_err(dev, "failed to initialize endpoint\n");
+		return ret;
+	}
+
+	ret = dw_pcie_ep_init_registers(&rockchip->pci.ep);
+	if (ret) {
+		dev_err(dev, "failed to initialize DWC endpoint registers\n");
+		dw_pcie_ep_deinit(&rockchip->pci.ep);
+		return ret;
+	}
+
+	dw_pcie_ep_init_notify(&rockchip->pci.ep);
+
+	/* unmask DLL up/down indicator and hot reset/link-down reset */
+	rockchip_pcie_writel_apb(rockchip, 0x60000, PCIE_CLIENT_INTR_MASK_MISC);
+
+	return ret;
+}
+
 static int rockchip_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -372,6 +532,11 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		if (ret)
 			goto deinit_clk;
 		break;
+	case DW_PCIE_EP_TYPE:
+		ret = rockchip_pcie_configure_ep(pdev, rockchip);
+		if (ret)
+			goto deinit_clk;
+		break;
 	default:
 		dev_err(dev, "INVALID device type %d\n", rockchip->mode);
 		ret = -EINVAL;
@@ -395,15 +560,27 @@ static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data = {
 	.mode = DW_PCIE_RC_TYPE,
 };
 
+static const struct rockchip_pcie_of_data rockchip_pcie_ep_of_data = {
+	.mode = DW_PCIE_EP_TYPE,
+};
+
 static const struct of_device_id rockchip_pcie_of_match[] = {
 	{
 		.compatible = "rockchip,rk3568-pcie",
 		.data = &rockchip_pcie_rc_of_data,
 	},
+	{
+		.compatible = "rockchip,rk3568-pcie-ep",
+		.data = &rockchip_pcie_ep_of_data,
+	},
 	{
 		.compatible = "rockchip,rk3588-pcie",
 		.data = &rockchip_pcie_rc_of_data,
 	},
+	{
+		.compatible = "rockchip,rk3588-pcie-ep",
+		.data = &rockchip_pcie_ep_of_data,
+	},
 	{},
 };
 

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
