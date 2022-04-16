Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38B48C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 10:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9MtqCulyYQbBiTqklKlQXPINRqSuJMpQZf/2za1ctM=; b=yb+Enz8z594ZLl
	64R3+hVB9sl8F88wIpZgEzfyO17Zql3oiNNwNCi94e+Qx5a5UGHXzBBAnXILTqjOYql9hU7iyVdAK
	uQy2XIyFEINA48Gw1gIQBQheF1tVnPXCcsqT7DsyLZ0+lFtyPjPG3xgkt277CuLvjMqrQgVYVKogN
	gQXwb+3vNQkJNDGXi8KxSxPckUbRUJzojNGuK8/5uMxsIAqD6QAnoLueNMmKQhqX4yVNzxO+H2A6p
	mCu8m/z3p2fUmtDYXKxuKSTRheojYNa56pVFY+/eXdiOkTOLSwL8v9ixzwgBPd37kZfcDax/kZMOC
	Xe+/Olx5a7QmyVSWyRPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nffJG-00ChR2-3l; Sat, 16 Apr 2022 10:05:42 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nffIj-00Ch8x-Fz; Sat, 16 Apr 2022 10:05:11 +0000
Received: by mail-qt1-x831.google.com with SMTP id s6so7276243qta.1;
 Sat, 16 Apr 2022 03:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2wd9sVHC/mmpYlhb5g3G/iw92sjMjBm/QMls3NoS/gY=;
 b=i5FeipM4sWrr6NtZ/b2zX7qMkUs+Kfq48OJmZQzZG5S9kuYCxdtqOG/qVCumCRe7Bl
 5vTcrODFshGMIXWJhoI/AYTijI8l6e3dBovhxwJ9Ycen1aSB8BM2eL8RcclCufkvQx4g
 2rZl2jZczU/yEKVUUeXthzwXLLFn0+PacRFBNYvxtN5yRLpbp7TCr+RNkycyTtR06tco
 Mxtv4kC8v1+PXYk7mNTyxzdW1hjH4oyFhftv3xtJ+bgL53pkCNQn6JSs8EGfgjxkpBHQ
 3sISRoSrAGuoluIkP63Zix2tllOiISp41iQg6R+IBrZf5QDcseHqsKrMUZjGAa+0B5qL
 YUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2wd9sVHC/mmpYlhb5g3G/iw92sjMjBm/QMls3NoS/gY=;
 b=SfR+tCTfRZMbBUNR0y8hEUF/VpypcWNZkBKvo6+flwJ0sZuEmWGVfM2i/Ja9iIUST/
 FRSdpmIggf0nJnp2UM/JdQBE4ojqMdWPUpCPEYHFAj3KDVOhs2QCW+6yInKAT6ZMik2P
 buW9lJ30xm8dsNiwj9dNhdf3cewuwlSLsIiJpOL7of/xZ58hIraCLUGdRq8jbhRaXrGE
 YCR9T1cl0CPaipYV2e7gK6zR6bwTGWY4xdoVyGGagJgfDJrgGOZAlaWWrUHRF4dF+iHI
 yahfEEzpwlvA63RkCkqUZI7NnxMRX+VWWO72d7eCQGRUDo1pP7LzcMzcs/pJ1+t0Y0AV
 vu8A==
X-Gm-Message-State: AOAM531BKaKWF9+ijHbfnulFjB8fUZLjbfDtQnw5udStrD6r6k2eS5sr
 DwrowuQOHsqnSszhrC9kMdY=
X-Google-Smtp-Source: ABdhPJxP7QEQFXqYGIM8hzks2b3uw2um863ByXMW6kpMOOB9ZyiRV3uPlfoek+mRZVki8IuWTZvzpg==
X-Received: by 2002:a05:622a:110:b0:2e1:f084:d855 with SMTP id
 u16-20020a05622a011000b002e1f084d855mr1826999qtw.198.1650103506406; 
 Sat, 16 Apr 2022 03:05:06 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 n22-20020ac85b56000000b002f1d7a2867dsm4263188qtw.67.2022.04.16.03.05.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 03:05:06 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/4] PCI: dwc: rockchip: add legacy interrupt support
