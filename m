Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A77D4335B
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 01:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3m9kvK64ipu4ZGb1sIE0yzggxMK8UMmUgJC9JM7B0o=; b=VyUxJPwn7QsQdY
	KZX4P5zVrg0fPnZ7BcVIN9pYJz6wMvh59PwwnQj2+MSinNlxga5RmDe5evsgxcrTo3aSIJOzBKMhj
	hvIQglGt1YX93sXZ6PbzRtN28DzqfXe909vJAGbQycSyLiWp6U+mwZgGj0/iByKsJRj0c5UjNzsgk
	SdXYBWfu4obpetqLUjol/xMIUiNg/MMrEKsoLZ/CBUKd9jTrLBCMEJwwtFjMBjM6ZPYaYHrTpqtf3
	awwbEEJiXM1UPE/amXcqiptQX4Sww+c492ssFxeetK2pj3HKrYdPDZiBht+LPLFlpc+DswCyDDf23
	Uv0SiAq3WLdgeRkBO7JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTs2Y-0000000HUPZ-2l3R;
	Fri, 12 Dec 2025 01:33:50 +0000
Received: from mail-m49211.qiye.163.com ([45.254.49.211])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTs2V-0000000HUOR-0ocP
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Dec 2025 01:33:49 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ced0dd4b;
	Fri, 12 Dec 2025 09:33:41 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] PCI: dw-rockchip: Change get_ltssm() to provide L1 Substates info
Date: Fri, 12 Dec 2025 09:33:25 +0800
Message-Id: <1765503205-22184-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1765503205-22184-1-git-send-email-shawn.lin@rock-chips.com>
References: <1765503205-22184-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b10313f1309cckunm8cda450e102e7a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5MT1YaTEsYGUlJGRpIGENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ajQUAVgH8Ox37c0AT3i2esq/AcI/Z8PID6uXJQhx5hO8Pror4pLqOvoEyzWPtxDmTs/uLC02hQ8PPrSW78eSrntRBNh+ldOyVl9Zm8Q1nGDyG6mFJg/AxOR3LG4Enlb603XD0QcgiA6OTYHepHnfF8SP5lKd2FM6lEME1SwdNKs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=bjvekfuXKUY/QHrOhNIiT7hEMtDBUtJGLlM17jv1XzM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_173347_733219_0A8FA64B 
X-CRM114-Status: GOOD (  13.72  )
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

Rename rockchip_pcie_get_ltssm() to rockchip_pcie_get_ltssm_reg() and add
rockchip_pcie_get_ltssm() to get_ltssm() callback in order to show the
proper L1 Substates. The PCIE_CLIENT_LTSSM_STATUS[5:0] register returns
the same LTSSM layout as enum dw_pcie_ltssm. So we only need to tell L1 PM
Substates apart and return the proper value defined in pcie-designware.h.

  cat /sys/kernel/debug/dwc_pcie_a40000000.pcie/ltssm_status
  L1_2 (0x142)

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- fix commit log and subject(Bjorn)
- remove "else" and wrap to fit in 80 columns(Bjorn)

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 29 +++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index f8605fe..8c1c922 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -68,6 +68,11 @@
 #define  PCIE_CLKREQ_NOT_READY		FIELD_PREP_WM16(BIT(0), 0)
 #define  PCIE_CLKREQ_PULL_DOWN		FIELD_PREP_WM16(GENMASK(13, 12), 1)
 
+/* RASDES TBA information */
+#define PCIE_CLIENT_CDM_RASDES_TBA_INFO_CMN	0x154
+#define  PCIE_CLIENT_CDM_RASDES_TBA_L1_1	BIT(4)
+#define  PCIE_CLIENT_CDM_RASDES_TBA_L1_2	BIT(5)
+
 /* Hot Reset Control Register */
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define  PCIE_LTSSM_APP_DLY2_EN		BIT(1)
@@ -181,11 +186,26 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
 	return 0;
 }
 
-static u32 rockchip_pcie_get_ltssm(struct rockchip_pcie *rockchip)
+static u32 rockchip_pcie_get_ltssm_reg(struct rockchip_pcie *rockchip)
 {
 	return rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
 }
 
+static enum dw_pcie_ltssm rockchip_pcie_get_ltssm(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 val = rockchip_pcie_readl_apb(rockchip,
+			PCIE_CLIENT_CDM_RASDES_TBA_INFO_CMN);
+
+	if (val & PCIE_CLIENT_CDM_RASDES_TBA_L1_1)
+		return DW_PCIE_LTSSM_L1_1;
+
+	if (val & PCIE_CLIENT_CDM_RASDES_TBA_L1_2)
+		return DW_PCIE_LTSSM_L1_2;
+
+	return rockchip_pcie_get_ltssm_reg(rockchip) & PCIE_LTSSM_STATUS_MASK;
+}
+
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
@@ -201,7 +221,7 @@ static void rockchip_pcie_disable_ltssm(struct rockchip_pcie *rockchip)
 static bool rockchip_pcie_link_up(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
-	u32 val = rockchip_pcie_get_ltssm(rockchip);
+	u32 val = rockchip_pcie_get_ltssm_reg(rockchip);
 
 	return FIELD_GET(PCIE_LINKUP_MASK, val) == PCIE_LINKUP;
 }
@@ -485,6 +505,7 @@ static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = rockchip_pcie_link_up,
 	.start_link = rockchip_pcie_start_link,
 	.stop_link = rockchip_pcie_stop_link,
+	.get_ltssm = rockchip_pcie_get_ltssm,
 };
 
 static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
@@ -499,7 +520,7 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
 	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
 
 	dev_dbg(dev, "PCIE_CLIENT_INTR_STATUS_MISC: %#x\n", reg);
-	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm(rockchip));
+	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm_reg(rockchip));
 
 	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
 		if (rockchip_pcie_link_up(pci)) {
@@ -526,7 +547,7 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
 	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
 
 	dev_dbg(dev, "PCIE_CLIENT_INTR_STATUS_MISC: %#x\n", reg);
-	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm(rockchip));
+	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm_reg(rockchip));
 
 	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
 		dev_dbg(dev, "hot reset or link-down reset\n");
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
