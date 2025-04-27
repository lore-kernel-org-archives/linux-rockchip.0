Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A535C369D3
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 12:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBYjg0UB9hyvkW6ptBzaj8hpQ+0Z848kAic2MbUAFew=; b=suknbpUudjmls3
	NzErN1VhFY+h4GhZf9ZXos9Qypxk9bOyc+x9pJ2uF9KwJdEIPiNsMqWcq3db/mRi45i3o2OCgvcER
	OtxCExiAPAquM3uMTkL9KIE8D+ktRHgAZxA2CCGh0vUJ8ZPH66meoo9qw4t4WKwVqoht6EY99cHZl
	SP2qsooBJO08n6AVpSxECCW7D/EaNrdYte6q3FaornJ0fiXnEkU0Gg7BoPhD8vs6oTWSfD6q25VQz
	Xq75AqfgGfFRHQssAdYoDYdJarQ1lh7szmH+g5uML9jAmvwYIbVTu/qekGHKvQEup2jAr0BZ3voVu
	A+D93SogJj8Xrp6mwZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u91Y1-00000003YJA-1YIq;
	Sun, 27 Apr 2025 12:55:53 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u91W2-00000003Xsw-0u2s;
	Sun, 27 Apr 2025 12:53:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=yGhe3
	4wuhzgGL+OCD/PQ8ajhqt0tg2mg9e8bu/roRYU=; b=GkMAxQVtHGRMHJD5rzImI
	v594EHwrXtKb+3VF/IJ4GQiPbHTccVjQ5GsuMBHGFqA27cKN6KtARQcNTcMOFKWC
	fE6tHoMunKcKHlFWNM89zfUvlieVY6TOV2twWrhEUuyneEZ0a2XXOaOvBc8Kumil
	SiB8vqIZbhiu66hnAZr6rM=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wD3LwC9KA5oNqx8Cw--.63816S5;
	Sun, 27 Apr 2025 20:53:25 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de
Cc: manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	jingoohan1@gmail.com,
	shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v4 3/3] PCI: dw-rockchip: Unify link status checks with FIELD_GET
Date: Sun, 27 Apr 2025 20:53:16 +0800
Message-Id: <20250427125316.99627-4-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250427125316.99627-1-18255117159@163.com>
References: <20250427125316.99627-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3LwC9KA5oNqx8Cw--.63816S5
X-Coremail-Antispam: 1Uf129KBjvJXoWxCF15Jw4kKw17AF4xtw4fZrb_yoW5tFy7pa
	98Aa4qkr48Gw429F1kCFZ8ZFWrtFnxuayUCrn7K3WxW3ZIyw1UG3WUWr9xtr4xJr4rCFy3
	Cw48Ja4xXr43ZwUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UOL0rUUUUU=
X-Originating-IP: [222.71.101.198]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWxs8o2gOJHx0gwABsX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_055350_612912_C547FA06 
X-CRM114-Status: GOOD (  10.80  )
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

Link-up detection manually checked PCIE_LINKUP bits across RC/EP modes,
leading to code duplication. Centralize the logic using FIELD_GET. This
removes redundancy and abstracts hardware-specific bit masking, ensuring
consistent link state handling.

Signed-off-by: Hans Zhang <18255117159@163.com>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 21 +++++++------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index a778f4f61595..bfc47dab32e5 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -8,6 +8,7 @@
  * Author: Simon Xue <xxm@rock-chips.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
 #include <linux/irqchip/chained_irq.h>
@@ -60,9 +61,8 @@
 
 /* LTSSM Status Register */
 #define PCIE_CLIENT_LTSSM_STATUS	0x300
-#define  PCIE_SMLH_LINKUP		BIT(16)
-#define  PCIE_RDLH_LINKUP		BIT(17)
-#define  PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
+#define  PCIE_LINKUP			0x3
+#define  PCIE_LINKUP_MASK		GENMASK(17, 16)
 #define  PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
 
 struct rockchip_pcie {
@@ -188,10 +188,7 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
 	u32 val = rockchip_pcie_get_ltssm(rockchip);
 
-	if ((val & PCIE_LINKUP) == PCIE_LINKUP)
-		return 1;
-
-	return 0;
+	return FIELD_GET(PCIE_LINKUP_MASK, val) == PCIE_LINKUP;
 }
 
 static void rockchip_pcie_enable_l0s(struct dw_pcie *pci)
@@ -450,7 +447,7 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
 	struct dw_pcie *pci = &rockchip->pci;
 	struct dw_pcie_rp *pp = &pci->pp;
 	struct device *dev = pci->dev;
-	u32 reg, val;
+	u32 reg;
 
 	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
 	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
@@ -459,8 +456,7 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
 	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm(rockchip));
 
 	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
-		val = rockchip_pcie_get_ltssm(rockchip);
-		if ((val & PCIE_LINKUP) == PCIE_LINKUP) {
+		if (rockchip_pcie_link_up(pci)) {
 			dev_dbg(dev, "Received Link up event. Starting enumeration!\n");
 			/* Rescan the bus to enumerate endpoint devices */
 			pci_lock_rescan_remove();
@@ -477,7 +473,7 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
 	struct rockchip_pcie *rockchip = arg;
 	struct dw_pcie *pci = &rockchip->pci;
 	struct device *dev = pci->dev;
-	u32 reg, val;
+	u32 reg;
 
 	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
 	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
@@ -491,8 +487,7 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
 	}
 
 	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
-		val = rockchip_pcie_get_ltssm(rockchip);
-		if ((val & PCIE_LINKUP) == PCIE_LINKUP) {
+		if (rockchip_pcie_link_up(pci)) {
 			dev_dbg(dev, "link up\n");
 			dw_pcie_ep_linkup(&pci->ep);
 		}
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