Date: Sat, 16 Apr 2022 06:05:00 -0400
Message-Id: <20220416100502.627289-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416100502.627289-1-pgwipeout@gmail.com>
References: <20220416100502.627289-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_030509_559239_A4121518 
X-CRM114-Status: GOOD (  19.52  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The legacy interrupts on the rk356x pcie controller are handled by a
single muxed interrupt. Add irq domain support to the pcie-dw-rockchip
driver to support the virtual domain.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
 1 file changed, 110 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c9b341e55cbb..863374604fb1 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -10,9 +10,12 @@
 
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/irqdomain.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_irq.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
@@ -36,10 +39,13 @@
 #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
 #define PCIE_L0S_ENTRY			0x11
 #define PCIE_CLIENT_GENERAL_CONTROL	0x0
+#define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
+#define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
 #define PCIE_CLIENT_GENERAL_DEBUG	0x104
-#define PCIE_CLIENT_HOT_RESET_CTRL      0x180
+#define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define PCIE_CLIENT_LTSSM_STATUS	0x300
-#define PCIE_LTSSM_ENABLE_ENHANCE       BIT(4)
+#define PCIE_LEGACY_INT_ENABLE		GENMASK(3, 0)
+#define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
 #define PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
 
 struct rockchip_pcie {
@@ -51,6 +57,8 @@ struct rockchip_pcie {
 	struct reset_control		*rst;
 	struct gpio_desc		*rst_gpio;
 	struct regulator                *vpcie3v3;
+	struct irq_domain		*irq_domain;
+	raw_spinlock_t			irq_lock;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
@@ -65,6 +73,94 @@ static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
 	writel_relaxed(val, rockchip->apb_base + reg);
 }
 
+static void rockchip_pcie_legacy_int_handler(struct irq_desc *desc)
+{
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct rockchip_pcie *rockchip = irq_desc_get_handler_data(desc);
+	unsigned long reg, hwirq;
+
+	chained_irq_enter(chip, desc);
+
+	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_LEGACY);
+
+	for_each_set_bit(hwirq, &reg, 8)
+		generic_handle_domain_irq(rockchip->irq_domain, hwirq);
+
+	chained_irq_exit(chip, desc);
+}
+
+static void rockchip_intx_mask(struct irq_data *data)
+{
+	struct rockchip_pcie *rockchip = irq_data_get_irq_chip_data(data);
+	unsigned long flags;
+	u32 val;
+
+	/* disable legacy interrupts */
+	raw_spin_lock_irqsave(&rockchip->irq_lock, flags);
+	val = HIWORD_UPDATE_BIT(PCIE_LEGACY_INT_ENABLE);
+	val |= PCIE_LEGACY_INT_ENABLE;
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_LEGACY);
+	raw_spin_unlock_irqrestore(&rockchip->irq_lock, flags);
+};
+
+static void rockchip_intx_unmask(struct irq_data *data)
+{
+	struct rockchip_pcie *rockchip = irq_data_get_irq_chip_data(data);
+	unsigned long flags;
+	u32 val;
+
+	/* enable legacy interrupts */
+	raw_spin_lock_irqsave(&rockchip->irq_lock, flags);
+	val = HIWORD_UPDATE_BIT(PCIE_LEGACY_INT_ENABLE);
+	val &= ~PCIE_LEGACY_INT_ENABLE;
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_LEGACY);
+	raw_spin_unlock_irqrestore(&rockchip->irq_lock, flags);
+};
+
+static struct irq_chip rockchip_intx_irq_chip = {
+	.name			= "INTx",
+	.irq_mask		= rockchip_intx_mask,
+	.irq_unmask		= rockchip_intx_unmask,
+	.flags			= IRQCHIP_SKIP_SET_WAKE | IRQCHIP_MASK_ON_SUSPEND,
+};
+
+static int rockchip_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
+				  irq_hw_number_t hwirq)
+{
+	irq_set_chip_and_handler(irq, &rockchip_intx_irq_chip, handle_level_irq);
+	irq_set_chip_data(irq, domain->host_data);
+
+	return 0;
+}
+
+static const struct irq_domain_ops intx_domain_ops = {
+	.map = rockchip_pcie_intx_map,
+};
+
+static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci.dev;
+	struct device_node *intc;
+
+	raw_spin_lock_init(&rockchip->irq_lock);
+
+	intc = of_get_child_by_name(dev->of_node, "legacy-interrupt-controller");
+	if (!intc) {
+		dev_err(dev, "missing child interrupt-controller node\n");
+		return -EINVAL;
+	}
+
+	rockchip->irq_domain = irq_domain_add_linear(intc, PCI_NUM_INTX,
+						    &intx_domain_ops, rockchip);
+	of_node_put(intc);
+	if (!rockchip->irq_domain) {
+		dev_err(dev, "failed to get a INTx IRQ domain\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
@@ -111,7 +207,19 @@ static int rockchip_pcie_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	struct device *dev = rockchip->pci.dev;
 	u32 val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	int irq, ret;
+
+	irq = of_irq_get_byname(dev->of_node, "legacy");
+	if (irq < 0)
+		return irq;
+
+	ret = rockchip_pcie_init_irq_domain(rockchip);
+	if (ret < 0)
+		dev_err(dev, "failed to init irq domain\n");
+
+	irq_set_chained_handler_and_data(irq, rockchip_pcie_legacy_int_handler, rockchip);
 
 	/* LTSSM enable control mode */
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
