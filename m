Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 402D8C25B5F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBp6H8Iesu6j93CEBYhEc6ngJ9gczXGu7nU/z8XE4OE=; b=03NgT4KO7a562c
	lqd38TQFm657AAkpAThQcGbtydenLjvImaKQIfykw2szbpD+7quqMVix4GECyPayHLmixRhR6BLd+
	/MdPLBwSIczdr56ennQxNSHM0lD8QuqsY+OUxsouvstLAZ9CkOW0x/onm0ZzZdksG2WYlnhXPNYRn
	32k20teJY7wUhDa7Id4HFPCcaXwCk+Hg2F6DCJiLXc2hwkCCkLz98nVJVwQorzsa+X2GPd6bRfUOm
	/bXjaUcmXlIexJvgCQtepNtCfcm2TVqkejni3ZvxoPMlT2qg8sbxHV2SxsUhyuO1bul+3Il3wHie7
	clSPqGobErc+vf/VR9wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7u-0000000Fadi-1530;
	Wed, 08 May 2024 13:14:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7o-0000000FaYF-2wyr
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 13:14:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A946861B2A;
	Wed,  8 May 2024 13:14:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99B58C4AF66;
	Wed,  8 May 2024 13:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174062;
	bh=QYrAlRFQl9OfrVkr1R4fFgfw/9cDmg0C//OE6N9TnD4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=F78Gc4rcOyHaXUu5PvEF9BGRksFxDBuIyOzq37Pqus4nPER/m70j0d/qZfvxHKSFS
	 v4uzNFSJPdyWGVLWm15TlY39XckCeKZ3o0sysrKQ333Zh41WxFIosUqcsuGNIR8LJk
	 NutgkSsQIbmfAfKI4Nq4FtCAQ4kNBrrBZ2c6jsdroIq+qAR9jtpG0hVRBGzNgkEYTf
	 HN+YxryqrdhqA5q/5jEpe2zl++C9I9FBWqsaV6qc160U4ABHsv79hQdeBszQ+iclCs
	 NfTpCC792Mdb1OmNNowS5isry6mUe3MNBRUEMePkXAQjp5SqphuSnv5OO1DzYz9hPB
	 EUCoV/nDr9aIA==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 08 May 2024 15:13:41 +0200
Subject: [PATCH v3 10/13] PCI: dw-rockchip: Add endpoint mode support
MIME-Version: 1.0
Message-Id: <20240508-rockchip-pcie-ep-v1-v3-10-1748e202b084@kernel.org>
References: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
In-Reply-To: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=11300; i=cassel@kernel.org;
 h=from:subject:message-id; bh=QYrAlRFQl9OfrVkr1R4fFgfw/9cDmg0C//OE6N9TnD4=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKsq+qjJx64fsNlwcy2BL97v4M+rv/Oxn6veUXtkh11E
 mxTMthndpSyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAiG/4xMiwr4HMoXZy5LGbh
 Cy9HVz/WUwmX5RcdTd0/a/HL2xsbGCoZGT4rPfj+7N+Gr/vyucWi7h5xiDnVvHR+wuk9TFads93
 7AxkA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_061424_936371_DB1A6E0C 
X-CRM114-Status: GOOD (  23.81  )
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
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 210 ++++++++++++++++++++++++++
 2 files changed, 224 insertions(+), 3 deletions(-)

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
index 3c2e012e3e91..c93c620f8b28 100644
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
@@ -63,6 +69,7 @@ struct rockchip_pcie {
 
 struct rockchip_pcie_of_data {
 	enum dw_pcie_device_mode mode;
+	const struct pci_epc_features *epc_features;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip, u32 reg)
@@ -159,6 +166,12 @@ static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
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
@@ -195,6 +208,13 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
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
@@ -220,6 +240,82 @@ static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
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
+static const struct pci_epc_features rockchip_pcie_epc_features_rk3568 = {
+	.linkup_notifier = true,
+	.msi_capable = true,
+	.msix_capable = true,
+	.align = SZ_64K,
+	.bar[BAR_0] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_1] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_2] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_3] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_4] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_5] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+};
+
+/*
+ * BAR4 on rk3588 exposes the ATU Port Logic Structure to the host regardless of
+ * iATU settings for BAR4. This means that BAR4 cannot be used by an EPF driver,
+ * so mark it as RESERVED. (rockchip_pcie_ep_init() will disable all BARs by
+ * default.) If the host could write to BAR4, the iATU settings (for all other
+ * BARs) would be overwritten, resulting in (all other BARs) no longer working.
+ */
+static const struct pci_epc_features rockchip_pcie_epc_features_rk3588 = {
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
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	return rockchip->data->epc_features;
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
@@ -284,13 +380,47 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
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
+	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm(rockchip));
+
+	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
+		dev_dbg(dev, "hot reset or link-down reset\n");
+		dw_pcie_ep_linkdown(&pci->ep);
+	}
+
+	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
+		val = rockchip_pcie_get_ltssm(rockchip);
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
 	u32 val;
 
+	if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST))
+		return -ENODEV;
+
 	/* LTSSM enable control mode */
 	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
@@ -304,6 +434,63 @@ static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
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
@@ -366,6 +553,11 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		if (ret)
 			goto deinit_clk;
 		break;
+	case DW_PCIE_EP_TYPE:
+		ret = rockchip_pcie_configure_ep(pdev, rockchip);
+		if (ret)
+			goto deinit_clk;
+		break;
 	default:
 		dev_err(dev, "INVALID device type %d\n", data->mode);
 		ret = -EINVAL;
@@ -389,11 +581,29 @@ static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
 	.mode = DW_PCIE_RC_TYPE,
 };
 
+static const struct rockchip_pcie_of_data rockchip_pcie_ep_of_data_rk3568 = {
+	.mode = DW_PCIE_EP_TYPE,
+	.epc_features = &rockchip_pcie_epc_features_rk3568,
+};
+
+static const struct rockchip_pcie_of_data rockchip_pcie_ep_of_data_rk3588 = {
+	.mode = DW_PCIE_EP_TYPE,
+	.epc_features = &rockchip_pcie_epc_features_rk3588,
+};
+
 static const struct of_device_id rockchip_pcie_of_match[] = {
 	{
 		.compatible = "rockchip,rk3568-pcie",
 		.data = &rockchip_pcie_rc_of_data_rk3568,
 	},
+	{
+		.compatible = "rockchip,rk3568-pcie-ep",
+		.data = &rockchip_pcie_ep_of_data_rk3568,
+	},
+	{
+		.compatible = "rockchip,rk3588-pcie-ep",
+		.data = &rockchip_pcie_ep_of_data_rk3588,
+	},
 	{},
 };
 

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
