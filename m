Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04886D25030
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 01:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqfhytqXRT/5h9V0ngKVfv4II07n9vNwzvm9m8cgAq0=; b=Kpt+07RVWf5Gr7
	OLTiIFt8GN/YCHTHzYbfvTW899L6qwgZMvk1DFLi2yLh8HH89GSRXeMwCS4VjuI14QNsmEM4LDon2
	BbM4o1d1FAsUZWsTv/d7Bc8tcIHZMerxKOQJzWzFCIq/Asj63jQe1fIyQiXWhF80trU5V8yfuBKgA
	5+Y+Fcupebp37Dh0kXvNhziq/rMeTl1Kgk52LMVc7GvTOIUxAm/3wI+hWezadK/q6iYuUkNK0jzoZ
	yKMP7PWIsheA/jCBdn3yfc4x+StBQ5Lv6tlr3Go0JwgELqhB/AdylKGGbFTchtCHuFkb56N+ZMMPK
	jEPC/opBovj6G4gcySzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6bs-00000004cxQ-2Kre;
	Mon, 12 Jan 2026 01:20:46 +0000
Received: from mail-m82213678.xmail.ntesmail.com ([8.221.36.78])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6bo-00000004ctz-0rsU
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 01:20:43 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 303e91937;
	Mon, 12 Jan 2026 09:20:33 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition trace support
Date: Mon, 12 Jan 2026 09:20:00 +0800
Message-Id: <1768180800-63364-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768180800-63364-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768180800-63364-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bafca5b9109cckunme7c7221b25b240
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGksaTFZITBgfQ0hKSB9KTxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Oxd0oj2qIKPgVMH/gYNeLYzPhsF9UrEMkF0ZkPa2uQG/p5D0nhzXQPAdYuKasOkyj87H6dR8vc2E+xAPSGr0RMxCQfHp4nXgIeTOKtjhAmbZsYpSJsQ3bo9ochxnDXSfMnv9bBEdqA7wfDGHxM3QdczLRKI0g6CAMRV7rpl0KtQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ZgxJOYtEUZZ9lDjUn8KCpSUAe2bzrN8TYgmqnZ6nm/I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_172041_561142_B2C57DF3 
X-CRM114-Status: GOOD (  19.84  )
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

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3:
- reorder variables(Mani)
- rename loop to i; rename en to enable(Mani)
- use FIELD_GET(Mani)
- add comment about how the FIFO works(Mani)

Changes in v2:
- use tracepoint

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 104 ++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 352f513..344e0b9 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -22,6 +22,8 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
+#include <linux/workqueue.h>
+#include <trace/events/pci_controller.h>
 
 #include "../../pci.h"
 #include "pcie-designware.h"
@@ -73,6 +75,20 @@
 #define  PCIE_CLIENT_CDM_RASDES_TBA_L1_1	BIT(4)
 #define  PCIE_CLIENT_CDM_RASDES_TBA_L1_2	BIT(5)
 
+/* Debug FIFO information */
+#define PCIE_CLIENT_DBG_FIFO_MODE_CON	0x310
+#define  PCIE_CLIENT_DBG_EN		0xffff0007
+#define  PCIE_CLIENT_DBG_DIS		0xffff0000
+#define PCIE_CLIENT_DBG_FIFO_PTN_HIT_D0	0x320
+#define PCIE_CLIENT_DBG_FIFO_PTN_HIT_D1	0x324
+#define PCIE_CLIENT_DBG_FIFO_TRN_HIT_D0	0x328
+#define PCIE_CLIENT_DBG_FIFO_TRN_HIT_D1	0x32c
+#define  PCIE_CLIENT_DBG_TRANSITION_DATA 0xffff0000
+#define PCIE_CLIENT_DBG_FIFO_STATUS	0x350
+#define  PCIE_DBG_FIFO_RATE_MASK	GENMASK(22, 20)
+#define  PCIE_DBG_FIFO_L1SUB_MASK	GENMASK(10, 8)
+#define PCIE_DBG_LTSSM_HISTORY_CNT	64
+
 /* Hot Reset Control Register */
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define  PCIE_LTSSM_APP_DLY2_EN		BIT(1)
@@ -96,6 +112,7 @@ struct rockchip_pcie {
 	struct irq_domain *irq_domain;
 	const struct rockchip_pcie_of_data *data;
 	bool supports_clkreq;
+	struct delayed_work trace_work;
 };
 
 struct rockchip_pcie_of_data {
@@ -206,6 +223,89 @@ static enum dw_pcie_ltssm rockchip_pcie_get_ltssm(struct dw_pcie *pci)
 	return rockchip_pcie_get_ltssm_reg(rockchip) & PCIE_LTSSM_STATUS_MASK;
 }
 
