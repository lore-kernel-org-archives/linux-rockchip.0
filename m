Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF2EC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 07:19:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E4A664E00
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 07:19:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E4A664E00
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JOTIKRn7tngLj2L98v0nbU6RCgMV1mYiDKSGw9bsxpw=; b=fp3lmRDJTi4D4n+2Q6D1aIIVW
	7Zs8cMgs188UOwTqZejFknBNxLME+TqtYqY0GZyzvTOFuEh8mSmluYgyIz0TBYalohJtl/uJfFt8I
	yICgSm/1k+xsQ+XFFfhQR8x0czF7d6nGiWo1EgMRA6/VOv+RE7WGA2kK/enNZ9TVioHZFQ7SEIpyF
	7CDwXB9mgSOL8Q2nJC51CDa0ts/jKid+M8Y9miKZcu375bhcgh8qJHhcg8t10wQxVtKSWukyAh8LN
	aRxA0cjw25kldJUVDEqw1u7DJ6cLY2+E8zdVNPq2FI1REL+dlbwwP7ib4Lk6TFT//tXyPGdQGGFjm
	oYMrV4kuA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lE5Up-00075c-He; Mon, 22 Feb 2021 07:19:07 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5Uj-00072y-W7
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 07:19:05 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2CCDAB7A43;
 Mon, 22 Feb 2021 15:18:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27940T140460514129664S1613978310069861_; 
 Mon, 22 Feb 2021 15:18:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fa12f2743453e366d2d0c8ad4503d3d4>
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
Subject: [PATCH v5 2/2] PCI: rockchip: Add DesignWare based PCIe controller
Date: Mon, 22 Feb 2021 15:18:28 +0800
Message-Id: <20210222071828.30120-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210222071721.30062-1-xxm@rock-chips.com>
References: <20210222071721.30062-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_021903_093365_DCEE98CD 
X-CRM114-Status: GOOD (  24.57  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add driver for DesignWare based PCIe controller found on RK356X.
The already existed driver pcie-rockchip-host is only used for
Rockchip designed IP found on RK3399.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 288 ++++++++++++++++++
 3 files changed, 299 insertions(+)
 create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index 22c5529e9a65..159791775cc6 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -214,6 +214,16 @@ config PCIE_ARTPEC6_EP
 	  Enables support for the PCIe controller in the ARTPEC-6 SoC to work in
 	  endpoint mode. This uses the DesignWare core.
 
+config PCIE_ROCKCHIP_DW_HOST
+	bool "Rockchip DesignWare PCIe controller"
+	select PCIE_DW
+	select PCIE_DW_HOST
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on OF
+	help
+	  Enables support for the DesignWare PCIe controller in the
+	  Rockchip SoC except RK3399.
+
 config PCIE_INTEL_GW
 	bool "Intel Gateway PCIe host controller support"
 	depends on OF && (X86 || COMPILE_TEST)
diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
index a751553fa0db..30eef8e9ee8a 100644
--- a/drivers/pci/controller/dwc/Makefile
+++ b/drivers/pci/controller/dwc/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_PCI_LAYERSCAPE_EP) += pci-layerscape-ep.o
 obj-$(CONFIG_PCIE_QCOM) += pcie-qcom.o
 obj-$(CONFIG_PCIE_ARMADA_8K) += pcie-armada8k.o
 obj-$(CONFIG_PCIE_ARTPEC6) += pcie-artpec6.o
+obj-$(CONFIG_PCIE_ROCKCHIP_DW_HOST) += pcie-dw-rockchip.o
 obj-$(CONFIG_PCIE_INTEL_GW) += pcie-intel-gw.o
 obj-$(CONFIG_PCIE_KIRIN) += pcie-kirin.o
 obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
