Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF979C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 09:18:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A9282222F
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 09:18:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A9282222F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SEp4P39qNiWD7WT3gLeVVWP+5NLp2Dc/ORgpf6tSQ+Q=; b=haLrqPiA9a6zbn/Lq1pjzvp2HP
	qALD1FsGhG19lbnsabyeYqp6J1xlpHc1MTdKgXW3FA7MtCAzTgO/wUJtmJS3KfakkTTqXBZtwJkly
	ym9TC9p236H9GoWhBlsR62zuqu9EutfEph2/gPuq+IWw3ha6CrMRRRUkQLkTYAJ9fwHbZB+WoCyrL
	G/fY4vovCEx9xvvypkJkzKC6xysvmyu7n81aL3ykxncFqaWl9WwMo0XcviIPB/8Q7ay/y8T++SZYh
	0cHyP32c9uA0gg/vukL9uDBRUYzVt5+uoCCqb/Thr2aNla/VtRMz0LU1sXLRM+bGFnTDuOT8MdCR6
	bhSLrHAg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Qff-0004v0-PU; Mon, 18 Jan 2021 09:18:00 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Qfc-0004tp-17
 for linux-rockchip@lists.infradead.org; Mon, 18 Jan 2021 09:17:57 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0FA1FEFDEF;
 Mon, 18 Jan 2021 17:17:45 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13518T140326291363584S1610961461018109_; 
 Mon, 18 Jan 2021 17:17:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4fd38a682f9815058e1bb69cc85248e2>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: bhelgaas@google.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Simon Xue <xxm@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 1/3] PCI: dwc: Skip allocating own MSI domain if using
 external MSI domain
Date: Mon, 18 Jan 2021 17:17:37 +0800
Message-Id: <20210118091739.247040-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_041756_321014_84F4FFAF 
X-CRM114-Status: GOOD (  16.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Shawn Lin <shawn.lin@rock-chips.com>

On some platform, external MSI domain is using instead of the one
created by designware driver. For instance, if using GIC-V3-ITS
as a MSI domain, we only need set msi-map in the devicetree but
never need any bit in the designware driver to handle MSI stuff.
So skip allocating its own MSI domain for that case.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 10 +++++++++-
 drivers/pci/controller/dwc/pcie-designware.h      |  1 +
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 8a84c005f32b..d9d93cab970a 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -235,6 +235,10 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct fwnode_handle *fwnode = of_node_to_fwnode(pci->dev->of_node);
 
+	/* Rely on the external MSI domain */
+	if (pp->msi_ext)
+		return 0;
+
 	pp->irq_domain = irq_domain_create_linear(fwnode, pp->num_vectors,
 					       &dw_pcie_msi_domain_ops, pp);
 	if (!pp->irq_domain) {
@@ -258,6 +262,9 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
 
 static void dw_pcie_free_msi(struct pcie_port *pp)
 {
+	if (pp->msi_ext)
+		return;
+
 	if (pp->msi_irq) {
 		irq_set_chained_handler(pp->msi_irq, NULL);
 		irq_set_handler_data(pp->msi_irq, NULL);
@@ -359,7 +366,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
 	if (pci->link_gen < 1)
 		pci->link_gen = of_pci_get_max_link_speed(np);
 
-	if (pci_msi_enabled()) {
+	if (pci_msi_enabled() &&
+	    !pp->msi_ext) {
 		pp->has_msi_ctrl = !(pp->ops->msi_host_init ||
 				     of_property_read_bool(np, "msi-parent") ||
 				     of_property_read_bool(np, "msi-map"));
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 0207840756c4..cf3b0664302a 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -195,6 +195,7 @@ struct pcie_port {
 	u32			irq_mask[MAX_MSI_CTRLS];
 	struct pci_host_bridge  *bridge;
 	raw_spinlock_t		lock;
+	int			msi_ext;
 	DECLARE_BITMAP(msi_irq_in_use, MAX_MSI_IRQS);
 };
 
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