+#ifdef CONFIG_TRACING
+static void rockchip_pcie_ltssm_trace_work(struct work_struct *work)
+{
+	struct rockchip_pcie *rockchip = container_of(work, struct rockchip_pcie,
+						trace_work.work);
+	struct dw_pcie *pci = &rockchip->pci;
+	enum dw_pcie_ltssm state;
+	u32 i, l1ss, prev_val = DW_PCIE_LTSSM_UNKNOWN, rate, val;
+
+	for (i = 0; i < PCIE_DBG_LTSSM_HISTORY_CNT; i++) {
+		val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_DBG_FIFO_STATUS);
+		rate = FIELD_GET(PCIE_DBG_FIFO_RATE_MASK, val);
+		l1ss = FIELD_GET(PCIE_DBG_FIFO_L1SUB_MASK, val);
+		val = FIELD_GET(PCIE_LTSSM_STATUS_MASK, val);
+
+		/*
+		 * Hardware Mechanism: The ring FIFO employs two tracking counters:
+		 * - 'last-read-point': maintains the user's last read position
+		 * - 'last-valid-point': tracks the hardware's last state update
+		 *
+		 * Software Handling: When two consecutive LTSSM states are identical,
+		 * it indicates invalid subsequent data in the FIFO. In this case, we
+		 * skip the remaining entries. The dual-counter design ensures that on
+		 * the next state transition, reading can resume from the last user
+		 * position.
+		 */
+		if ((i > 0 && val == prev_val) || val > DW_PCIE_LTSSM_RCVRY_EQ3)
+			break;
+
+		state = prev_val = val;
+		if (val == DW_PCIE_LTSSM_L1_IDLE) {
+			if (l1ss == 2)
+				state = DW_PCIE_LTSSM_L1_2;
+			else if (l1ss == 1)
+				state = DW_PCIE_LTSSM_L1_1;
+		}
+
+		trace_pcie_ltssm_state_transition(dev_name(pci->dev),
+					dw_pcie_ltssm_status_string(state),
+					((rate + 1) > pci->max_link_speed) ?
+					PCI_SPEED_UNKNOWN : PCIE_SPEED_2_5GT + rate);
+	}
+
+	schedule_delayed_work(&rockchip->trace_work, msecs_to_jiffies(5000));
+}
+
+static void rockchip_pcie_ltssm_trace(struct rockchip_pcie *rockchip,
+				      bool enable)
+{
+	if (enable) {
+		rockchip_pcie_writel_apb(rockchip,
+					 PCIE_CLIENT_DBG_TRANSITION_DATA,
+					 PCIE_CLIENT_DBG_FIFO_PTN_HIT_D0);
+		rockchip_pcie_writel_apb(rockchip,
+					 PCIE_CLIENT_DBG_TRANSITION_DATA,
+					 PCIE_CLIENT_DBG_FIFO_PTN_HIT_D1);
+		rockchip_pcie_writel_apb(rockchip,
+					 PCIE_CLIENT_DBG_TRANSITION_DATA,
+					 PCIE_CLIENT_DBG_FIFO_TRN_HIT_D0);
+		rockchip_pcie_writel_apb(rockchip,
+					 PCIE_CLIENT_DBG_TRANSITION_DATA,
+					 PCIE_CLIENT_DBG_FIFO_TRN_HIT_D1);
+		rockchip_pcie_writel_apb(rockchip,
+					 PCIE_CLIENT_DBG_EN,
+					 PCIE_CLIENT_DBG_FIFO_MODE_CON);
+
+		INIT_DELAYED_WORK(&rockchip->trace_work,
+				  rockchip_pcie_ltssm_trace_work);
+		schedule_delayed_work(&rockchip->trace_work, 0);
+	} else {
+		rockchip_pcie_writel_apb(rockchip,
+					 PCIE_CLIENT_DBG_DIS,
+					 PCIE_CLIENT_DBG_FIFO_MODE_CON);
+		cancel_delayed_work_sync(&rockchip->trace_work);
+	}
+}
+#else
+static void rockchip_pcie_ltssm_trace(struct rockchip_pcie *rockchip,
+				      bool enable)
+{
+}
+#endif
+
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
@@ -289,6 +389,9 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	 * 100us as we don't know how long should the device need to reset.
 	 */
 	msleep(PCIE_T_PVPERL_MS);
+
+	rockchip_pcie_ltssm_trace(rockchip, true);
+
 	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
 
 	return 0;
@@ -299,6 +402,7 @@ static void rockchip_pcie_stop_link(struct dw_pcie *pci)
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
 
 	rockchip_pcie_disable_ltssm(rockchip);
+	rockchip_pcie_ltssm_trace(rockchip, false);
 }
 
 static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
