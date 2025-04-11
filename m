Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5245C369A8
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 06:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H5j++xWpbVVHX/A+OAYb8e9dfjKmFzdyE5PmI56tLlk=; b=A+57z2kA54QoOD
	bD6T2GsOWI/dbKuIB4zwotq3nvAHKD3/WhRuMAGQJ4pkNcMRN6ZCsBLcA5utkBGiH2JohebfQchud
	c6SDzqpVCp9hP6i3ZsJVR+nlGimYNZ1QAlcOZajgrWljGX6E4kk1+fvVxKNuxhcDwRLXUI1ceEt69
	pJgYyThLAtwv0oSyBPJPBrTENsT3dbtoxuJbKHB/PZuU1sbr9e6I5mBw9V5lA8+Y5jQpbsKxBb61W
	9bBRoVAPLxFDel/uyc554NQoyskUMEP0oZOiwbOT3u1/P/kBypU8IFMWslYAzgXwve3mBWWR8wvcS
	86dpe+pDgRd5JU2DlRrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u386W-0000000ClR3-3i05;
	Fri, 11 Apr 2025 06:43:08 +0000
Received: from mail-m32100.qiye.163.com ([220.197.32.100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u37ek-0000000Ch23-41aD
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 06:14:28 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 117fbd5a9;
	Fri, 11 Apr 2025 14:14:19 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] PCI: dw-rockchip: Add system PM support
Date: Fri, 11 Apr 2025 14:14:08 +0800
Message-Id: <1744352048-178994-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4ZQ1YfT0gYHR8dSxlLTB5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96237c222209cckunm117fbd5a9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTI6Mxw*CjJMEjQwAjBDSRgC
	TDUaChJVSlVKTE9PSE5JS01KSU5KVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpKTklNNwY+
DKIM-Signature: a=rsa-sha256;
	b=LivE6Yu0G6/82echvt/haiJ4QdLSBrSsjeRy0B2HNMOMbryWzaIMQoJEuv8kEBAd3W/PP803AnhqIOzWs6YKxQSETAGb8f4Kc3gwTvsUMD54LiV8AwJHF5nzA+2x7DlFKwJIA9YnLPpHt3+gp0bElZI4mZ3wlDPjjWi2VCKgCWo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=hiDhpUdorhRQ7DBCS+XjvpKnBHER4Wi2g7PguBXn07k=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_231427_475558_81E1884B 
X-CRM114-Status: GOOD (  22.93  )
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

This patch adds system PM support for Rockchip platforms by adding .pme_turn_off
and .get_ltssm hook and tries to reuse possible exist code.

It's tested on RK3576 EVB1 board with Some NVMes and PCIe-2-SATA/XHCI devices.
And check the PCIe protocol analyzer to make sure the L2 process fits the spec.

[    1.541394] nvme nvme0: missing or invalid SUBNQN field.
[    1.548755] nvme nvme0: allocated 64 MiB host memory buffer (16 segments).
[    1.562235] nvme nvme0: 8/0/0 default/read/poll queues
[    1.563930] nvme nvme0: Ignoring bogus Namespace Identifiers

echo N > /sys/module/printk/parameters/console_suspend
echo core > /sys/power/pm_test
echo mem > /sys/power/state

[   58.443602] PM: suspend entry (deep)
[   58.444005] Filesystems sync: 0.000 seconds
[   58.445542] Freezing user space processes
[   58.447096] Freezing user space processes completed (elapsed 0.001 seconds)
[   58.447718] OOM killer disabled.
[   58.448008] Freezing remaining freezable tasks
[   58.449080] Freezing remaining freezable tasks completed (elapsed 0.000 seconds)

...

[   58.797070] rockchip-dw-pcie 22400000.pcie: PCIe Gen.2 x1 link up
[   58.835953] OOM killer enabled.
[   58.836262] Restarting tasks ... done.
[   58.839241] random: crng reseeded on system resumption
[   58.840679] PM: suspend exit
[   59.500036] nvme nvme0: 8/0/0 default/read/poll queues
[   59.500909] nvme nvme0: Ignoring bogus Namespace Identifiers

time dd if=/dev/nvme0n1 of=/dev/null bs=1M count=1000
1000+0 records in
1000+0 records out
real    0m 5.51s
user    0m 0.00s
sys     0m 0.71s

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- Use NOIRQ_SYSTEM_SLEEP_PM_OPS

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 185 +++++++++++++++++++++++---
 1 file changed, 169 insertions(+), 16 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 56acfea..7246a49 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -21,6 +21,7 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
+#include "../../pci.h"
 #include "pcie-designware.h"
 
 /*
@@ -37,8 +38,14 @@
 #define PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
 #define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
 #define PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
+#define PCIE_CLIENT_INTR_STATUS_MSG_RX	0x04
 #define PCIE_CLIENT_INTR_STATUS_MISC	0x10
 #define PCIE_CLIENT_INTR_MASK_MISC	0x24
+#define PCIE_CLIENT_POWER		0x2c
+#define PCIE_CLIENT_MSG_GEN		0x34
+#define PME_READY_ENTER_L23		BIT(3)
+#define PME_TURN_OFF			(BIT(4) | BIT(20))
+#define PME_TO_ACK			(BIT(9) | BIT(25))
 #define PCIE_SMLH_LINKUP		BIT(16)
 #define PCIE_RDLH_LINKUP		BIT(17)
 #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
@@ -63,6 +70,7 @@ struct rockchip_pcie {
 	struct gpio_desc *rst_gpio;
 	struct regulator *vpcie3v3;
 	struct irq_domain *irq_domain;
+	u32 intx;
 	const struct rockchip_pcie_of_data *data;
 };
 
@@ -159,6 +167,13 @@ static u32 rockchip_pcie_get_ltssm(struct rockchip_pcie *rockchip)
 	return rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
 }
 
+static u32 rockchip_pcie_get_pure_ltssm(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	return rockchip_pcie_get_ltssm(rockchip) & PCIE_LTSSM_STATUS_MASK;
+}
+
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
@@ -248,8 +263,46 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	return 0;
 }
 
+static void rockchip_pcie_pme_turn_off(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	struct device *dev = rockchip->pci.dev;
+	int ret;
+	u32 status;
+
+	/* 1. Broadcast PME_Turn_Off Message, bit 4 self-clear once done */
+	rockchip_pcie_writel_apb(rockchip, PME_TURN_OFF, PCIE_CLIENT_MSG_GEN);
+	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_MSG_GEN,
+				 status, !(status & BIT(4)), PCIE_PME_TO_L2_TIMEOUT_US / 10,
+				 PCIE_PME_TO_L2_TIMEOUT_US);
+	if (ret) {
+		dev_warn(dev, "Failed to send PME_Turn_Off\n");
+		return;
+	}
+
+	/* 2. Wait for PME_TO_Ack, bit 9 will be set once received */
+	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_INTR_STATUS_MSG_RX,
+				 status, status & BIT(9), PCIE_PME_TO_L2_TIMEOUT_US / 10,
+				 PCIE_PME_TO_L2_TIMEOUT_US);
+	if (ret) {
+		dev_warn(dev, "Failed to receive PME_TO_Ack\n");
+		return;
+	}
+
+	/* 3. Clear PME_TO_Ack and Wait for ready to enter L23 message */
+	rockchip_pcie_writel_apb(rockchip, PME_TO_ACK, PCIE_CLIENT_INTR_STATUS_MSG_RX);
+	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_POWER,
+				 status, status & PME_READY_ENTER_L23,
+				 PCIE_PME_TO_L2_TIMEOUT_US / 10,
+				 PCIE_PME_TO_L2_TIMEOUT_US);
+	if (ret)
+		dev_err(dev, "Failed to get ready to enter L23 message\n");
+}
+
 static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
 	.init = rockchip_pcie_host_init,
