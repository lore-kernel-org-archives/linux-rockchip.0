Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2DB4C982FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 02:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3jV0tkYxUdfrIioRoZ4722p1KkukZhBUOs0z68/fd0=; b=YNwCDhswk9HMyx
	XctqSacMCWaXguEDTXhtOokx3ov+oNJD+nQxZLJqXxwzGIVI6fFbpR19/uCAG7YFTxtFbMHBYXZu9
	MkJDCX/Oe/mPvt6H3I4hK4tz/hr8vsChhUrHVps6/34v8YJ943q+gJrhjIThDRhALJpYuX9S755YH
	SaVetsePezHNqA/vSgSuFzCYRrnKFzrmLYIKec0iLQxvCv7Bghd6VscOHEk1HbdoOQYSidW9AP0Jd
	JNOseaBqoJFJeHYSl553BfRjLhrk7ii005gYs1H9bywcdASrcUXVW26zrbuusYCEpt7Wg6wrEXgGk
	L/QZObefMiJko9W0jxEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qSg-000000040yR-21Ir;
	Tue, 22 Sep 2026 02:42:26 +0000
Received: from mail-m49202.qiye.163.com ([45.254.49.202])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qSe-000000040xm-1Fq5
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 02:42:25 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ea70febf;
	Tue, 22 Sep 2026 10:37:19 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 2/3] PCI: dw-rockchip: Make the INTx irq setup devm-managed
Date: Tue, 22 Sep 2026 10:37:01 +0800
Message-Id: <1790044622-164744-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
References: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0c6f991d403a4kunm27853d20398d64
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUNDHlYeGB5KSElOTE
	9CHhpWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IgbVsmwxm695FO79qw/I6WhIhbgzrFDmZc3HoPMoFLDc6ImiQIGto+yqJXp1TreML/zUmqi7laFmLMjHEyLv1kux58OiqNmgZmdZu7pAoxdQ5012ieGk9MA4R0MzK2Id4JlEBucJ9rpq2UVNcvbgVI8MMLjOjG15yq9+N/JSuB0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=pO8jM+rAflXu5d0KB14tn/7WI+8LjbC27+2iwgGQUes=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194224_534198_3451B9EB 
X-CRM114-Status: GOOD (  23.98  )
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

The irq domain and the chained handler set up by the previous commit
are resources owned by the device, but nothing releases them if probing
ever fails after they are set up, and they are not tied to the device
lifetime in any other way either.

Tie their lifetime to the device with devres: create the irq domain
with devm_irq_domain_instantiate() and uninstall the chained handler
through the rockchip_pcie_intx_chained_release() devres action. The
driver is builtin and cannot be unbound (suppress_bind_attrs), so probe
failure is the only path that ever needs this cleanup, and devres takes
care of it without sprinkling it over every error path.

Since the irq setup is the last step of rockchip_pcie_configure_rc(),
the only failure point left after the chained handler is installed is
devm_add_action_or_reset() itself, whose failure mode runs the action,
so the handler can never run against the devm-freed rockchip structure.
devres also unwinds in reverse registration order, so the handler is
always uninstalled before the domain is removed. There is no devm API
for chained handlers, hence the small devres action wrapper.

While at it, drop the now unused rockchip variable from
rockchip_pcie_host_init().

Suggested-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
This patch didn't find a suitable fix tag as it fixes an issue along with
patch 1/3, then patch 3/3 depends on it. So it might go with the whole series
into a fix branch.

Changes in v3: None
Changes in v2: None

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 46 ++++++++++++++++++++-------
 1 file changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 8788a10..f395a66 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -114,6 +114,7 @@ struct rockchip_pcie {
 	struct reset_control *rst;
 	struct gpio_desc *rst_gpio;
 	struct irq_domain *irq_domain;
+	int intx_irq;
 	const struct rockchip_pcie_of_data *data;
 	bool supports_clkreq;
 	struct delayed_work trace_work;
@@ -188,9 +189,16 @@ static const struct irq_domain_ops intx_domain_ops = {
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
@@ -199,12 +207,17 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
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
@@ -731,18 +744,27 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 	 * which is also re-run by .reset_root_port(), so that the INTx irq
 	 * domain is only created once, at probe time.
 	 */
-	irq = of_irq_get_byname(dev->of_node, "legacy");
-	if (irq < 0)
-		return irq;
+	rockchip->intx_irq = of_irq_get_byname(dev->of_node, "legacy");
+	if (rockchip->intx_irq < 0)
+		return rockchip->intx_irq;
 
-	ret = rockchip_pcie_init_irq_domain(rockchip);
+	ret = rockchip_pcie_init_irq_domain(dev, rockchip);
 	if (ret < 0) {
 		dev_err(dev, "failed to init irq domain\n");
 		return ret;
 	}
 
-	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
-					 rockchip);
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
 
 	/* unmask hot reset/link-down reset */
 	val = FIELD_PREP_WM16(PCIE_LINK_REQ_RST_NOT_INT, 0);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
