Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7811C79F81
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 01:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFZKeI1fGk8xvP4vQEZjowsxLLq/r0Kdbs5KsZtNrso=; b=Hic8bq7Qw+5aJc
	2V/8dGaizip42wEcdv1VH6bVHJdDFdRVkKJAKvWWjxkfzB/WsyQJ6rMjqa6OhJOTntSbRqCUWWYDF
	sG49F4bZnUU2rhkT5yY/qvfJ7DgVDOAPDocyqnjzxtoUcqQ8ZQ5BbTI8PrZ+vDCz8H1OqptFVAOtL
	iqJ0lyAKCosGzyeBjgGVyhtJP35NT3x95QNv8qFhg1Sefd8WDHM43bBJqEcS6bj4kgDaugiM/tQvR
	+ItGGjoY1BEoijlfhwIfT5k1F3o0FRlwQ4Cxdh5CSoujcENbbJJwaPU/Fa74J44xVLFgnmbhMJbtQ
	Mejn13knx55ze5SMn3Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2IZr-00000000q3B-1woF;
	Fri, 04 Sep 2026 01:18:47 +0000
Received: from mail-m160236528.xmail.ntesmail.com ([160.236.52.8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2IZn-00000000q1k-1c18
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 01:18:45 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c7b37546;
	Fri, 4 Sep 2026 09:18:38 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: [PATCH v2 1/2] PCI: dw-rockchip: Move the INTx irq setup to probe and make it devm-managed
Date: Fri,  4 Sep 2026 09:18:28 +0800
Message-Id: <1788484709-139123-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1788484709-139123-1-git-send-email-shawn.lin@rock-chips.com>
References: <1788484709-139123-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa069ff0ede03a4kunm9a952c5910a942
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUlCTVZOTEtKGk5KGE
	oYSx1WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSUJDQ0xVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=OZgrY2ZOn8vQYtx9YcrdEAmcxYu92AOyCmq0g5Zt9kdApTdQDu1qVnM2UfYeLGc+wBWCypxR09zsNcc0KSv7wLHPF5yZzUG2l66SR2ylcb8KU00XI+Wl0gbN9UDWGhboMeoD/Qleyj4Tj3Rf6sCynsEf91ZaPUVC0q2mLIlumN8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1VF/edNjHzZ5H3ZaP9BRjhpxcC2sS8cJu9ZT9o+c8Gs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_181844_047211_511BE637 
X-CRM114-Status: GOOD (  25.44  )
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
and use for link down"), .reset_root_port() re-runs the host ops
.init() callback to reprogram the Root Complex after a controller
reset. That works for the register programming, but .init() is not
re-entrant: it also creates the INTx irq domain and installs the
chained INTx handler. Every root port reset therefore ends up with a
second irq domain registered for the same fwnode: the previous one is
leaked, as it is never removed, and worse, the INTx virqs of the
downstream PCI devices were allocated in the previous irq domain and
are never re-mapped, while the chained handler now looks up virqs in
the new, empty domain. After a link down recovery, INTx interrupts
are silently lost.

Fix it by moving the of_irq_get_byname() lookup, the INTx irq domain
creation and the chained handler installation out of .init() and into
rockchip_pcie_configure_rc(), right after dw_pcie_host_init(). This
mirrors how the qcom driver requests its global IRQ, and leaves
.init() with nothing but idempotent register programming, so both
.reset_root_port() and dw_pcie_resume_noirq() can safely re-run it.
Re-running of_irq_get_byname() on every resume is also gone.

With the irq setup now living in probe, tie its lifetime to the device
with devres: create the irq domain with devm_irq_domain_instantiate()
and uninstall the chained handler through the
rockchip_pcie_intx_chained_release() devres action. The driver is
builtin and cannot be unbound (suppress_bind_attrs), so probe failure
is the only path that ever needs this cleanup, and devres takes care
of it without sprinkling it over every error path. Since the irq setup
is the last step of rockchip_pcie_configure_rc(), the only failure
point left after the chained handler is installed is
devm_add_action_or_reset() itself, whose failure mode runs the action,
so the handler can never run against the devm-freed rockchip
structure. devres also unwinds in reverse registration order, so the
handler is always uninstalled before the domain is removed. There is
no devm API for chained handlers, hence the small devres action
wrapper.

Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
Suggested-by: Niklas Cassel <cassel@kernel.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

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

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 65 +++++++++++++++++++--------
 1 file changed, 46 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index af26a07..ecf0d7e 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -113,6 +113,7 @@ struct rockchip_pcie {
 	struct reset_control *rst;
 	struct gpio_desc *rst_gpio;
 	struct irq_domain *irq_domain;
+	int intx_irq;
 	const struct rockchip_pcie_of_data *data;
 	bool supports_clkreq;
 	struct delayed_work trace_work;
@@ -187,9 +188,16 @@ static const struct irq_domain_ops intx_domain_ops = {
 	.map = rockchip_pcie_intx_map,
 };
 
-static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
+static void rockchip_pcie_intx_chained_release(void *data)
+{
+	struct rockchip_pcie *rockchip = data;
+
+	irq_set_chained_handler_and_data(rockchip->intx_irq, NULL, NULL);
+}
+
+static int rockchip_pcie_init_irq_domain(struct device *dev,
+					 struct rockchip_pcie *rockchip)
 {
-	struct device *dev = rockchip->pci.dev;
 	struct device_node *intc;
 
 	intc = of_get_child_by_name(dev->of_node, "legacy-interrupt-controller");
@@ -198,12 +206,17 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
 		return -EINVAL;
 	}
 
-	rockchip->irq_domain = irq_domain_create_linear(of_fwnode_handle(intc), PCI_NUM_INTX,
-							&intx_domain_ops, rockchip);
+	rockchip->irq_domain = devm_irq_domain_instantiate(dev,
+			&(struct irq_domain_info){
+				.fwnode = of_fwnode_handle(intc),
+				.size = PCI_NUM_INTX,
+				.ops = &intx_domain_ops,
+				.host_data = rockchip,
+			});
 	of_node_put(intc);
-	if (!rockchip->irq_domain) {
+	if (IS_ERR(rockchip->irq_domain)) {
 		dev_err(dev, "failed to get a INTx IRQ domain\n");
-		return -EINVAL;
+		return PTR_ERR(rockchip->irq_domain);
 	}
 
 	return 0;
@@ -422,22 +435,9 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
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
@@ -739,6 +739,33 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 		return ret;
 	}
 
+	/*
+	 * This is done here instead of in the host ops .init() callback,
+	 * which is also re-run by .reset_root_port(), so that the INTx irq
+	 * domain is only created once, at probe time.
+	 */
+	rockchip->intx_irq = of_irq_get_byname(dev->of_node, "legacy");
+	if (rockchip->intx_irq < 0)
+		return rockchip->intx_irq;
+
+	ret = rockchip_pcie_init_irq_domain(dev, rockchip);
+	if (ret < 0) {
+		dev_err(dev, "failed to init irq domain\n");
+		return ret;
+	}
+
+	irq_set_chained_handler_and_data(rockchip->intx_irq,
+					 rockchip_pcie_intx_handler, rockchip);
+
+	/*
+	 * Uninstall the chained handler on probe failure, so that it can
+	 * never run against the devm-freed rockchip structure.
+	 */
+	ret = devm_add_action_or_reset(dev, rockchip_pcie_intx_chained_release,
+				       rockchip);
+	if (ret)
+		return ret;
+
 	/* unmask hot reset/link-down reset */
 	val = FIELD_PREP_WM16(PCIE_LINK_REQ_RST_NOT_INT, 0);
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
