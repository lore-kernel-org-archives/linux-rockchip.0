Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F47C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iTPQkCjFdcabupcO8aX5UP/wAv2Q6jkzU+dtEPrQIM=; b=u7S7GyvZgj4vBj
	Olz/aGX2ZHWKka4qzyhG2E3RGbyS+hezua+PKZfoA53nJNgEbWJvCSCMSJrO/WW491bD9328L4KGo
	SYoEx5XWwma/RwswwwS8oX5uyQiS7jB29c7KPx/nH5GN/y2zkYCqsbYVOMlycuomCYK21+qFZ1sH1
	GNc13OYkorU+lI4wG8CAXnvTsys1GRilpjg2wLMQKqnd10t+kYNtQxN0Rz2GYZyEHKHTSFYZAoKf1
	VTigB+QBoAHHFfFgzg3QkghFU7Zx5c8jKrfdhvIbecILfLKXJPk4wi8c3LeTh9pDVPA+QdmPV8x7O
	GZiqkltyrdZRGAG3GC0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neLif-00FVOI-Cc; Tue, 12 Apr 2022 18:58:29 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neLiG-00FV8F-2v; Tue, 12 Apr 2022 18:58:05 +0000
Received: by mail-qk1-x72c.google.com with SMTP id e10so12889986qka.6;
 Tue, 12 Apr 2022 11:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qOnwkaEGKViV2QJ1JXpZ5IddTHppSw1fGZxu+INfSyI=;
 b=TZmjNKf/0qJBTGgkZltGqOBKg5S0YR+tK17WaFiOwq6nHwdCxAaBYAGfGov++BIdJn
 fWeRCJmWYcXvlvE+6J4czrRnilTz5OV5S6lxmqRtjySXZ/O2LZCudqUKn6upDcU0c/7F
 /lKufz63s6XHtcTwDE8+xwa+i/MMFv3x4eitEl3bFgwOR+A4nCowudePUNSs4aBjyta6
 7GfbSoNTvvYSATbrmd9mpQX2B0nkjzQUBuZJ/D0KAYOvfi+yT/v9WL1Ti8aJCzPQP69v
 4s3SnV3HRdFPvND6TE8cQx3HuT9zZ90GM4cxgTTuf0v13lgxlClFLcU+k6abuR3sP2eW
 llmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qOnwkaEGKViV2QJ1JXpZ5IddTHppSw1fGZxu+INfSyI=;
 b=eh+B9YHS+8iY4YdTzw8/VU0UW4hcckNo5AQwqgULxzLkgE7KYkYYJSSEIXrikGFAb+
 LMZVsD9s31RWDEFWu8BsfGSEAJMybRA8SJ4E/C9QugPjZ39wcQQTPITTc6SNYZ+K4kw2
 P6ajf8ICyJB4sOhMuJmOH4klSrm0uNjuSR93OYqHBWxg0QC9p2F+KpcXujxSS3/y+pbX
 sBolDk/BJCAcwL20Mff8DdJ7rGiFsWtpYQiLWuqeaBlsjt+zT4gFDifXKk9xXko12lxD
 z6NNBZQRDWfxyQihsFzkn9sqmvibQgRhpBjKarIzxTUK16KXdaPl/6A0Enxd5T8iKeX4
 hjWQ==
X-Gm-Message-State: AOAM532u3j+pGo/R1gEfqe+HGVEWEkt9/KQAfQoFQVgLJe84rf1GeIOL
 y/3XTalZVWIgudE6MSvf0Go=
X-Google-Smtp-Source: ABdhPJytyARNf+NUo54WSUHWnNsaIESDGWaTpic2NDMrdjhU2sXrVY+MmLuxf5en5VxeRtoTpzuqjw==
X-Received: by 2002:a37:557:0:b0:69c:2490:cd06 with SMTP id
 84-20020a370557000000b0069c2490cd06mr4226982qkf.724.1649789881740; 
 Tue, 12 Apr 2022 11:58:01 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a05622a05d200b002f07ed88a54sm1820610qtb.46.2022.04.12.11.58.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 11:58:01 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/4] PCI: dwc: rockchip: add legacy interrupt support
Date: Tue, 12 Apr 2022 14:57:49 -0400
Message-Id: <20220412185751.124783-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220412185751.124783-1-pgwipeout@gmail.com>
References: <20220412185751.124783-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_115804_165489_644C3FA7 
X-CRM114-Status: GOOD (  19.39  )
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
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 92 ++++++++++++++++++-
 1 file changed, 89 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c9b341e55cbb..d14518039674 100644
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
@@ -36,10 +39,12 @@
 #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
 #define PCIE_L0S_ENTRY			0x11
 #define PCIE_CLIENT_GENERAL_CONTROL	0x0
+#define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
 #define PCIE_CLIENT_GENERAL_DEBUG	0x104
-#define PCIE_CLIENT_HOT_RESET_CTRL      0x180
+#define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define PCIE_CLIENT_LTSSM_STATUS	0x300
-#define PCIE_LTSSM_ENABLE_ENHANCE       BIT(4)
+#define PCIE_LEGACY_INT_ENABLE		GENMASK(7, 0)
+#define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
 #define PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
 
 struct rockchip_pcie {
@@ -51,6 +56,7 @@ struct rockchip_pcie {
 	struct reset_control		*rst;
 	struct gpio_desc		*rst_gpio;
 	struct regulator                *vpcie3v3;
+	struct irq_domain		*irq_domain;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
@@ -65,6 +71,68 @@ static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
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
+	reg = rockchip_pcie_readl_apb(rockchip, 0x8);
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
+static int rockchip_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
+				  irq_hw_number_t hwirq)
+{
+	irq_set_chip_and_handler(irq, &dummy_irq_chip, handle_simple_irq);
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
@@ -111,9 +179,27 @@ static int rockchip_pcie_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
-	u32 val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	struct device *dev = rockchip->pci.dev;
+	int irq, ret;
+	u32 val;
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
+
+	/* enable legacy interrupts */
+	val = HIWORD_UPDATE_BIT(PCIE_LEGACY_INT_ENABLE);
+	val &= ~PCIE_LEGACY_INT_ENABLE;
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_LEGACY);
 
 	/* LTSSM enable control mode */
+	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
 
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
