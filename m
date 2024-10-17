Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B492AD2F7DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 03:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVQ6ndhbUMPKhcY5r5KO4QNPpl8ksSVYDY6uAjliuTg=; b=BD3jFagVR0xqQP
	hP/R2UVG/nxWbEoqwv7DRsl/9hZLlprrbXR3HFTsvjC8vkjnbrhrFbiN4Jw/o2YOuDJ2Aj0nHjGKa
	JTDHDmJxsPkLr4NZ9ZxMBbgY8hh2Cblsc6jkGNrBpGvD1ElfUK7v3ANU+PvfLUEWrTTJBSVX82J8k
	aWGV9E5kXgIh9INJ5yEB+IdZqWAyl0r7AYjgJw7neOJb4CvGT2BEQ0M67ge5rp/ZI3LO/t4h2VmRw
	E8ssPiTw/bSKJSQdnMcICKdx7uNyPV5LFHv7Od5KtMiIDu3W33X4+FyL6CwhHJlu1Jfy4O4M5E2NZ
	YIKRypPImdaH1CCRe16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Gkz-0000000Dbwi-1fq1;
	Thu, 17 Oct 2024 03:00:57 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnD-0000000DUsC-2TwU
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:59:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A68E2A43323;
	Thu, 17 Oct 2024 01:59:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89AE4C4CED0;
	Thu, 17 Oct 2024 01:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130350;
	bh=NZPcvMNuuYIfcbG2joADk3VepWG0efvQX25DV7OprLg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DrIqEtrYYKnQOh1Uw67nKZkEKJJuRVDxS4YgoykA3+sQi6CjPhbhk6C1OpGBHyEMV
	 Kri7DLYD+oXyTKmtw0//BwGa0NOC6pnkW8LWTbH2hBYKxZcU3e4V/phXQDc/Zs/Mw+
	 DIR2abGpt7cDbmtPOYkP52OHOBUpd3Q+JYLPLRSzyBWM+kLPCHbbB03DjUxD3TpHN8
	 lPI/C113nXclSFHgpUx+4kOEOjIk7SfOBwW2i0zD3LXY0Rv0MhjR5YbgB+eFiu4IET
	 8gT/phqnMEz/4SOJMdgsm3N9rrxWxLLxtF24ZYRdyydKXorvE2s9pvhrLm5r3dorcz
	 xo+pdCESm8QeQ==
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
Subject: [PATCH v5 09/14] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
Date: Thu, 17 Oct 2024 10:58:44 +0900
Message-ID: <20241017015849.190271-10-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_185912_143445_E7EC177E 
X-CRM114-Status: GOOD (  14.82  )
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

Move the code in rockchip_pcie_ep_probe() to hide the MSI-X capability
to its own function, rockchip_pcie_ep_hide_broken_msix_cap().
No functional changes.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 54 +++++++++++++----------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 8dd2a812e446..d980e0b92745 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -582,6 +582,34 @@ static void rockchip_pcie_ep_exit_ob_mem(struct rockchip_pcie_ep *ep)
 	pci_epc_mem_exit(ep->epc);
 }
 
+static void rockchip_pcie_ep_hide_broken_msix_cap(struct rockchip_pcie *rockchip)
+{
+	u32 cfg_msi, cfg_msix_cp;
+
+	/*
+	 * MSI-X is not supported but the controller still advertises the MSI-X
+	 * capability by default, which can lead to the Root Complex side
+	 * allocating MSI-X vectors which cannot be used. Avoid this by skipping
+	 * the MSI-X capability entry in the PCIe capabilities linked-list: get
+	 * the next pointer from the MSI-X entry and set that in the MSI
+	 * capability entry (which is the previous entry). This way the MSI-X
+	 * entry is skipped (left out of the linked-list) and not advertised.
+	 */
+	cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+				     ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+
+	cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
+
+	cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+					 ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
+					 ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
+
+	cfg_msi |= cfg_msix_cp;
+
+	rockchip_pcie_write(rockchip, cfg_msi,
+			    PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+}
+
 static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -589,7 +617,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	struct rockchip_pcie *rockchip;
 	struct pci_epc *epc;
 	int err;
-	u32 cfg_msi, cfg_msix_cp;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
@@ -624,6 +651,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	if (err)
 		goto err_disable_clocks;
 
+	rockchip_pcie_ep_hide_broken_msix_cap(rockchip);
+
 	/* Establish the link automatically */
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
@@ -631,29 +660,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	/* Only enable function 0 by default */
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
-	/*
-	 * MSI-X is not supported but the controller still advertises the MSI-X
-	 * capability by default, which can lead to the Root Complex side
-	 * allocating MSI-X vectors which cannot be used. Avoid this by skipping
-	 * the MSI-X capability entry in the PCIe capabilities linked-list: get
-	 * the next pointer from the MSI-X entry and set that in the MSI
-	 * capability entry (which is the previous entry). This way the MSI-X
-	 * entry is skipped (left out of the linked-list) and not advertised.
-	 */
-	cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
-				     ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
-
-	cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
-
-	cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
-					 ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
-					 ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
-
-	cfg_msi |= cfg_msix_cp;
-
-	rockchip_pcie_write(rockchip, cfg_msi,
-			    PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
-
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
