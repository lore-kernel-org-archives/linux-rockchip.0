Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5E4BD0D785
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 12:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6kCwaik8B+jYiYc8JZhyE7ydeB1QiXQgAOORSYtQbU=; b=aBVt20SbLbJ4BV
	5mzioqeJCJDJQQcv3BXP57aNcd9mzr/zM2WJZ+FGiS2qJ5hQGZYUNVvd1etSoOK3rKFq4xVpFV5O8
	l8p5pAkcxPaHT/S580vuxUmh8AnlbwAvlWop6GN8HwiT0FxbwV1XtJX/FG0TGMmXT/al1WSJ3skJ3
	E+U+JVchNtt3IF/VRLPjIsWtPRLSkjlaD0LLB2Izdxq96Y7y/wQ0AD01eHH51fm/PVAJhw64iWWRo
	GCdB56+NliQII08iCz4RQ5XRNW8J2K44GABGT2mD1By+Y2M+P26Mw5GP+I4nP/pvkL4pZIi7UkT+i
	obHhVZq/EjX376o2YWGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEhe-0000000GHta-3Xms;
	Fri, 11 Oct 2024 12:25:06 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEXM-0000000GFti-39TL
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 12:14:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4AAACA43D7B;
	Fri, 11 Oct 2024 12:14:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B539CC4CECF;
	Fri, 11 Oct 2024 12:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648867;
	bh=B8I9wfh8a7supz41kKUUqgkFUB9RfKvXa4c8n0+d5lo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Xmssj+jXVpdJD/wvCPXHwhayimxTVLISDpjVgOvZu7UlMIRFAYM/WYgTu2rAOlKEZ
	 8pbRq/2/heZJeckVkIwEKsp9AFJB11ZdfC2CmM1NAPkUPX7Gpd/FXX2g7egwNompNt
	 49xuASspENqfS5QDpJ1Rpf/aJDVzu2VxV71DAHAaAcm8h3FQZO1fxI0BdvpjCuIKAW
	 4dVuxHHoPks8I59dsgP/2jiRSpRrcuNiDZyejg1U9h2MxB5DLmLAGgSpw04QBDS2xB
	 x2MM+lVj8zd4knH+i2Xqr4IPA6OupintBP3z3FhZk3bnYyAYEeDYQKfJjSQXL3mD4G
	 Ggww/Jf29qR4g==
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
Subject: [PATCH v4 07/12] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
Date: Fri, 11 Oct 2024 21:14:03 +0900
Message-ID: <20241011121408.89890-8-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241011121408.89890-1-dlemoal@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_051428_940370_9B1DD6BF 
X-CRM114-Status: GOOD (  18.86  )
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

Introduce the function rockchip_pcie_ep_init_ob_mem()
allocate the outbound memory regions and memory needed for IRQ handling.

These changes tidy up rockchip_pcie_ep_probe(). No functional change.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 107 ++++++++++++----------
 1 file changed, 61 insertions(+), 46 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index e8409106bfb2..3aef2aa609b6 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -524,15 +524,66 @@ static const struct of_device_id rockchip_pcie_ep_of_match[] = {
 	{},
 };
 
+static int rockchip_pcie_ep_init_ob_mem(struct rockchip_pcie_ep *ep)
+{
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+	struct device *dev = rockchip->dev;
+	struct pci_epc_mem_window *windows = NULL;
+	int err, i;
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
+static void rockchip_pcie_ep_exit_ob_mem(struct rockchip_pcie_ep *ep)
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
@@ -556,10 +607,14 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
-	err = rockchip_pcie_enable_clocks(rockchip);
+	err = rockchip_pcie_ep_init_ob_mem(ep);
 	if (err)
 		return err;
 
+	err = rockchip_pcie_enable_clocks(rockchip);
+	if (err)
+		goto err_exit_ob_mem;
+
 	err = rockchip_pcie_init_port(rockchip);
 	if (err)
 		goto err_disable_clocks;
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
+err_exit_ob_mem:
+	rockchip_pcie_ep_exit_ob_mem(ep);
 err_disable_clocks:
 	rockchip_pcie_disable_clocks(rockchip);
 	return err;
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