new file mode 100644
index 000000000000..f0c40f0a7480
--- /dev/null
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -0,0 +1,288 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe host controller driver for Rockchip SoCs.
+ *
+ * Copyright (C) 2021 Rockchip Electronics Co., Ltd.
+ *		http://www.rock-chips.com
+ *
+ * Author: Simon Xue <xxm@rock-chips.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+#include "pcie-designware.h"
+
+/*
+ * The upper 16 bits of PCIE_CLIENT_CONFIG are a write
+ * mask for the lower 16 bits.
+ */
+#define HIWORD_UPDATE(mask, val) (((mask) << 16) | (val))
+#define HIWORD_UPDATE_BIT(val)	HIWORD_UPDATE(val, val)
+
+#define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
+
+#define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
+#define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
+#define PCIE_SMLH_LINKUP		BIT(16)
+#define PCIE_RDLH_LINKUP		BIT(17)
+#define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
+#define PCIE_L0S_ENTRY			0x11
+#define PCIE_CLIENT_GENERAL_CONTROL	0x0
+#define PCIE_CLIENT_GENERAL_DEBUG	0x104
+#define PCIE_CLIENT_HOT_RESET_CTRL      0x180
+#define PCIE_CLIENT_LTSSM_STATUS	0x300
+#define PCIE_LTSSM_ENABLE_ENHANCE       BIT(4)
+
+struct rockchip_pcie {
+	struct dw_pcie			pci;
+	void __iomem			*apb_base;
+	struct phy			*phy;
+	struct clk_bulk_data		*clks;
+	unsigned int			clk_cnt;
+	struct reset_control		*rst;
+	struct gpio_desc		*rst_gpio;
+	struct regulator                *vpcie3v3;
+};
+
+static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
+					     u32 reg)
+{
+	return readl(rockchip->apb_base + reg);
+}
+
+static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
+						u32 val, u32 reg)
+{
+	writel(val, rockchip->apb_base + reg);
+}
+
+static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
+{
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+}
+
+static int rockchip_pcie_link_up(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
+
+	if ((val & (PCIE_RDLH_LINKUP | PCIE_SMLH_LINKUP)) == PCIE_LINKUP &&
+	    (val & GENMASK(5, 0)) == PCIE_L0S_ENTRY)
+		return 1;
+
+	return 0;
+}
+
+static int rockchip_pcie_start_link(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	/* Reset device */
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+	msleep(100);
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
+
+	rockchip_pcie_enable_ltssm(rockchip);
+
+	return 0;
+}
+
+static void rockchip_pcie_fast_link_setup(struct rockchip_pcie *rockchip)
+{
+	u32 val;
+
+	/* LTSSM enable control mode */
+	val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_HOT_RESET_CTRL);
+	val |= PCIE_LTSSM_ENABLE_ENHANCE | (PCIE_LTSSM_ENABLE_ENHANCE << 16);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+}
+
+static int rockchip_pcie_host_init(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	rockchip_pcie_fast_link_setup(rockchip);
+
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+
+	return 0;
+}
+
+static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
+	.host_init = rockchip_pcie_host_init,
+};
+
+static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci.dev;
+	int ret;
+
+	ret = devm_clk_bulk_get_all(dev, &rockchip->clks);
+	if (ret < 0)
+		return ret;
+
+	rockchip->clk_cnt = ret;
+
+	ret = clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int rockchip_pcie_resource_get(struct platform_device *pdev,
+				      struct rockchip_pcie *rockchip)
+{
+	rockchip->apb_base = devm_platform_ioremap_resource_byname(pdev, "apb");
+	if (IS_ERR(rockchip->apb_base))
+		return PTR_ERR(rockchip->apb_base);
+
+	rockchip->rst_gpio = devm_gpiod_get_optional(&pdev->dev, "reset",
+						     GPIOD_OUT_HIGH);
+	if (IS_ERR(rockchip->rst_gpio))
+		return PTR_ERR(rockchip->rst_gpio);
+
+	return 0;
+}
+
+static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci.dev;
+	int ret;
+
+	rockchip->phy = devm_phy_get(dev, "pcie-phy");
+	if (IS_ERR(rockchip->phy))
+		return dev_err_probe(dev, PTR_ERR(rockchip->phy),
+				     "missing PHY\n");
+
+	ret = phy_init(rockchip->phy);
+	if (ret < 0)
+		return ret;
+
+	ret = phy_power_on(rockchip->phy);
+	if (ret)
+		phy_exit(rockchip->phy);
+
+	return ret;
+}
+
+static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
+{
+	phy_exit(rockchip->phy);
+	phy_power_off(rockchip->phy);
+}
+
+static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci.dev;
+	int ret;
+
+	rockchip->rst = devm_reset_control_array_get_exclusive(dev);
+	if (IS_ERR(rockchip->rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
+				     "failed to get reset lines\n");
+
+	ret = reset_control_deassert(rockchip->rst);
+
+	return ret;
+}
+
+static const struct dw_pcie_ops dw_pcie_ops = {
+	.link_up = rockchip_pcie_link_up,
+	.start_link = rockchip_pcie_start_link,
+};
+
+static int rockchip_pcie_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rockchip_pcie *rockchip;
+	struct pcie_port *pp;
+	int ret;
+
+	rockchip = devm_kzalloc(dev, sizeof(*rockchip), GFP_KERNEL);
+	if (!rockchip)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, rockchip);
+
+	rockchip->pci.dev = dev;
+	rockchip->pci.ops = &dw_pcie_ops;
+
+	pp = &rockchip->pci.pp;
+	pp->ops = &rockchip_pcie_host_ops;
+
+	ret = rockchip_pcie_resource_get(pdev, rockchip);
+	if (ret)
+		return ret;
+
+	/* DON'T MOVE ME: must be enable before PHY init */
+	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
+	if (IS_ERR(rockchip->vpcie3v3))
+		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
+				     "failed to get vpcie3v3 regulator\n");
+
+	if (rockchip->vpcie3v3) {
+		ret = regulator_enable(rockchip->vpcie3v3);
+		if (ret) {
+			dev_err(dev, "failed to enable vpcie3v3 regulator\n");
+			return ret;
+		}
+	}
+
+	ret = rockchip_pcie_phy_init(rockchip);
+	if (ret)
+		goto disable_regulator;
+
+	ret = rockchip_pcie_reset_control_release(rockchip);
+	if (ret)
+		goto deinit_phy;
+
+	ret = rockchip_pcie_clk_init(rockchip);
+	if (ret)
+		goto deinit_phy;
+
+	ret = dw_pcie_host_init(pp);
+	if (ret)
+		goto deinit_clk;
+
+	return 0;
+
+deinit_clk:
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+deinit_phy:
+	rockchip_pcie_phy_deinit(rockchip);
+disable_regulator:
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
+
+	return ret;
+}
+
+MODULE_DEVICE_TABLE(of, rockchip_pcie_of_match);
+
+static const struct of_device_id rockchip_pcie_of_match[] = {
+	{ .compatible = "rockchip,rk3568-pcie", },
+	{},
+};
+
+static struct platform_driver rockchip_pcie_driver = {
+	.driver = {
+		.name	= "rockchip-dw-pcie",
+		.of_match_table = rockchip_pcie_of_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = rockchip_pcie_probe,
+};
+
+builtin_platform_driver(rockchip_pcie_driver);
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
