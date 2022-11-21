Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6F10C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 07:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sGxXC7RY0p0ffIuIjEOUIxxbF1b82bqWCrKCX4mXjUU=; b=GDjmpEje6b3Gjf
	tEImmQ2nSW0w1BuPGVabeKOvMEO3qrnlFq6uJLzv8NDzqeMTSpRergvwHEFPdlKv8DeYNO0IPkgXT
	AfqIX+GtPA9MHPN1zYrxWtRnVVWG0jdha3v2MzUb6PszP1i3+iSYidCP7xRe72eGTVnOY+tHTITpD
	/EiLpDiYVYpiqkmRjOP64+8Py1ieDr5e9qcDDOxQS0Ngf2nHX1UQSDpyN1wECarZ2Fh9jkCmEazCU
	Zlee39fqRcCL9J+P9GHocO1JLnUYUFKZ9Wnl4bo8CwbObARsT2sJgFYa/2RYj9JDVxZaAAv8OV8ra
	5vMAAx7/IFGcvCcfrmWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox131-00ADCy-1m; Mon, 21 Nov 2022 07:16:55 +0000
Received: from mail-m11880.qiye.163.com ([115.236.118.80])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox12x-00AD9M-Jc
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 07:16:53 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11880.qiye.163.com (Hmail) with ESMTPA id 6C93A204BB;
	Mon, 21 Nov 2022 15:16:38 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] PCI: dwc: Round up num_ctrls if num_vectors is less than MAX_MSI_IRQS_PER_CTRL
Date: Mon, 21 Nov 2022 15:16:36 +0800
Message-Id: <1669014996-177686-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTR9KVkJITBkYTBpMTUoZTVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NSo6ERw6MD0ZEioOTAFRDjlI
	FzEwCyJVSlVKTU1CS0pPQkJCSUtKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlDTkI3Bg++
X-HM-Tid: 0a84990bce592eb6kusn6c93a204bb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221120_231651_826989_9B48989F 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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

Some SoCs may only support 1 RC with a few MSIs support that the total numver of MSIs is
less than MAX_MSI_IRQS_PER_CTRL. In this case, num_ctrls will be zero which fails setting
up MSI support. Fix it by rounding up num_ctrls to at least one.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-designware-host.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 39f3b37..2cba2a8 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -61,7 +61,7 @@ irqreturn_t dw_handle_msi_irq(struct dw_pcie_rp *pp)
 	irqreturn_t ret = IRQ_NONE;
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 
-	num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
+	num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
 
 	for (i = 0; i < num_ctrls; i++) {
 		status = dw_pcie_readl_dbi(pci, PCIE_MSI_INTR0_STATUS +
@@ -342,7 +342,7 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
 
 	if (!pp->num_vectors)
 		pp->num_vectors = MSI_DEF_NUM_VECTORS;
-	num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
+	num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
 
 	if (!pp->msi_irq[0]) {
 		pp->msi_irq[0] = platform_get_irq_byname_optional(pdev, "msi");
@@ -706,7 +706,7 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
 	dw_pcie_setup(pci);
 
 	if (pp->has_msi_ctrl) {
-		num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
+		num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
 
 		/* Initialize IRQ Status array */
 		for (ctrl = 0; ctrl < num_ctrls; ctrl++) {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
