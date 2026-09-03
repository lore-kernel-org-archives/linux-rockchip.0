Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D800C624DA
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 02:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOR4Hlem54P2K75fZHNYUNGQNWmFs9RnAFy0Ov04pfk=; b=jxnezyiu8HLobN
	xhcpW7WCE7gc6w9A28cYT67CAvxFapg5V1KuEumrmGUjgqlnkGyNjE2CHOmej1mRzgR07z8IP1kVk
	ORKJyUlfZ/Oz2d6e2PMlKpBa03HJiyRtK99MoShFUJRHXFXdyWRYuG2/nPiOObb0mltitUuanqsvd
	LJnJmNIbHJGo6+o5Q1BGEv7JQeU8C0ml3ohgqw9vXQPz64okQ3Vf0g/vQe2xN6ZsytL7h7TiPXzot
	1IFzJe448+dOUHbQtqs1ta0i7DXhDRhg+kAnOoX3QjTx+CK/pkY6e2QO2eCt0ToRM1jkJ2FXW96Mi
	r60z3YRvpN5jEj4NU4AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1xRp-0000000GEx2-2zJy;
	Thu, 03 Sep 2026 02:45:05 +0000
Received: from mail-m16023653174.xmail.ntesmail.com ([160.236.53.174])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1xRl-0000000GEvg-1tK3
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 02:45:03 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c5849824;
	Thu, 3 Sep 2026 10:44:54 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] PCI: dw-rockchip: Do not recreate the INTx irq domain on root port reset
Date: Thu,  3 Sep 2026 10:44:37 +0800
Message-Id: <1788403477-71491-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
References: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa06527aeed03a4kunm355d5a8763ee6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ0hLS1YdHxhPGkJOT0
	lPQ0JWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PfxfnNerxX97Q4CGupDFknJwpsP1ug8EbRC+gfJaoH5rrM+u0dC+d58RRm59QkKx/urD540Nh7FNIlVJBCNopEWWL4w/dKp7s4EV/VMjTsJRLwaCOwj/bbxQ+jOTUWuHgFbzEY+upPHHyEgMYzncn/LXByV+VUvJiBN8p8TJeVc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FzU+8PGJgfCvydkiA6ltBY+b8mcOBv3eiLjMbqLbEis=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_194502_081556_E787D73D 
X-CRM114-Status: GOOD (  15.55  )
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

.reset_root_port() re-runs the host ops .init() callback to reprogram
the Root Complex after the controller reset. However, .init() also
creates a new INTx irq domain on every root port reset, so that:

  - the previous irq domain is leaked, as it is never removed, and two
    irq domains end up registered for the same fwnode;

  - the INTx virqs of the downstream PCI devices were allocated in the
    previous irq domain and are never re-mapped, while the chained
    handler now looks up virqs in the new, empty domain. Hence, after a
    link down recovery, INTx interrupts are silently lost.

Split the (re)programming of the Root Complex registers out of .init()
into rockchip_pcie_host_hw_init() and call that from .reset_root_port()
instead. The INTx irq domain and the chained handler are now only set up
once, at probe time, which keeps the already mapped virqs valid across
root port resets.

Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
Cc: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 37 +++++++++++++++++----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 50824c8..ff92394 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -418,6 +418,27 @@ static void rockchip_pcie_stop_link(struct dw_pcie *pci)
 	rockchip_pcie_ltssm_trace(rockchip, false);
 }
 
+/*
+ * (Re)program the Root Complex registers that are cleared by the controller
+ * reset. Called from .init() at probe time and from .reset_root_port().
+ * The INTx irq domain must not be touched here, as downstream devices hold
+ * virqs mapped in it.
+ */
+static void rockchip_pcie_host_hw_init(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	pci->dbi_base2 = pci->dbi_base + PCIE_TYPE0_HDR_DBI2_OFFSET;
+
+	rockchip_pcie_configure_l1ss(pci);
+	rockchip_pcie_enable_l0s(pci);
+	pp->bridge->reset_root_port = rockchip_pcie_rc_reset_root_port;
+
+	/* Disable Root Ports BAR0 and BAR1 as they report bogus size */
+	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, 0x0);
+	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_1, 0x0);
+}
+
 static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -429,8 +450,6 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	if (irq < 0)
 		return irq;
 
-	pci->dbi_base2 = pci->dbi_base + PCIE_TYPE0_HDR_DBI2_OFFSET;
-
 	ret = rockchip_pcie_init_irq_domain(rockchip);
 	if (ret < 0) {
 		dev_err(dev, "failed to init irq domain\n");
@@ -440,13 +459,7 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
 					 rockchip);
 
-	rockchip_pcie_configure_l1ss(pci);
-	rockchip_pcie_enable_l0s(pci);
-	pp->bridge->reset_root_port = rockchip_pcie_rc_reset_root_port;
-
-	/* Disable Root Ports BAR0 and BAR1 as they report bogus size */
-	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, 0x0);
-	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_1, 0x0);
+	rockchip_pcie_host_hw_init(pp);
 
 	return 0;
 }
@@ -920,11 +933,7 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 	if (ret)
 		goto deinit_phy;
 
-	ret = pp->ops->init(pp);
-	if (ret) {
-		dev_err(dev, "Host init failed: %d\n", ret);
-		goto deinit_clk;
-	}
+	rockchip_pcie_host_hw_init(pp);
 
 	/* LTSSM enable control mode */
 	val = FIELD_PREP_WM16(PCIE_LTSSM_ENABLE_ENHANCE, 1);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
