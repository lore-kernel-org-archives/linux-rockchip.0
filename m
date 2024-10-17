Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC687D2F7DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 01:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQ7d8BT40CDKJZGAPhu1vN8kaH/1iCsV5MJgAoot/T4=; b=PhCyqzH8WsEA4K
	6ZwvZPj1p4Gk2z0QQcaB5UEBbDsV5ovI1Zkh1IdSVah9rMZCDkPmXWewYZhiRC9pfARnM+I7dNlIu
	m7knnf1M4aupqJibiXzi0378SswdagMF4PoA/yzXSyb5sgWUX+qQyeOkJ4ksqCwR/g+A1/40xmFQ2
	87bVJdiCbD3bjgIJ46dZPAnLou6NzIe7QBeNu+tUcOGMETAz6Ml0sZiNitvizxC1yZ0W0kakkuyJq
	Vy0MkFH/PvotluubRyZa0ZmyR0acFL31vOfZ95V3fXIoG1ApMQuE5x43uXhcl77qiqQFN32xoUX7g
	7YNRpgYp+tu83x8nCJFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnJ-0000000DUy9-2MEH;
	Thu, 17 Oct 2024 01:59:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnI-0000000DUwg-2bPT
	for linux-rockchip@bombadil.infradead.org;
	Thu, 17 Oct 2024 01:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/+zdzpy8y9z48fI3JqGj5LoiDpcFFlhvY0FRB5OACfg=; b=HR3UMUUmWcIaRQ8i2vddgCWSXt
	1b2mVQf7OhF2tHL//RiCAsM0sROQuFg7Eyn/2eRvp7ZrgQke0RDV0ISjebGmJajCOvIjCc9hE8dvJ
	NtDsLEkPaiEsKvJ27YZ3nWgxfPDyyf1bF5USdozhMK4J1keLJ5Mtbk9/8FNezTVFz0dRFI3lf2g5Y
	matrZVu4d+BbKx7tSPYA/hWBnwEbG9xPQdUlQN402eDzMItyMpEU5gsamy4ehaqUvq/+dZYAjnT5U
	tb1dqZY2flYvBurr/8iasaysAVtnGmvNJ7uVANLejMXyO4ef2SDB2qiz9+ZV7sqXjD7BVJ+4LP2VH
	upv4EaFw==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnF-000000070ha-0i8g
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:59:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8FECBA40DE6;
	Thu, 17 Oct 2024 01:58:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FACBC4CECF;
	Thu, 17 Oct 2024 01:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130348;
	bh=TZTC/UN+ioxo8kHC1srfQQYjsUIYfU7EFjfKzLP8H9w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Vft2HIxTJdPc5yRYN1H9fBOSThk3i5v6HXmTjF/BnwyJgiGCPEjFqLMJtL2LHL94U
	 MlpR20RFwrRvQX301EZ43p3XkAezdJH+fKMfgPKUXINvg0UY388Fd/OzBGDP/8ZPpr
	 3NLa5a3VgEM8hABxSX3lpZMl965vFDNOKO9+ogni1pE3jelgp822UZXn4QHw6vAOmH
	 5PfWOnXoM15MxDkrDpLZ1B2mk7Z9Fyp2zC09ylbP7ygFd3klLKhydLG1MSY76U2Xne
	 QUruNdnTxx2ZKF1KKPtfESUobk6sLUTuOZADrJ0/8Y/FSV/WVq9XEq6uUX3+BOOXxL
	 C/yK5Cx1CZTGQ==
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
Subject: [PATCH v5 08/14] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
Date: Thu, 17 Oct 2024 10:58:43 +0900
Message-ID: <20241017015849.190271-9-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_025913_707836_DC286802 
X-CRM114-Status: GOOD (  18.97  )
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
index 705f6741fa53..8dd2a812e446 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -529,15 +529,66 @@ static const struct of_device_id rockchip_pcie_ep_of_match[] = {
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
@@ -561,10 +612,14 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
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
@@ -573,47 +628,9 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
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
@@ -643,10 +660,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
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
