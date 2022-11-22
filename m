Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BF0AC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 01:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xU0b9t3+6fA/Sr1UXZOf5vsgnFrKMlkfkIE4DHEvRuM=; b=cFLI0eL3nC0+L5
	TQm1AozxguFloVF04LRk17AsEevsoilUBL/vPhee7H7kh72PWvqXmZb6hY6TCiMoZ/68kPTmW4+4f
	TbL/Hd3vJz/VGni/fO9pZj93xYKMDt7uVcBZPYTLiIm1ULQEwtoIQ9k9SKQHR80vMlsOAGVbjtXZD
	RjNTQ7xQ/rryWlQ4FiZdVlUBpOwJZmXSFUL+1Qc522ZDXTsfuIYywKWZIXSscP72ZEUZWsi9ZjcVY
	RPFz4jK/IdfdePpLJ07hYqIFo0uL3R9xOis8T+IJBmlAe1zTG4d1xT7aw5O29dEmZb4giXAmVSKL7
	wC/d3L8P7aTR2kVi0PKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxHuz-001rML-B7; Tue, 22 Nov 2022 01:17:45 +0000
Received: from mail-m11880.qiye.163.com ([115.236.118.80])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxHux-001rKC-Hk
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 01:17:44 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11880.qiye.163.com (Hmail) with ESMTPA id AED282015C;
	Tue, 22 Nov 2022 09:17:39 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] PCI: dwc: Round up num_ctrls if num_vectors is less than MAX_MSI_IRQS_PER_CTRL
Date: Tue, 22 Nov 2022 09:17:34 +0800
Message-Id: <1669079854-225073-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHk5PVkkdGh1KSEJIQhkaHlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Myo6Cjo6AT0oKCgpA0pKVigU
	NC4KFD5VSlVKTU1CS0xCQ01LT0pMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlMTUM3Bg++
X-HM-Tid: 0a849ce982a02eb6kusnaed282015c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_171743_749598_82C9F06A 
X-CRM114-Status: UNSURE (   8.57  )
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

Changes in v2:
- set num_ctrls to 1 if it's less than one

 drivers/pci/controller/dwc/pcie-designware-host.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 39f3b37..5c2229f 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -62,6 +62,8 @@ irqreturn_t dw_handle_msi_irq(struct dw_pcie_rp *pp)
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 
 	num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
+	if (num_ctrls < 1)
+		num_ctrls = 1
 
 	for (i = 0; i < num_ctrls; i++) {
 		status = dw_pcie_readl_dbi(pci, PCIE_MSI_INTR0_STATUS +
@@ -343,6 +345,8 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
 	if (!pp->num_vectors)
 		pp->num_vectors = MSI_DEF_NUM_VECTORS;
 	num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
+	if (num_ctrls < 1)
+		num_ctrls = 1
 
 	if (!pp->msi_irq[0]) {
 		pp->msi_irq[0] = platform_get_irq_byname_optional(pdev, "msi");
@@ -707,6 +711,8 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
 
 	if (pp->has_msi_ctrl) {
 		num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
+		if (num_ctrls < 1)
+			num_ctrls = 1
 
 		/* Initialize IRQ Status array */
 		for (ctrl = 0; ctrl < num_ctrls; ctrl++) {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
