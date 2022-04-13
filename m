Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C078C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 13:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOSnToSZwrYBVEPPgPijJO+bYN/pdD6dXyXFW5OJrys=; b=OVVVMaeepGT8/f
	LkbahdkbbHXF82QTPTP6CnN1BnJWA4ZEGM+NFhgqYAGz31sCIVqBE6dNUXPZzG7kUZZvCrW67XvJH
	iRnVt1su03/+HTpgQTPDhrp0SAhV2ssnR177+fXYAnpDIP+D8ofNLei7kynP9rVJui6mwSWSX3gXg
	w9Jm+vRboJxzl496TL6IfhtDjrgDUCKeXK2aMQQtkCFTXdaQnkhVHKrGnntDcaNUz8irW18KLG3Tq
	36B5x8x8JYxy4dm6w2xvhzcTCGpTm/8XXe+Qtem6TZe8JFMnseapZ9B8Nv4KTW/gsB1pyS/bcfbBe
	lQsBGgADiPYREkcHnPBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedCi-001Cdd-5Q; Wed, 13 Apr 2022 13:38:40 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedCB-001CL3-KH; Wed, 13 Apr 2022 13:38:09 +0000
Received: by mail-qv1-xf29.google.com with SMTP id a10so1587911qvm.8;
 Wed, 13 Apr 2022 06:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BG2CzCPsxTacBK2Hm53pzASbB7sL/kn/FNomuFfzr4s=;
 b=GCUNnePEjrXP7EsqiO7hJ0SYR2SMrq2z9jcgA//gFjxr0v5s2jE2o68g+9Cc0LRM6I
 tIXhsLHNJilFnPkNTrNY5zNjpA/Y22cgvAykzHKJKux2R6kE9ozK2xHjnizUW+bbQ0aN
 aaXOl4XM2Aq5hfWHiq6F06A2dbZURvoZt3lT/0U62thvkuTUz6k1l+M1uXTlctCHEoE/
 bsXsuYSa9AMtCEIvZeP9tXC9MK/a2FINyFvfBmbYciT25058gwhqbdF6v9QHPTT35bf1
 74IElBS/My/TUTCp3aC3wuKki1dBC1qR9XozrYvLTKbZ3Ukry6/qUd5yDjp/02+0eYHk
 3u7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BG2CzCPsxTacBK2Hm53pzASbB7sL/kn/FNomuFfzr4s=;
 b=GC3DYxdIY7HDC907qbc4E64VzYIEmVkv1VZ9abyfW0U/03XJ+nOPiHirQT9f+M0vrQ
 z1J8PdwaQh6/DMF+0nxLPMV+g17CAsgIPrZj1z+diGHRKXaUqyBEabEuoLEjH9cncpAu
 Qat0LBS81bbYPUniw+X493AEk76rQ2drbQPA9uPoj4wbDfQ0jb9Yn9npEJoTf0uVgIG9
 qnWOqckPxODJEJM7OkH/MjQ8viz4z3QlmlzFTkElpyamEWai6LocJJ1fjZZvbj2VCuGF
 prYBgUB9QR9mceonE/cqILKrKaEIDhPWa+ykUjvuAg/YWp7fxFA3W5Sb6r87OIglR2VZ
 y47Q==
X-Gm-Message-State: AOAM533V5QuILEoapcSi1kMrPgPYedFM9VC8mnGbwOEaN41ZUOh2iVEA
 HUX/Bh+DruGqvaiwlwc4uXs=
X-Google-Smtp-Source: ABdhPJxtrkeHLH5/aBPflSAvm/9GsIMSUWd9xlXbmNLpZwXqAxEI9l7arktBHaS14DMzxpoxQR9X7g==
X-Received: by 2002:a0c:c692:0:b0:443:f22e:520 with SMTP id
 d18-20020a0cc692000000b00443f22e0520mr33358025qvj.96.1649857080634; 
 Wed, 13 Apr 2022 06:38:00 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 143-20020a370795000000b0069c59e1b8eesm790584qkh.10.2022.04.13.06.38.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 06:38:00 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] PCI: dwc: rockchip: add legacy interrupt support
Date: Wed, 13 Apr 2022 09:37:29 -0400
Message-Id: <20220413133731.242870-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413133731.242870-1-pgwipeout@gmail.com>
References: <20220413133731.242870-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_063807_692356_D97C4B83 
X-CRM114-Status: GOOD (  19.90  )
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
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 123 +++++++++++++++++-
 1 file changed, 121 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c9b341e55cbb..a8b1dc03d3cc 100644
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
@@ -65,6 +73,105 @@ static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
 	writel_relaxed(val, rockchip->apb_base + reg);
 }
 
+static void rockchip_pcie_legacy_int_handler(struct irq_desc *desc)
+{
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct rockchip_pcie *rockchip = irq_desc_get_handler_data(desc);
+	struct device *dev = rockchip->pci.dev;
+	u32 reg;
+	u32 hwirq;
+	u32 virq;
+
+	chained_irq_enter(chip, desc);
+
+	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_LEGACY);
+
+	while (reg) {
+		hwirq = ffs(reg) - 1;
+		reg &= ~BIT(hwirq);
+
+		virq = irq_find_mapping(rockchip->irq_domain, hwirq);
+		if (virq)
+			generic_handle_irq(virq);
+		else
+			dev_err(dev, "unexpected IRQ, INT%d\n", hwirq);
+	}
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
+	.flags			= IRQCHIP_SKIP_SET_WAKE | IRQCHIP_MASK_ON_SUSPEND,
+	.irq_mask		= rockchip_intx_mask,
+	.irq_unmask		= rockchip_intx_unmask,
+	.name			= "INTx",
+};
+
+static int rockchip_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
+				  irq_hw_number_t hwirq)
+{
+	irq_set_chip_and_handler(irq, &rockchip_intx_irq_chip, handle_simple_irq);
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
@@ -111,7 +218,19 @@ static int rockchip_pcie_host_init(struct pcie_port *pp)
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
+	irq_set_chained_handler_and_data(irq, rockchip_pcie_legacy_int_handler, rockchip);
+
+	ret = rockchip_pcie_init_irq_domain(rockchip);
+	if (ret < 0)
+		dev_err(dev, "failed to init irq domain\n");
 
 	/* LTSSM enable control mode */
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
