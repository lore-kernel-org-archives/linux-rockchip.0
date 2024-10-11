Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F892D0D78D
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 12:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mOF5JQtJxLHrjBR1ILMjAFxgrfIdhpsSur5MQbqh2I=; b=bP8ttwJlq/mslW
	5Y7/qIMNLt9Dx0rgA1AUreTXWL23tZAfTOWd0ud9j3cat8PpYCbkK0iLU4IFze+pbJaeEJQ42uMVn
	7UzJUD72IYToRn+5nqA4EQdfqaRMfvmnqCUJFMwLpXYmx5yLh87mtzs+13xJSB8kRpKQ0jtgzs6DO
	r1cIg6wDMO0bDontHyxesgxfJK3cjsUy/7kXSrfuKiPx7LoIBD+kj7TTmbUeNEzFiJfd5VywBFzbj
	iWKCUG0BkO5i9s/tj6fd1E7n2/N/+FsU4/Ypi8GESphk8CKtRL5PyeLIlio+QWeK3z1ciYQ675hD8
	vX7oC+Xyf0Nh8509cuWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEhf-0000000GHut-41gm;
	Fri, 11 Oct 2024 12:25:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEXO-0000000GFuq-3Rp0
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 12:14:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F12CC5C58DC;
	Fri, 11 Oct 2024 12:14:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0805BC4CECC;
	Fri, 11 Oct 2024 12:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648870;
	bh=phkoe2w+39avbp2Skc3MUl22NguytCAK8C36FRjZ2As=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lnjkB1lWxak2H6bUtK2mrskR9irb3IiXc/444gXAI1bfUHSLXp9TO3Z6hBsvTjJDH
	 8Bzf6kLSMtVPTs2tsg71prggTaDg5gCvxEMdfzwR7yRC2VJ8pCUvliH1flYdTnfuFM
	 Gnm3c+G10Ooqsu4Tlk+WEA5wMY4FxY3v06G41Lc319HosDNJTuZOKU4mM3egx/L8hy
	 hEYnhgFAgdfndhpU5eNMcACApdFTBzLoaZaBK8aDJYHDepNG7xT9FGWI7xkOxgZdzw
	 ny6zUNWP4razHVhIrvf4AUemTldm7N4vIrFxAfg5/cxuMkytYNoK3aPdNbBERxcBum
	 yXht/Db/OIp2Q==
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
Subject: [PATCH v4 08/12] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
Date: Fri, 11 Oct 2024 21:14:04 +0900
Message-ID: <20241011121408.89890-9-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241011121408.89890-1-dlemoal@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_051430_976534_3881A0CE 
X-CRM114-Status: GOOD (  14.97  )
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
index 3aef2aa609b6..2c8fd8ee327e 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -577,6 +577,34 @@ static void rockchip_pcie_ep_exit_ob_mem(struct rockchip_pcie_ep *ep)
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
@@ -584,7 +612,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	struct rockchip_pcie *rockchip;
 	struct pci_epc *epc;
 	int err;
-	u32 cfg_msi, cfg_msix_cp;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
@@ -619,6 +646,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	if (err)
 		goto err_disable_clocks;
 
+	rockchip_pcie_ep_hide_broken_msix_cap(rockchip);
+
 	/* Establish the link automatically */
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
@@ -626,29 +655,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
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
