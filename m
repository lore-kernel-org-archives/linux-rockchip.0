Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4760CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=313osswb+vb9uu0b+5JqPD+5m2+l7kEXn7/eA+sGB8M=; b=vQFWy78QWXFRtH
	40sdeC5nMmmAnhB2P9RfHTbZc2fV2B9fgif6JL0o3y5rtUGlHlNziB6mRjTX9OlwHVTA+gy6cypPj
	V2J30XQyZGBqtU3uhrVycBCc4dVm5fnc1Ye0v52BTDU6V5gvwOkuBI2ow2LVOiDL/GfXpbzPrvOrm
	rXZDd/LI/8AVaOqAONRwTbT79EIJtN5tRs+B9Ekh0fDsgLlWbc1BSNeRLwxVK4V712hzo6Fu/S+0q
	wNnttetHaDIb4fCh1Nzf4L6z3hFGnQLaeo7lYEDhwahm9Jd1xX6KigFmIeSDGES1uHwEw4VQlV/xo
	0+hxsT967bi17WiGm2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6u-00000001D6l-3VME;
	Mon, 07 Oct 2024 04:12:40 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6q-00000001D24-1Skc
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0D61AA414EC;
	Mon,  7 Oct 2024 04:12:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E343C4CED1;
	Mon,  7 Oct 2024 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274355;
	bh=TsqGV75FVnyIunhX2UHg/pvAV3kchHT+z+/uEhq7AqE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Asey4TTgZYC4eJ08MQFDZI0Xf2uT6glqWRHboIlMR9nwru1MnVEKzurINTCcbdImi
	 xo2XDevTYWe54qbgAQcqBitHHLVZnKq7Gj7iMEGndPcdo807zApJXkhRDRthsy0NA+
	 7U5NjxAjmIRSkaV04OFMgYA8FkDHFG6rUJasOlU/vXCqiXUrZCHhPgUrvaEX8nmN/J
	 0KbFqFfDAgybIOi9ylqG5z3L8HGudbP54AqPxFxTO1KJYcn0GEPynXbF5PNW4E5OIf
	 JxmhW+IhCyDUeANL3izqcUHUimWvE1M0qW73pIXLNyattkJv/aexT2M5ApIw2PGoua
	 A49B4HVNALpyA==
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
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 06/12] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
Date: Mon,  7 Oct 2024 13:12:12 +0900
Message-ID: <20241007041218.157516-7-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211236_750416_31C65C44 
X-CRM114-Status: GOOD (  19.72  )
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

Introduce the function rockchip_pcie_ep_get_resources() to parse the DT
node of a rockchip PCIe endpoint controller and allocate the outbound
memory region and memory needed for IRQ handling. This function tidies
up rockchip_pcie_ep_probe(). No functional change.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 109 ++++++++++++----------
 1 file changed, 62 insertions(+), 47 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index a9b319d4e507..523e9cdfd241 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -524,15 +524,70 @@ static const struct of_device_id rockchip_pcie_ep_of_match[] = {
 	{},
 };
 
