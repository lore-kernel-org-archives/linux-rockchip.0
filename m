Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D58CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySVpEBwrTAVFa88sCtbccYPRTsx89ITU4n+gdkN86f4=; b=0MbtNSqYu5cUSn
	aBLwQsId5nxcV1IfQl7JMhTwUZAVCWr3gYDKiTEQqUALXfLNWNjoQsdiIq7F9u+2kWde1hQUhx1QL
	U+qKENsn1gg1Ix58YbSxAU9xfzjqDPmW64zJwPiG0mNLVCUXPNBCxE0YnraXI2l53AVpNu36dQ7Dp
	MlARsuM8cubmaBuigZAAusOK84TQFXBRVQEENCD6tYzkFajp15a5XdtemJslhe5op6roiKf1v0FY9
	KpSpU2TZKtOfn3S/QuaKmE8KkGelTTY5Eiiffzwy7yiV9msv1teNp5AQxOV5PF5QR0ZtEsHsqNExi
	z+Q2a3a279b8vlNTmPoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf73-00000001DFH-1yJV;
	Mon, 07 Oct 2024 04:12:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6y-00000001DAn-3oH6
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4FD35C10F3;
	Mon,  7 Oct 2024 04:12:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8177C4CED0;
	Mon,  7 Oct 2024 04:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274363;
	bh=It0z0Am1x6MVOiHfTB73he+zha817GxWOwkitMkhexg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kaR7TV27MBNIB9ocMGxZFhaJYQmPfa9vk1JAnwBEkCFOT97h8qXK5VA85CTHjRRuM
	 dI6tLJm66mospCRFANA3WCLGK8SmaoczQfk3Gz7tvL4KW71TWKwxfm/acUliBRfSvS
	 OPmNMFgSL9cG1C52qrK+q2atm0aVFPmihjHdlBXtJhZAU7XZSXHIlin8U+1INk4qv0
	 VlX26XuRYLa50kx/XkaExBdmjdQP5q+Qppr1wed82W8j2wPMvzDGObxUJRQdyyJ3dZ
	 xIbDg6CiYtqcixaO0FWPCHhvQkF/atTpn7yzE89zh1Ww95X3bRDAggL3HkEnIlR701
	 IfY3Bmw3hMOlg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 10/12] PCI: rockchip-ep: Improve link training
Date: Mon,  7 Oct 2024 13:12:16 +0900
Message-ID: <20241007041218.157516-11-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211245_135915_F86A2DBE 
X-CRM114-Status: GOOD (  22.68  )
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

The Rockchip rk339 technical reference manual describe the endpoint mode
link training process clearly and states that:
  Insure link training completion and success by observing link_st field
  in PCIe Client BASIC_STATUS1 register change to 2'b11. If both side
  support PCIe Gen2 speed, re-train can be Initiated by asserting the
  Retrain Link field in Link Control and Status Register. The software
  should insure the BASIC_STATUS0[negotiated_speed] changes to "1", that
  indicates re-train to Gen2 successfully.
This procedure is very similar to what is done for the root-port mode in
rockchip_pcie_host_init_port().

Implement this link training procedure for the endpoint mode as well.
Given that the rk3399 SoC does not have an interrupt signaling link
status changes, training is implemented as a delayed work which is
rescheduled until the link training completes or the endpoint controller
is stopped. The link training work is first scheduled in
rockchip_pcie_ep_start() when the endpoint function is started. Link
training completion is signaled to the function using pci_epc_linkup().
Accordingly, the linkup_notifier field of the rockchip pci_epc_features
structure is changed to true.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 79 ++++++++++++++++++++++-
 drivers/pci/controller/pcie-rockchip.h    | 11 ++++
 2 files changed, 89 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index a801e040bcad..af50432525b4 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -16,6 +16,8 @@
 #include <linux/platform_device.h>
 #include <linux/pci-epf.h>
 #include <linux/sizes.h>
+#include <linux/workqueue.h>
+#include <linux/iopoll.h>
 
 #include "pcie-rockchip.h"
 
