Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80198C47BD0
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 09:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAgOAdo3kF1VoMpHQq0Q+2c/znp8TKSH3Uh4L9NY6j0=; b=hLdKdvVWlA5TkG
	s63+VIV3fv5c4bKD8Fvo+Qz6ewWxOgUv9RgpbV7FH7rOlCwlpc4+mypNAPbbSCFyo6UWm3WXaJqxe
	w3CPTZl1h5p8nd/eFDF7j5mD1DyQv8QhkJYB0GHRvL7w2Ub3tgrVy4O6iIO8sWuCr/YN/Pn63K8hA
	QKI1Cx4LXn5pZ3Is87RGq4pZGfCWaPhd7oKpF75+f2FG4dkH8sZCKCdS41ix6DpX/Ig0vI/sOAC+i
	Fy3NfZhSmoc4ajmp9lLS9eNGT6XSr8t88W3Il0nc1Iu4Qn1r3YS6Kx+EagJYT+YTNevj1w+pZi6wT
	dAtWSA9rhb4nk6ex0KtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3DU-0000000Ch1u-2yZo;
	Tue, 06 Jan 2026 09:19:04 +0000
Received: from mail-m1973174.qiye.163.com ([220.197.31.74])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3DS-0000000Ch0z-13Ry
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jan 2026 09:19:04 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2faab483a;
	Tue, 6 Jan 2026 17:18:52 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] PCI: dw-rockchip: Add .ltssm_trace() support
Date: Tue,  6 Jan 2026 17:18:39 +0800
Message-Id: <1767691119-28287-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1767691119-28287-1-git-send-email-shawn.lin@rock-chips.com>
References: <1767691119-28287-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b929a1fc709cekunm960b3024166f970
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pOHVZCSkxOHR9ITE8ZShlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=U5VxXzFokA8wim/vURXU1f/ILfuF1UrB9Kx+nGGb4K3V46t/EF6upYHhwNLrha0RF+Cf0VtqFDKJ5NtoNPB69C458kgOX16Fg+mTd2EM8lUTbOQPmMXbo0UA1YJNAf281pER0sErsHNc2qO8UhAEnOZ6oDY65fimfyLF4J9bIhI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=IP58kk+Qem1BCoFGvpUji/gld40XYbln6qdHAO2WZdw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_011902_937760_B8448D4B 
X-CRM114-Status: GOOD (  15.23  )
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

Rockchip platforms provide a 64x4 bytes debug FIFO to trace the
LTSSM history. Any LTSSM change will be recorded. It's userful
for debug purpose, for example link failure, etc.

  cat /sys/kernel/debug/dwc_pcie_a40c00000.pcie/ltssm_trace
    DETECT_QUIET (0x00)
    DETECT_ACT (0x01)
    POLL_ACTIVE (0x02)
    POLL_COMPLIANCE (0x03)
    POLL_ACTIVE (0x02)
    POLL_CONFIG (0x04)
    CFG_LINKWD_START (0x07)
    ...
    RCVRY_IDLE (0x10)
    L0 (0x11)
    L123_SEND_EIDLE (0x13)
    L1_IDLE (0x14)
    RCVRY_LOCK (0x0d)
    ...

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 352f513ebf03..0f7430e686b2 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -73,6 +73,17 @@
 #define  PCIE_CLIENT_CDM_RASDES_TBA_L1_1	BIT(4)
 #define  PCIE_CLIENT_CDM_RASDES_TBA_L1_2	BIT(5)
 
+/* Debug FIFO information */
+#define PCIE_CLIENT_DBG_FIFO_MODE_CON	0x310
+#define  PCIE_CLIENT_DBG_EN		0xffff0007
+#define PCIE_CLIENT_DBG_FIFO_PTN_HIT_D0	0x320
+#define PCIE_CLIENT_DBG_FIFO_PTN_HIT_D1	0x324
+#define PCIE_CLIENT_DBG_FIFO_TRN_HIT_D0	0x328
+#define PCIE_CLIENT_DBG_FIFO_TRN_HIT_D1	0x32c
+#define  PCIE_CLIENT_DBG_TRANSITION_DATA 0xffff0000
+#define PCIE_CLIENT_DBG_FIFO_STATUS	0x350
+#define PCIE_DBG_LTSSM_HISTORY_CNT	64
+
 /* Hot Reset Control Register */
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define  PCIE_LTSSM_APP_DLY2_EN		BIT(1)
@@ -96,6 +107,7 @@ struct rockchip_pcie {
 	struct irq_domain *irq_domain;
 	const struct rockchip_pcie_of_data *data;
 	bool supports_clkreq;
+	struct dw_pcie_ltssm_history ltssm_history;
 };
 
 struct rockchip_pcie_of_data {
@@ -206,6 +218,34 @@ static enum dw_pcie_ltssm rockchip_pcie_get_ltssm(struct dw_pcie *pci)
 	return rockchip_pcie_get_ltssm_reg(rockchip) & PCIE_LTSSM_STATUS_MASK;
 }
 
+static void rockchip_pcie_enable_ltssm_trace(struct rockchip_pcie *rockchip)
+{
+        rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DBG_TRANSITION_DATA,
+				 PCIE_CLIENT_DBG_FIFO_PTN_HIT_D0);
+        rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DBG_TRANSITION_DATA,
+				 PCIE_CLIENT_DBG_FIFO_PTN_HIT_D1);
+        rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DBG_TRANSITION_DATA,
+				 PCIE_CLIENT_DBG_FIFO_TRN_HIT_D0);
+        rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DBG_TRANSITION_DATA,
+				 PCIE_CLIENT_DBG_FIFO_TRN_HIT_D1);
+        rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DBG_EN,
+				 PCIE_CLIENT_DBG_FIFO_MODE_CON);
+}
+
+static struct dw_pcie_ltssm_history* rockchip_pcie_ltssm_trace(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 loop, val;
+
+	for (loop = 0; loop < PCIE_DBG_LTSSM_HISTORY_CNT; loop++) {
+		val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_DBG_FIFO_STATUS) &
+					PCIE_LTSSM_STATUS_MASK;
+		rockchip->ltssm_history.states[loop] = val;
+	}
+
+	return &rockchip->ltssm_history;
+}
+
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
@@ -277,6 +317,8 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	/* Reset device */
 	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
 
+	rockchip_pcie_enable_ltssm_trace(rockchip);
+
 	rockchip_pcie_enable_ltssm(rockchip);
 
 	/*
@@ -506,6 +548,7 @@ static const struct dw_pcie_ops dw_pcie_ops = {
 	.start_link = rockchip_pcie_start_link,
 	.stop_link = rockchip_pcie_stop_link,
 	.get_ltssm = rockchip_pcie_get_ltssm,
+	.ltssm_trace = rockchip_pcie_ltssm_trace,
 };
 
 static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
@@ -645,6 +688,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	rockchip->pci.ops = &dw_pcie_ops;
 	rockchip->data = data;
 
+	rockchip->ltssm_history.count = PCIE_DBG_LTSSM_HISTORY_CNT;
+	rockchip->ltssm_history.states = devm_kzalloc(dev,
+			PCIE_DBG_LTSSM_HISTORY_CNT * sizeof(u32), GFP_KERNEL);
+	if (!rockchip->ltssm_history.states)
+		return -ENOMEM;
+
 	/* Default N_FTS value (210) is broken, override it to 255 */
 	rockchip->pci.n_fts[0] = 255; /* Gen1 */
 	rockchip->pci.n_fts[1] = 255; /* Gen2+ */
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
