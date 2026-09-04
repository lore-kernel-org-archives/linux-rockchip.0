Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC3A3C624D4
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWkz90rHUhELS/0/hnx3O9pl4gB59/GCw+w5SGShteg=; b=KE8wFqy/qdwFkx
	CvAHal3wxP4SiB0ZDF3+1Wl2PVWaftvRwMrHmwhtjG2vndygf1fzRCb2sZPLj/X8XWHE+nuK7bVQg
	wkpOfzInpllWdV94A4stHhGiDqHojHsK91JdG6AY+A7B4gVpI7DtBYrwtlwLlFZngUjyKkwQCpIZ6
	88dFHjtnO7sXezSX4/DkDecc8uUHFbCD8G4J3Uzk9zJ43m8cmYlS0ieFE4cPo2jDyKo6heN7iufLe
	tYIadXc4S1QtyKMun4WMWNnOdnr+rlb+4U+9ddJXrPt4UOErozuZ66TPGPpnnWI7DGIuwPUimh/xr
	3xBqIwNKZrgNTGlD8rcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2IZt-00000000q3q-2a5P;
	Fri, 04 Sep 2026 01:18:49 +0000
Received: from mail-m16023652200.xmail.ntesmail.com ([160.236.52.200])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2IZp-00000000q23-29Bt
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 01:18:46 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c7b37555;
	Fri, 4 Sep 2026 09:18:40 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] PCI: dw-rockchip: Mask the INTx IRQ while the controller clocks are gated
Date: Fri,  4 Sep 2026 09:18:29 +0800
Message-Id: <1788484709-139123-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1788484709-139123-1-git-send-email-shawn.lin@rock-chips.com>
References: <1788484709-139123-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa069ff18d903a4kunm9a952c5910a963
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGU4YS1ZPSh1OQklIGB
	gfSkpWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CjyWZIcO4P0O+KMoCYVHOjIFK/sRQA/YshWpgWBymIzNJ4vy6qS3a36k9NklC3mvD9lecRmTjzlUIpsK9hS+M7cr7QEEiSPEqZehYj/mSSV3YoiuD3N3PAfteGYl5aKStO0GCNRxwwrJRY4tYkOjAk16wR6oP91QS0d7+ysYB0k=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=8YeVgybQaFGVaqWo90XwrRYov5wETp15PRnOneuUQPM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_181845_835595_D055FBDD 
X-CRM114-Status: GOOD (  14.60  )
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

.reset_root_port() gates the controller clocks and PHY before
re-initializing the hardware. Devices on the bus may keep their INTx
line asserted across this window, so the chained INTx handler can run
and read the APB registers of the unclocked controller, raising a
synchronous external abort.

Mask the INTx IRQ before turning the clocks off and re-enable it once
the clocks are running again. On the error paths the clocks stay
gated, so the IRQ is deliberately left masked there.

Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v2:
- keep the INTx IRQ masked while .reset_root_port()
  gates the controller clocks, responding to the Sashiko review
  finding about accessing the unclocked APB bus.

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index ecf0d7e..aee5ca8 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -434,7 +434,6 @@ static void rockchip_pcie_stop_link(struct dw_pcie *pci)
 static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
-	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
 
 	pci->dbi_base2 = pci->dbi_base + PCIE_TYPE0_HDR_DBI2_OFFSET;
 
@@ -925,6 +924,16 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 	u32 val;
 	int ret;
 
+	/*
+	 * Devices may keep their INTx line asserted across the reset. Mask
+	 * the INTx IRQ so that the chained handler does not touch the
+	 * unclocked APB bus, which would raise a synchronous external abort.
+	 * The IRQ is re-enabled once the clocks are restored, and is
+	 * deliberately left masked on the error paths where the controller
+	 * remains unclocked.
+	 */
+	disable_irq(rockchip->intx_irq);
+
 	dw_pcie_stop_link(pci);
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 	rockchip_pcie_phy_deinit(rockchip);
@@ -975,6 +984,7 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 
 	/* Ignore errors, the link may come up later */
 	dw_pcie_wait_for_link(pci);
+	enable_irq(rockchip->intx_irq);
 	dev_dbg(dev, "Root Port reset completed\n");
 	return ret;
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