@@ -48,6 +50,7 @@ struct rockchip_pcie_ep {
 	u64			irq_pci_addr;
 	u8			irq_pci_fn;
 	u8			irq_pending;
+	struct delayed_work	link_training;
 };
 
 static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
@@ -465,6 +468,8 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
 			    PCIE_CLIENT_CONF_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
+	schedule_delayed_work(&ep->link_training, 0);
+
 	return 0;
 }
 
@@ -473,6 +478,8 @@ static void rockchip_pcie_ep_stop(struct pci_epc *epc)
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 
+	cancel_delayed_work_sync(&ep->link_training);
+
 	/* Stop link training and disable configuration */
 	rockchip_pcie_write(rockchip,
 			    PCIE_CLIENT_CONF_DISABLE |
@@ -480,8 +487,77 @@ static void rockchip_pcie_ep_stop(struct pci_epc *epc)
 			    PCIE_CLIENT_CONFIG);
 }
 
+static void rockchip_pcie_ep_retrain_link(struct rockchip_pcie *rockchip)
+{
+	u32 status;
+
+	status = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_LCS);
+	status |= PCI_EXP_LNKCTL_RL;
+	rockchip_pcie_write(rockchip, status, PCIE_EP_CONFIG_LCS);
+}
+
+static bool rockchip_pcie_ep_link_up(struct rockchip_pcie *rockchip)
+{
+	u32 val = rockchip_pcie_read(rockchip, PCIE_CLIENT_BASIC_STATUS1);
+
+	return PCIE_LINK_UP(val);
+}
+
+static void rockchip_pcie_ep_link_training(struct work_struct *work)
+{
+	struct rockchip_pcie_ep *ep =
+		container_of(work, struct rockchip_pcie_ep, link_training.work);
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+	struct device *dev = rockchip->dev;
+	u32 val;
+	int ret;
+
+	/* Enable Gen1 training and wait for its completion */
+	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
+				 val, PCIE_LINK_TRAINING_DONE(val), 50,
+				 LINK_TRAIN_TIMEOUT);
+	if (ret)
+		goto again;
+
+	/* Make sure that the link is up */
+	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
+				 val, PCIE_LINK_UP(val), 50,
+				 LINK_TRAIN_TIMEOUT);
+	if (ret)
+		goto again;
+
+	/* Check the current speed */
+	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
+	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
+		/* Enable retrain for gen2 */
+		rockchip_pcie_ep_retrain_link(rockchip);
+		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
+				   val, PCIE_LINK_IS_GEN2(val), 50,
+				   LINK_TRAIN_TIMEOUT);
+	}
+
+	/* Check again that the link is up */
+	if (!rockchip_pcie_ep_link_up(rockchip))
+		goto again;
+
+	val = rockchip_pcie_read(rockchip, PCIE_CLIENT_BASIC_STATUS0);
+	dev_info(dev,
+		 "Link UP (Negociated speed: %sGT/s, width: x%lu)\n",
+		 (val & PCIE_CLIENT_NEG_LINK_SPEED) ? "5" : "2.5",
+		 ((val & PCIE_CLIENT_NEG_LINK_WIDTH_MASK) >>
+		  PCIE_CLIENT_NEG_LINK_WIDTH_SHIFT) << 1);
+
+	/* Notify the function */
+	pci_epc_linkup(ep->epc);
+
+	return;
+
+again:
+	schedule_delayed_work(&ep->link_training, msecs_to_jiffies(5));
+}
+
 static const struct pci_epc_features rockchip_pcie_epc_features = {
-	.linkup_notifier = false,
+	.linkup_notifier = true,
 	.msi_capable = true,
 	.msix_capable = false,
 	.align = ROCKCHIP_PCIE_AT_SIZE_ALIGN,
@@ -642,6 +718,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	rockchip = &ep->rockchip;
 	rockchip->is_rc = false;
 	rockchip->dev = dev;
+	INIT_DELAYED_WORK(&ep->link_training, rockchip_pcie_ep_link_training);
 
 	epc = devm_pci_epc_create(dev, &rockchip_pcie_epc_ops);
 	if (IS_ERR(epc)) {
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 0263f158ee8d..3963b7097a91 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -26,6 +26,7 @@
 #define MAX_LANE_NUM			4
 #define MAX_REGION_LIMIT		32
 #define MIN_EP_APERTURE			28
+#define LINK_TRAIN_TIMEOUT		(5000 * USEC_PER_MSEC)
 
 #define PCIE_CLIENT_BASE		0x0
 #define PCIE_CLIENT_CONFIG		(PCIE_CLIENT_BASE + 0x00)
@@ -50,6 +51,10 @@
 #define   PCIE_CLIENT_DEBUG_LTSSM_MASK		GENMASK(5, 0)
 #define   PCIE_CLIENT_DEBUG_LTSSM_L1		0x18
 #define   PCIE_CLIENT_DEBUG_LTSSM_L2		0x19
+#define PCIE_CLIENT_BASIC_STATUS0	(PCIE_CLIENT_BASE + 0x44)
+#define   PCIE_CLIENT_NEG_LINK_WIDTH_MASK	GENMASK(7, 6)
+#define   PCIE_CLIENT_NEG_LINK_WIDTH_SHIFT	6
+#define   PCIE_CLIENT_NEG_LINK_SPEED		BIT(5)
 #define PCIE_CLIENT_BASIC_STATUS1	(PCIE_CLIENT_BASE + 0x48)
 #define   PCIE_CLIENT_LINK_STATUS_UP		0x00300000
 #define   PCIE_CLIENT_LINK_STATUS_MASK		0x00300000
@@ -87,6 +92,8 @@
 
 #define PCIE_CORE_CTRL_MGMT_BASE	0x900000
 #define PCIE_CORE_CTRL			(PCIE_CORE_CTRL_MGMT_BASE + 0x000)
+#define   PCIE_CORE_PL_CONF_LS_MASK		0x00000001
+#define   PCIE_CORE_PL_CONF_LS_READY		0x00000001
 #define   PCIE_CORE_PL_CONF_SPEED_5G		0x00000008
 #define   PCIE_CORE_PL_CONF_SPEED_MASK		0x00000018
 #define   PCIE_CORE_PL_CONF_LANE_MASK		0x00000006
@@ -144,6 +151,7 @@
 #define PCIE_RC_CONFIG_BASE		0xa00000
 #define PCIE_EP_CONFIG_BASE		0xa00000
 #define PCIE_EP_CONFIG_DID_VID		(PCIE_EP_CONFIG_BASE + 0x00)
+#define PCIE_EP_CONFIG_LCS		(PCIE_EP_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_RID_CCR		(PCIE_RC_CONFIG_BASE + 0x08)
 #define PCIE_RC_CONFIG_DCR		(PCIE_RC_CONFIG_BASE + 0xc4)
 #define   PCIE_RC_CONFIG_DCR_CSPL_SHIFT		18
@@ -155,6 +163,7 @@
 #define PCIE_RC_CONFIG_LINK_CAP		(PCIE_RC_CONFIG_BASE + 0xcc)
 #define   PCIE_RC_CONFIG_LINK_CAP_L0S		BIT(10)
 #define PCIE_RC_CONFIG_LCS		(PCIE_RC_CONFIG_BASE + 0xd0)
+#define PCIE_EP_CONFIG_LCS		(PCIE_EP_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
 #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
@@ -192,6 +201,8 @@
 #define ROCKCHIP_VENDOR_ID			0x1d87
 #define PCIE_LINK_IS_L2(x) \
 	(((x) & PCIE_CLIENT_DEBUG_LTSSM_MASK) == PCIE_CLIENT_DEBUG_LTSSM_L2)
+#define PCIE_LINK_TRAINING_DONE(x) \
+	(((x) & PCIE_CORE_PL_CONF_LS_MASK) == PCIE_CORE_PL_CONF_LS_READY)
 #define PCIE_LINK_UP(x) \
 	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
 #define PCIE_LINK_IS_GEN2(x) \
-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