+	.pme_turn_off = rockchip_pcie_pme_turn_off,
 };
 
 /*
@@ -430,6 +483,7 @@ static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = rockchip_pcie_link_up,
 	.start_link = rockchip_pcie_start_link,
 	.stop_link = rockchip_pcie_stop_link,
+	.get_ltssm = rockchip_pcie_get_pure_ltssm,
 };
 
 static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
@@ -489,13 +543,32 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
+static void rockchip_pcie_ltssm_enable_control_mode(struct rockchip_pcie *rockchip, u32 mode)
+{
+	u32 val;
+
+	/* LTSSM enable control mode */
+	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+
+	rockchip_pcie_writel_apb(rockchip, mode, PCIE_CLIENT_GENERAL_CONTROL);
+}
+
+static void rockchip_pcie_unmask_dll_indicator(struct rockchip_pcie *rockchip)
+{
+	u32 val;
+
+	/* unmask DLL up/down indicator */
+	val = HIWORD_UPDATE(PCIE_RDLH_LINK_UP_CHGED, 0);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
+}
+
 static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 				      struct rockchip_pcie *rockchip)
 {
 	struct device *dev = &pdev->dev;
 	struct dw_pcie_rp *pp;
 	int irq, ret;
-	u32 val;
 
 	if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST))
 		return -ENODEV;
