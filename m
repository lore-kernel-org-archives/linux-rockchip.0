Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 034D6C982FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 04:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IQr4j39fi1jstMyYO/P7f4yFPMciWlRpCuVQxF/NiM8=; b=fbiUYx8pZj2IQF
	eylX3e64awIuPegy/5SXIRJLLIxMrJw0A9b2Bl3zYDQVIlaLN5lz4zSHyQPfewHXRAxyBEMY8I3Oo
	gWurrnh6KR1VCrE6grRBjXj/V3p+BnuTUXX9phBCzo46lSh+ils0kOcdXqNVKJ0QOGHMq+1ev2++c
	8PQylh1xRuxjRTYl89UG00U+5vMm2fPrwL/jDo4csy8c4hbCYjuZriex+zsINxgOCM6sbw0sFuOD1
	LhBgWJOJDIRYiHw+vAqeLi6x801b9Ry4JQqHmTa+Qpx3jz+SCf/wnqrmKf9abl48YtuJdniAUahU1
	PYScWzkCwkweK3B7WwFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ajn-00000009zDt-37gA;
	Thu, 24 Sep 2026 04:07:11 +0000
Received: from mail-m128228.netease.com ([103.209.128.228])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9aji-00000009zDQ-3Y6P
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 04:07:10 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ef7608d3;
	Thu, 24 Sep 2026 12:07:02 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4] PCI: dw-rockchip: Move the INTx irq setup to probe
Date: Thu, 24 Sep 2026 12:06:33 +0800
Message-Id: <1790222793-77182-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0d1986b4103a4kunm47a76791511db9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUpMHVYYSExISUpIH0
	8ZTkNWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZS1
	VLVUtVS1kG
DKIM-Signature: a=rsa-sha256;
	b=TySLePJ4TBsUOmjkCwrWL/AmdlED8OjDRBuyktROf3gwRtahYHW1/12B//f76/6UHsYs2CeQHFSJNdMlXreYMeD9Fpxg715gSqDmVmul1woUxYzcB5m321nv8zn/ZiBPniSA0kZW4FlSdvSKEXtFFlGsJ6L+HiisvthcpX3OmWE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HN0pp24pZmSGqLJQAT9kmJas1gg8aX6HKbdeTQypF68=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_210708_996045_57C8EF46 
X-CRM114-Status: GOOD (  19.55  )
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

Since commit b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port()
and use for link down"), .reset_root_port() re-runs the host ops .init()
callback to reprogram the Root Complex after a controller reset. That
works for the register programming, but .init() is not re-entrant: it
also creates the INTx irq domain and installs the chained INTx handler.
Every root port reset therefore ends up with a second irq domain
registered for the same fwnode: the previous one is leaked, as it is
never removed, and worse, the INTx virqs of the downstream PCI devices
were allocated in the previous irq domain and are never re-mapped, while
the chained handler now looks up virqs in the new, empty domain. After a
link down recovery, INTx interrupts are silently lost.

Fix it by moving the of_irq_get_byname() lookup, the INTx irq domain
creation and the chained handler installation out of .init() and into
rockchip_pcie_configure_rc(), just before dw_pcie_host_init(). The
lookup has to happen before the host is initialized, because
dw_pcie_host_init() enumerates the bus and probes the downstream
devices, and pci_assign_irq() maps their INTx interrupts at that point:
if the domain does not exist yet, the mapping fails and the devices end
up without a usable INTx. This also mirrors how the qcom driver requests
its global IRQ, and leaves .init() with nothing but idempotent register
programming, so both .reset_root_port() and dw_pcie_resume_noirq() can
safely re-run it. Re-running of_irq_get_byname() on every resume is also
gone.

Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
Suggested-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v4:
- drop the code comment (Niklas)
- create the INTx irq domain before dw_pcie_host_init() instead of
  after it. dw_pcie_host_init() enumerates the bus and probes the
  downstream devices, and their INTx interrupts get mapped at that
  point, so registering the domain afterwards left every downstream
  device without a usable INTx (flagged by the Sashiko review).
- this also removes the failing steps behind dw_pcie_host_init(), so
  there is no error path left that would return with the root bus
  registered and the rockchip structure about to be freed (flagged by
  the Sashiko review).

Changes in v3:
- split devm-managed part into a seperate patch

Changes in v2:
- Moved the of_irq_get_byname() lookup, the INTx irq domain creation
  and the chained handler installation out of the host ops .init()
  callback into rockchip_pcie_configure_rc(), right after
  dw_pcie_host_init(), as suggested by Niklas Cassel. This supersedes
  v1 patch 1/2, as .init() no longer creates the irq domain, and
  removes the rockchip_pcie_host_hw_init() helper from v1.
- Made the INTx irq domain devm-managed with
  devm_irq_domain_instantiate() and uninstall the chained handler
  through a devres action, addressing the probe failure leak and
  use-after-free flagged by the Sashiko review.

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 1497686..bd86e32c 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -422,23 +422,9 @@ static void rockchip_pcie_stop_link(struct dw_pcie *pci)
 static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
-	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
-	struct device *dev = rockchip->pci.dev;
-	int irq, ret;
-
-	irq = of_irq_get_byname(dev->of_node, "legacy");
-	if (irq < 0)
-		return irq;
 
 	pci->dbi_base2 = pci->dbi_base + PCIE_TYPE0_HDR_DBI2_OFFSET;
 
-	ret = rockchip_pcie_init_irq_domain(rockchip);
-	if (ret < 0)
-		dev_err(dev, "failed to init irq domain\n");
-
-	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
-					 rockchip);
-
 	rockchip_pcie_configure_l1ss(pci);
 	rockchip_pcie_enable_l0s(pci);
 	pp->bridge->reset_root_port = rockchip_pcie_rc_reset_root_port;
@@ -731,6 +717,19 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 				 PCIE_CLIENT_SET_MODE(PCIE_CLIENT_MODE_RC),
 				 PCIE_CLIENT_GENERAL_CON);
 
+	irq = of_irq_get_byname(dev->of_node, "legacy");
+	if (irq < 0)
+		return irq;
+
+	ret = rockchip_pcie_init_irq_domain(rockchip);
+	if (ret < 0) {
+		dev_err(dev, "failed to init irq domain\n");
+		return ret;
+	}
+
+	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
+					 rockchip);
+
 	pp = &rockchip->pci.pp;
 	pp->ops = &rockchip_pcie_host_ops;
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
