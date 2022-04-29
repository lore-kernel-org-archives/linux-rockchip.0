Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F0DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dp3WXFxhUwtw4vmgpzWXFb64cxzcpfaPlCCzO7avrtc=; b=C5w5ujaJv/VuvW
	8lr0z0Bj4x97rY9q8+5rtElHdpl+YkvrAJOPYb43BDWd065l6WumM5pVrZOmbxMuxKb9Eeq1gO8tj
	eJ7Zu2dWghOvslhUb0fMkOd2W44EtSJv0Ag3GfR3WRpCHeJ1jcKniIJFPDve4Vrsc8OsoB7i581Av
	QzgXEHMTVPeuXKVGr56AYgUq8Ub71vr3heblMtqmjUu7lzFfwG5kGS8f9aF2Qk0njDEv9uhtODbgd
	iLO7pM3i3Pj71FnHGFHjd4o1Jdnb0326sJtZUc5NDM7GRvlASQTxxRzZZk6bSrjdxMDi2Uxm69GoA
	GKovqS5cni9sxPRQSzTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPud-00BBue-Pn; Fri, 29 Apr 2022 12:39:55 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPth-00BBIK-8f; Fri, 29 Apr 2022 12:39:01 +0000
Received: by mail-qt1-x82d.google.com with SMTP id x9so5548737qts.6;
 Fri, 29 Apr 2022 05:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uyq1i2Lv45qND56ozQ1y5y+nAN5qNeoyHNd4iCmSY9Q=;
 b=a6T1aHav6KL+N7p+22s3IuPT5LE1w3optua0IqYhm7t2kvBuFrYEgst8eqnyt5TWHr
 Be6QDxXiIXnXFAHayNvMITcgShi/ByKV1ZZlsMMe2gLFv5ZJYiIvZZ9/fLX+EuGVP1WY
 7klJjRFUahKIk+PsN20ET2GmxGrtvCSnyGAznEQRXe3sUQ9HZElrxMD/XNx9gqlDMMMz
 kLGS3lnBkh6uFg6ve9unSWLOXOqhtfNvIYp7djFX30+A3FMibCkpWw5oB9IcNfRdKKR+
 yHc4OlNjT/D8+BkC6e3v3yKxLwW8pLezH3YBe3CsyTMPu7dAlCOsXbn+SJiy2Mf8rGV9
 XQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uyq1i2Lv45qND56ozQ1y5y+nAN5qNeoyHNd4iCmSY9Q=;
 b=araRDwuw00MQOgJUAlB9lhLRtw+hf59vhvOLzSWZz3+VwaLMdlbUyB1tuzjWgN4dKI
 Ou3a9Yx+UW2G307cMD+9Mf0EgNst8vCRq1+liorDBiaKeKAcnuf8mh6gYYeFTUwd9tx5
 xYtbVl3kYwfrTVr5GHJ9Vmna0t+iYjcXaNw0JdZVyxFgvB1bgzW5OlZvLH89C9aJhJw0
 C3bXYmS9iZwM49e5rGAv8dyi6IME+76hA8x1zpTCHi8s9E4g9e1rdYCot4cjMht/g+a1
 hm6PatUu3ZGVkqa4HQ8w0iIAo9EwLg+cWv1GYHKEzvBem9odEoaePaG5AgHbcHnGBXlv
 /pnQ==
X-Gm-Message-State: AOAM532B1NpGGcuvbzs7MeNHXQcS2x2IGdgjH23BU8lNJDsPIjsXGYkV
 P3mXh1C71J/10zJMv7SgAjeOUVfFrru94Rij
X-Google-Smtp-Source: ABdhPJzDkJgvQVaAO6dhxr1s7kOmbkUNFZ1A52IXb9BTaBOf3HQt4KptqT3SUNW951XEIT/Y8ba3lw==
X-Received: by 2002:a05:622a:34c:b0:2f3:94ee:b208 with SMTP id
 r12-20020a05622a034c00b002f394eeb208mr1307922qtw.132.1651235921958; 
 Fri, 29 Apr 2022 05:38:41 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v126-20020a37dc84000000b0069f9c375519sm1431644qki.46.2022.04.29.05.38.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:38:41 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 3/5] PCI: rockchip-dwc: Add legacy interrupt support
Date: Fri, 29 Apr 2022 08:38:29 -0400
Message-Id: <20220429123832.2376381-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_053857_358789_41DE1AC1 
X-CRM114-Status: GOOD (  19.53  )
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

The legacy interrupts on the rk356x PCIe controller are handled by a
single muxed interrupt. Add IRQ domain support to the pcie-dw-rockchip
driver to support the virtual domain.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 96 ++++++++++++++++++-
 1 file changed, 94 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index faedbd6ebc20..8c5bb9d7cc36 100644
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
@@ -26,6 +29,7 @@
  */
 #define HIWORD_UPDATE(mask, val) (((mask) << 16) | (val))
 #define HIWORD_UPDATE_BIT(val)	HIWORD_UPDATE(val, val)
+#define HIWORD_DISABLE_BIT(val)	HIWORD_UPDATE(val, ~val)
 
 #define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
 
@@ -36,10 +40,12 @@
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
+#define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
 #define PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
 
 struct rockchip_pcie {
@@ -51,6 +57,7 @@ struct rockchip_pcie {
 	struct reset_control		*rst;
 	struct gpio_desc		*rst_gpio;
 	struct regulator                *vpcie3v3;
+	struct irq_domain		*irq_domain;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
@@ -65,6 +72,78 @@ static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
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
+	for_each_set_bit(hwirq, &reg, 4)
+		generic_handle_domain_irq(rockchip->irq_domain, hwirq);
+
+	chained_irq_exit(chip, desc);
+}
+
+static void rockchip_intx_mask(struct irq_data *data)
+{
+	rockchip_pcie_writel_apb(irq_data_get_irq_chip_data(data),
+				 HIWORD_UPDATE_BIT(BIT(data->hwirq)),
+				 PCIE_CLIENT_INTR_MASK_LEGACY);
+};
+
+static void rockchip_intx_unmask(struct irq_data *data)
+{
+	rockchip_pcie_writel_apb(irq_data_get_irq_chip_data(data),
+				 HIWORD_DISABLE_BIT(BIT(data->hwirq)),
+				 PCIE_CLIENT_INTR_MASK_LEGACY);
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
@@ -111,7 +190,20 @@ static int rockchip_pcie_host_init(struct pcie_port *pp)
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
+	irq_set_chained_handler_and_data(irq, rockchip_pcie_legacy_int_handler,
+					 rockchip);
 
 	/* LTSSM enable control mode */
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
