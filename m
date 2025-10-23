Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19EBCCF9E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 02:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gs65GRhMo1G/mqkddqx0k9NmAnCrQVdeNytTa7QNJvU=; b=GchcCFS5OrI/bG
	CuvqjKIeV6xtpwlHFupnbqoYmHe7i5um7uTGY61qyhsONKBvxph8pcZOgNtaXfQ/wl+h5LLSriICW
	1xJ6aAx4IRmuvoS3uu2Ge+rPTCByPTnDKgSR4pTtzWv8jEfefbTzZeTSk4jF8BQH/qlQ4ArqDz8y9
	nh+R5MK5QqjpKiwEpsaVkXVPIPoGoXC4koGwKIL5lZh7s7dfpGL1aAbegCBLLk9vR3SemFcS7OQIs
	VdmgR9II+bIyd36JfcKC2b7c1uqh8U7zLMw5BrS1zbFpI5wg9KHlQTawA5RwpL6RXzRqi6Bps4X1j
	04BPAzoKKfmJHDmCeJ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBlQW-00000004szk-1Ily;
	Thu, 23 Oct 2025 02:51:44 +0000
Received: from mail-m81232.xmail.ntesmail.com ([156.224.81.232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBlQT-00000004syy-0wIa
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 02:51:43 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26dfa2407;
	Thu, 23 Oct 2025 10:51:34 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 1/2] PCI: dw-rockchip: Configure L1sub support
Date: Thu, 23 Oct 2025 10:51:22 +0800
Message-Id: <1761187883-150120-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a0efa948d09cckunme7ff00708b369e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpLH1YeSkNDSxpLGExOSEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=bR+sGQMULNy6K3nSK4E03UjeIEFp+2+4j0tu+j6hndapxBlNL+u3NLi2/vg+u70CftSp9PCHQOgT6dPupbkKJvY0QbfsyTrB5nOLUbo6wWQlcHlBMgtjOksUGZ2ZohCknjev/l93LvRo/mhF0GCLeeSD1Fx3pLJ3TAdfNzjVDtQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=LgbicayheB4Lhxo7f1O6GKeK04JXjIbvENp8KRU8J24=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_195141_893938_F579DC28 
X-CRM114-Status: GOOD (  16.90  )
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

L1 PM Substates for RC mode require support in the dw-rockchip driver
including proper handling of the CLKREQ# sideband signal. It is mostly
handled by hardware, but software still needs to set the clkreq fields
in the PCIE_CLIENT_POWER_CON register to match the hardware implementation.

For more details, see section '18.6.6.4 L1 Substate' in the RK3658 TRM 1.1
Part 2, or section '11.6.6.4 L1 Substate' in the RK3588 TRM 1.0 Part2.

Meanwhile, for the EP mode, we haven't prepared enough to actually support
L1 PM Substates yet. So disable it now until proper support is added later.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v3:
- rephrease the changelog
- use FIELD_PREP_WM16
- rename to rockchip_pcie_configure_l1sub
- disable L1ss for EP mode

Changes in v2:
- drop of_pci_clkreq_presnt API
- drop dependency of Niklas's patch

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 43 +++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 3e2752c..25d2474 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -62,6 +62,12 @@
 /* Interrupt Mask Register Related to Miscellaneous Operation */
 #define PCIE_CLIENT_INTR_MASK_MISC	0x24
 
+/* Power Management Control Register */
+#define PCIE_CLIENT_POWER_CON		0x2c
+#define  PCIE_CLKREQ_READY		FIELD_PREP_WM16(BIT(0), 1)
+#define  PCIE_CLKREQ_NOT_READY		FIELD_PREP_WM16(BIT(0), 0)
+#define  PCIE_CLKREQ_PULL_DOWN		FIELD_PREP_WM16(GENMASK(13, 12), 1)
+
 /* Hot Reset Control Register */
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define  PCIE_LTSSM_APP_DLY2_EN		BIT(1)
@@ -85,6 +91,7 @@ struct rockchip_pcie {
 	struct regulator *vpcie3v3;
 	struct irq_domain *irq_domain;
 	const struct rockchip_pcie_of_data *data;
+	bool supports_clkreq;
 };
 
 struct rockchip_pcie_of_data {
@@ -200,6 +207,37 @@ static bool rockchip_pcie_link_up(struct dw_pcie *pci)
 	return FIELD_GET(PCIE_LINKUP_MASK, val) == PCIE_LINKUP;
 }
 
+/*
+ * See e.g. section '11.6.6.4 L1 Substate' in the RK3588 TRM V1.0 for the steps
+ * needed to support L1 substates. Currently, just enable L1 substates for RC
+ * mode if CLKREQ# is properly connected and supports-clkreq is present in DT.
+ * For EP mode, there are more things should be done to actually save power in
+ * L1 substates, so disable L1 substates until there is proper support.
+ */
+static void rockchip_pcie_configure_l1sub(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 cap, l1subcap;
+
+	/* Enable L1 substates if CLKREQ# is properly connected */
+	if (rockchip->supports_clkreq && rockchip->data->mode == DW_PCIE_RC_TYPE ) {
+		rockchip_pcie_writel_apb(rockchip, PCIE_CLKREQ_READY, PCIE_CLIENT_POWER_CON);
+		return;
+	}
+
+	/* Otherwise, pull down CLKREQ# and disable L1 PM substates */
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLKREQ_PULL_DOWN | PCIE_CLKREQ_NOT_READY,
+				 PCIE_CLIENT_POWER_CON);
+	cap = dw_pcie_find_ext_capability(pci, PCI_EXT_CAP_ID_L1SS);
+	if (cap) {
+		l1subcap = dw_pcie_readl_dbi(pci, cap + PCI_L1SS_CAP);
+		l1subcap &= ~(PCI_L1SS_CAP_L1_PM_SS | PCI_L1SS_CAP_ASPM_L1_1 |
+			      PCI_L1SS_CAP_ASPM_L1_2 | PCI_L1SS_CAP_PCIPM_L1_1 |
+			      PCI_L1SS_CAP_PCIPM_L1_2);
+		dw_pcie_writel_dbi(pci, cap + PCI_L1SS_CAP, l1subcap);
+	}
+}
+
 static void rockchip_pcie_enable_l0s(struct dw_pcie *pci)
 {
 	u32 cap, lnkcap;
@@ -264,6 +302,7 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
 					 rockchip);
 
+	rockchip_pcie_configure_l1sub(pci);
 	rockchip_pcie_enable_l0s(pci);
 
 	return 0;
@@ -301,6 +340,7 @@ static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	enum pci_barno bar;
 
+	rockchip_pcie_configure_l1sub(pci);
 	rockchip_pcie_enable_l0s(pci);
 	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
 
@@ -412,6 +452,9 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
 		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
 				     "failed to get reset lines\n");
 
+	rockchip->supports_clkreq = of_property_read_bool(pdev->dev.of_node,
+							  "supports-clkreq");
+
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