+static int rockchip_pcie_ep_get_resources(struct rockchip_pcie_ep *ep)
+{
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+	struct device *dev = rockchip->dev;
+	struct pci_epc_mem_window *windows = NULL;
+	int err, i;
+
+	err = rockchip_pcie_parse_ep_dt(rockchip, ep);
+	if (err)
+		return err;
+
+	ep->ob_addr = devm_kcalloc(dev, ep->max_regions, sizeof(*ep->ob_addr),
+				   GFP_KERNEL);
+
+	if (!ep->ob_addr)
+		return -ENOMEM;
+
+	windows = devm_kcalloc(dev, ep->max_regions,
+			       sizeof(struct pci_epc_mem_window), GFP_KERNEL);
+	if (!windows)
+		return -ENOMEM;
+
+	for (i = 0; i < ep->max_regions; i++) {
+		windows[i].phys_base = rockchip->mem_res->start + (SZ_1M * i);
+		windows[i].size = SZ_1M;
+		windows[i].page_size = SZ_1M;
+	}
+	err = pci_epc_multi_mem_init(ep->epc, windows, ep->max_regions);
+	devm_kfree(dev, windows);
+
+	if (err < 0) {
+		dev_err(dev, "failed to initialize the memory space\n");
+		return err;
+	}
+
+	ep->irq_cpu_addr = pci_epc_mem_alloc_addr(ep->epc, &ep->irq_phys_addr,
+						  SZ_1M);
+	if (!ep->irq_cpu_addr) {
+		dev_err(dev, "failed to reserve memory space for MSI\n");
+		goto err_epc_mem_exit;
+	}
+
+	ep->irq_pci_addr = ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR;
+
+	return 0;
+
+err_epc_mem_exit:
+	pci_epc_mem_exit(ep->epc);
+
+	return err;
+}
+
+static void rockchip_pcie_ep_release_resources(struct rockchip_pcie_ep *ep)
+{
+	pci_epc_mem_exit(ep->epc);
+}
+
 static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rockchip_pcie_ep *ep;
 	struct rockchip_pcie *rockchip;
 	struct pci_epc *epc;
-	size_t max_regions;
-	struct pci_epc_mem_window *windows = NULL;
-	int err, i;
+	int err;
 	u32 cfg_msi, cfg_msix_cp;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
@@ -552,13 +607,13 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	ep->epc = epc;
 	epc_set_drvdata(epc, ep);
 
-	err = rockchip_pcie_parse_ep_dt(rockchip, ep);
+	err = rockchip_pcie_ep_get_resources(ep);
 	if (err)
 		return err;
 
 	err = rockchip_pcie_enable_clocks(rockchip);
 	if (err)
-		return err;
+		goto err_release_resources;
 
 	err = rockchip_pcie_init_port(rockchip);
 	if (err)
@@ -568,47 +623,9 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
-	max_regions = ep->max_regions;
-	ep->ob_addr = devm_kcalloc(dev, max_regions, sizeof(*ep->ob_addr),
-				   GFP_KERNEL);
-
-	if (!ep->ob_addr) {
-		err = -ENOMEM;
-		goto err_uninit_port;
-	}
-
 	/* Only enable function 0 by default */
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
-	windows = devm_kcalloc(dev, ep->max_regions,
-			       sizeof(struct pci_epc_mem_window), GFP_KERNEL);
-	if (!windows) {
-		err = -ENOMEM;
-		goto err_uninit_port;
-	}
-	for (i = 0; i < ep->max_regions; i++) {
-		windows[i].phys_base = rockchip->mem_res->start + (SZ_1M * i);
-		windows[i].size = SZ_1M;
-		windows[i].page_size = SZ_1M;
-	}
-	err = pci_epc_multi_mem_init(epc, windows, ep->max_regions);
-	devm_kfree(dev, windows);
-
-	if (err < 0) {
-		dev_err(dev, "failed to initialize the memory space\n");
-		goto err_uninit_port;
-	}
-
-	ep->irq_cpu_addr = pci_epc_mem_alloc_addr(epc, &ep->irq_phys_addr,
-						  SZ_1M);
-	if (!ep->irq_cpu_addr) {
-		dev_err(dev, "failed to reserve memory space for MSI\n");
-		err = -ENOMEM;
-		goto err_epc_mem_exit;
-	}
-
-	ep->irq_pci_addr = ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR;
-
 	/*
 	 * MSI-X is not supported but the controller still advertises the MSI-X
 	 * capability by default, which can lead to the Root Complex side
@@ -638,10 +655,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	pci_epc_init_notify(epc);
 
 	return 0;
-err_epc_mem_exit:
-	pci_epc_mem_exit(epc);
-err_uninit_port:
-	rockchip_pcie_deinit_phys(rockchip);
+err_release_resources:
+	rockchip_pcie_ep_release_resources(ep);
 err_disable_clocks:
 	rockchip_pcie_disable_clocks(rockchip);
 	return err;
-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