@@ -512,12 +585,7 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 		return ret;
 	}
 
-	/* LTSSM enable control mode */
-	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
-
-	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
-				 PCIE_CLIENT_GENERAL_CONTROL);
+	rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_RC_MODE);
 
 	pp = &rockchip->pci.pp;
 	pp->ops = &rockchip_pcie_host_ops;
@@ -529,9 +597,7 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 		return ret;
 	}
 
-	/* unmask DLL up/down indicator */
-	val = HIWORD_UPDATE(PCIE_RDLH_LINK_UP_CHGED, 0);
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
+	rockchip_pcie_unmask_dll_indicator(rockchip);
 
 	return ret;
 }
@@ -558,12 +624,7 @@ static int rockchip_pcie_configure_ep(struct platform_device *pdev,
 		return ret;
 	}
 
-	/* LTSSM enable control mode */
-	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
-
-	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_EP_MODE,
-				 PCIE_CLIENT_GENERAL_CONTROL);
+	rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_EP_MODE);
 
 	rockchip->pci.ep.ops = &rockchip_pcie_ep_ops;
 	rockchip->pci.ep.page_size = SZ_64K;
@@ -677,6 +738,92 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static int rockchip_pcie_suspend(struct device *dev)
+{
+	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
+	struct dw_pcie *pci = &rockchip->pci;
+	int ret;
+
+	rockchip->intx = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_MASK_LEGACY);
+
+	ret = dw_pcie_suspend_noirq(pci);
+	if (ret) {
+		dev_err(dev, "failed to suspend\n");
+		return ret;
+	}
+
+	rockchip_pcie_phy_deinit(rockchip);
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+	reset_control_assert(rockchip->rst);
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+
+	return 0;
+}
+
+static int rockchip_pcie_resume(struct device *dev)
+{
+	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
+	struct dw_pcie *pci = &rockchip->pci;
+	int ret;
+
+	reset_control_assert(rockchip->rst);
+
+	ret = clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
+	if (ret) {
+		dev_err(dev, "clock init failed\n");
+		goto err_clk;
+	}
+
+	if (rockchip->vpcie3v3) {
+		ret = regulator_enable(rockchip->vpcie3v3);
+		if (ret)
+			goto err_power;
+	}
+
+	ret = phy_init(rockchip->phy);
+	if (ret) {
+		dev_err(dev, "fail to init phy\n");
+		goto err_phy_init;
+	}
+
+	ret = phy_power_on(rockchip->phy);
+	if (ret) {
+		dev_err(dev, "fail to power on phy\n");
+		goto err_phy_on;
+	}
+
+	reset_control_deassert(rockchip->rst);
+
+	rockchip_pcie_writel_apb(rockchip, HIWORD_UPDATE(0xffff, rockchip->intx),
+				 PCIE_CLIENT_INTR_MASK_LEGACY);
+
+	rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_RC_MODE);
+	rockchip_pcie_unmask_dll_indicator(rockchip);
+
+	ret = dw_pcie_resume_noirq(pci);
+	if (ret) {
+		dev_err(dev, "fail to resume\n");
+		goto err_resume;
+	}
+
+	return 0;
+
+err_resume:
+	phy_power_off(rockchip->phy);
+err_phy_on:
+	phy_exit(rockchip->phy);
+err_phy_init:
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
+err_power:
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+err_clk:
+	reset_control_deassert(rockchip->rst);
+	return ret;
+}
+
 static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
 	.mode = DW_PCIE_RC_TYPE,
 };
@@ -707,11 +854,17 @@ static const struct of_device_id rockchip_pcie_of_match[] = {
 	{},
 };
 
+static const struct dev_pm_ops rockchip_pcie_pm_ops = {
+	NOIRQ_SYSTEM_SLEEP_PM_OPS(rockchip_pcie_suspend,
+				  rockchip_pcie_resume)
+};
+
 static struct platform_driver rockchip_pcie_driver = {
 	.driver = {
 		.name	= "rockchip-dw-pcie",
 		.of_match_table = rockchip_pcie_of_match,
 		.suppress_bind_attrs = true,
+		.pm = &rockchip_pcie_pm_ops,
 	},
 	.probe = rockchip_pcie_probe,
 };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
