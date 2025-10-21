Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37886CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 07:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gk7/fo6KlfZbN0Q+GowOwFFDODPXacrAukBpphyIIfg=; b=Ix4mB2PNlbWC/0
	QhUWoNf3q8n+NX7EMoGYcO0HVcoJlHIVBcmgxF4HNN3EumQ0EBuNOTrgf0YXRBw0IUs9kyLBgCNka
	Bnzn9tYPTlPkIW8CW2kGvJ/J6n5vlVnkGSMegLuKuREs/dsAbLbJcKhvwyvU5UsmeXHa1QmL9p95x
	XghQi/gvbSlRvuziJajKYa5pd1KeudcKLpGpx3U/X7kojNTuaNImUeMbtJ7rTQmSXThF3XhzyydEN
	r5L9LTswnHvd4zrAcZ3pmYUyTht7zAeCz47l2k9XRii1CG9KCFFNO8p8sO6iOm1B1bbSk/y6TvjtU
	7lcawzEdBzFNGztmgThg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB77S-0000000G9nd-022T;
	Tue, 21 Oct 2025 07:49:22 +0000
Received: from mail-m15591.qiye.163.com ([101.71.155.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB77P-0000000G9k9-0VTO
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 07:49:20 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26a1f52ee;
	Tue, 21 Oct 2025 15:49:14 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 3/4] PCI: dw-rockchip: Add L1sub support
Date: Tue, 21 Oct 2025 15:48:26 +0800
Message-Id: <1761032907-154829-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9a05be63b709cckunm38953c58648233
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhPQ1YfSUNNSUtJSEIYQkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SXFzxmVqMHQUidNCXWI/i5+1KodnEaDH1gECnDh+LeFFQOacF6WgIizYXeCDqEqyNZloTgng23KfPRqWMbWPQ80/WWUG9urQMBgv75tjB0ZFc4DY3/Ru/hHCuVjB9RiSPySETYbV36eZcYveU+sccoASfxkFUVSUJddLDB0d0ok=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8p+P7sgYlFmGDCAraLMtjxy7LG8Kgxou20xrYiE6tSo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_004919_350884_7F30CAD3 
X-CRM114-Status: GOOD (  15.68  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The driver should set app_clk_req_n(clkreq ready) of PCIE_CLIENT_POWER reg
to support L1sub. Otherwise, unset app_clk_req_n and pull down CLKREQ#.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 31 ++++++++++++++-----
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 87dd2dd188b4..8a52ff73ec46 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -62,6 +62,12 @@
 /* Interrupt Mask Register Related to Miscellaneous Operation */
 #define PCIE_CLIENT_INTR_MASK_MISC	0x24
 
+/* Power Management Control Register */
+#define PCIE_CLIENT_POWER		0x2c
+#define  PCIE_CLKREQ_READY		0x10001
+#define  PCIE_CLKREQ_NOT_READY		0x10000
+#define  PCIE_CLKREQ_PULL_DOWN		0x30001000
+
 /* Hot Reset Control Register */
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define  PCIE_LTSSM_APP_DLY2_EN		BIT(1)
@@ -84,6 +90,7 @@ struct rockchip_pcie {
 	struct gpio_desc *rst_gpio;
 	struct irq_domain *irq_domain;
 	const struct rockchip_pcie_of_data *data;
+	bool supports_clkreq;
 };
 
 struct rockchip_pcie_of_data {
@@ -199,15 +206,21 @@ static bool rockchip_pcie_link_up(struct dw_pcie *pci)
 	return FIELD_GET(PCIE_LINKUP_MASK, val) == PCIE_LINKUP;
 }
 
-/*
- * See e.g. section '11.6.6.4 L1 Substate' in the RK3588 TRM V1.0 for the steps
- * needed to support L1 substates. Currently, not a single rockchip platform
- * performs these steps, so disable L1 substates until there is proper support.
- */
-static void rockchip_pcie_disable_l1sub(struct dw_pcie *pci)
+static void rockchip_pcie_enable_l1sub(struct dw_pcie *pci)
 {
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
 	u32 cap, l1subcap;
 
+	/* Enable L1 substates if CLKREQ# is properly connected */
+	if (rockchip->supports_clkreq) {
+		/* Ready to have reference clock removed */
+		rockchip_pcie_writel_apb(rockchip, PCIE_CLKREQ_READY, PCIE_CLIENT_POWER);
+		return;
+	}
+
+	/* Otherwise, pull down CLKREQ# and disable L1 substates */
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLKREQ_PULL_DOWN | PCIE_CLKREQ_NOT_READY,
+				 PCIE_CLIENT_POWER);
 	cap = dw_pcie_find_ext_capability(pci, PCI_EXT_CAP_ID_L1SS);
 	if (cap) {
 		l1subcap = dw_pcie_readl_dbi(pci, cap + PCI_L1SS_CAP);
@@ -282,7 +295,7 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
 					 rockchip);
 
-	rockchip_pcie_disable_l1sub(pci);
+	rockchip_pcie_enable_l1sub(pci);
 	rockchip_pcie_enable_l0s(pci);
 
 	return 0;
@@ -320,7 +333,7 @@ static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	enum pci_barno bar;
 
-	rockchip_pcie_disable_l1sub(pci);
+	rockchip_pcie_enable_l1sub(pci);
 	rockchip_pcie_enable_l0s(pci);
 	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
 
@@ -432,6 +445,8 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
 		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
 				     "failed to get reset lines\n");
 
+	rockchip->supports_clkreq = of_pci_clkreq_present(pdev->dev.of_node);
+
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
