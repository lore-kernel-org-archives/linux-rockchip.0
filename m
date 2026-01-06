Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82039C47BD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 09:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R34e48CK3Dn7rUVwt6018Xy4b/lWbh28x9fPQzK6iOs=; b=NzVy8Q+fXIQsce
	opMAw/sj6F2YJ0XVMi7rip/9cPRKbLn5Eb9ocll7ICDKt/MvSiMa8/lbc6k6YTxaAR6Z1V0S3tPqr
	McXTbvbz0T22dTOudzG6zjalpYdbe6U2rI+cC75UyW1omSnlxVoMiYIy0FIDbSElhtVzQUy1s8vge
	Tzva2BaZM+LRCLcE6hx+nafGcJ2phTxklYwMECrJ9nBvbLJP/E8MMa1kbaVAhbJYhH0OUjN30FB0P
	wvTUQqe0CbfH7Cc/259qzJnDQ7N2J9/VP48BjSUD2YOdWg1DsB/9rSDtSGJKB2y/ZD7tgaqEOEZH0
	Gz+L/hv52kuq25RijfRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3DV-0000000Ch26-449C;
	Tue, 06 Jan 2026 09:19:05 +0000
Received: from mail-m1973170.qiye.163.com ([220.197.31.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3DS-0000000Ch0y-0tlC
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jan 2026 09:19:04 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2faab4829;
	Tue, 6 Jan 2026 17:18:50 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] PCI: dwc: Add LTSSM tracing support to debugfs
Date: Tue,  6 Jan 2026 17:18:38 +0800
Message-Id: <1767691119-28287-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9b929a145509cekunm960b3024166f93e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtLTlYaS00dQkweGRpOS0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QB0TQuWzncQcG7xaEDg/Mb/C7uRhXYieZQu0yfl1/pX5mMuqy9Nqg6maBHSOianagwlmjG+4BY3+huoctXWmGjbkPJVg8v7paL62B54/5wx6GIdvDxNBWH/LPc9MgYBGgaAgDiqUuKllkVNDj3rHbhe2Z5SaUBvR/WfQlhOSwBQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=aBj8Utrniq8SlTD9HEuIz3zb59ewyLcmf8DwOngwudI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_011902_937623_D837DB04 
X-CRM114-Status: GOOD (  12.39  )
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

Some platforms may provide LTSSM trace functionality, recording historical
LTSSM state transition information. This is very useful for debugging, such
as when certain devices cannot be recognized. Add an ltssm_trace operation
node in debugfs for platform which could provide these information to show
the LTSSM history.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 .../controller/dwc/pcie-designware-debugfs.c  | 44 +++++++++++++++++++
 drivers/pci/controller/dwc/pcie-designware.h  |  6 +++
 2 files changed, 50 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-debugfs.c b/drivers/pci/controller/dwc/pcie-designware-debugfs.c
index df98fee69892..569e8e078ef2 100644
--- a/drivers/pci/controller/dwc/pcie-designware-debugfs.c
+++ b/drivers/pci/controller/dwc/pcie-designware-debugfs.c
@@ -511,6 +511,38 @@ static int ltssm_status_open(struct inode *inode, struct file *file)
 	return single_open(file, ltssm_status_show, inode->i_private);
 }
 
+static struct dw_pcie_ltssm_history *dw_pcie_ltssm_trace(struct dw_pcie *pci)
+{
+	if (pci->ops && pci->ops->ltssm_trace)
+		return pci->ops->ltssm_trace(pci);
+
+	return NULL;
+}
+
+static int ltssm_trace_show(struct seq_file *s, void *v)
+{
+	struct dw_pcie *pci = s->private;
+	struct dw_pcie_ltssm_history *history;
+	enum dw_pcie_ltssm val;
+	u32 loop;
+
+	history = dw_pcie_ltssm_trace(pci);
+	if (!history)
+		return 0;
+
+	for (loop = 0; loop < history->count; loop++) {
+		val = history->states[loop];
+		seq_printf(s, "%s (0x%02x)\n", ltssm_status_string(val), val);
+	}
+
+	return 0;
+}
+
+static int ltssm_trace_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, ltssm_trace_show, inode->i_private);
+}
+
 #define dwc_debugfs_create(name)			\
 debugfs_create_file(#name, 0644, rasdes_debug, pci,	\
 			&dbg_ ## name ## _fops)
@@ -552,6 +584,11 @@ static const struct file_operations dwc_pcie_ltssm_status_ops = {
 	.read = seq_read,
 };
 
+static const struct file_operations dwc_pcie_ltssm_trace_ops = {
+	.open = ltssm_trace_open,
+	.read = seq_read,
+};
+
 static void dwc_pcie_rasdes_debugfs_deinit(struct dw_pcie *pci)
 {
 	struct dwc_pcie_rasdes_info *rinfo = pci->debugfs->rasdes_info;
@@ -644,6 +681,12 @@ static void dwc_pcie_ltssm_debugfs_init(struct dw_pcie *pci, struct dentry *dir)
 			    &dwc_pcie_ltssm_status_ops);
 }
 
+static void dwc_pcie_ltssm_trace_debugfs_init(struct dw_pcie *pci, struct dentry *dir)
+{
+	debugfs_create_file("ltssm_trace", 0444, dir, pci,
+			    &dwc_pcie_ltssm_trace_ops);
+}
+
 static int dw_pcie_ptm_check_capability(void *drvdata)
 {
 	struct dw_pcie *pci = drvdata;
@@ -922,6 +965,7 @@ void dwc_pcie_debugfs_init(struct dw_pcie *pci, enum dw_pcie_device_mode mode)
 			err);
 
 	dwc_pcie_ltssm_debugfs_init(pci, dir);
+	dwc_pcie_ltssm_trace_debugfs_init(pci, dir);
 
 	pci->mode = mode;
 	pci->ptm_debugfs = pcie_ptm_create_debugfs(pci->dev, pci,
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 5cd27f5739f1..0df18995b7fe 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -395,6 +395,11 @@ enum dw_pcie_ltssm {
 	DW_PCIE_LTSSM_UNKNOWN = 0xFFFFFFFF,
 };
 
+struct dw_pcie_ltssm_history {
+    enum dw_pcie_ltssm *states;
+    u32 count;
+};
+
 struct dw_pcie_ob_atu_cfg {
 	int index;
 	int type;
@@ -499,6 +504,7 @@ struct dw_pcie_ops {
 			      size_t size, u32 val);
 	bool	(*link_up)(struct dw_pcie *pcie);
 	enum dw_pcie_ltssm (*get_ltssm)(struct dw_pcie *pcie);
+	struct dw_pcie_ltssm_history * (*ltssm_trace)(struct dw_pcie *pcie);
 	int	(*start_link)(struct dw_pcie *pcie);
 	void	(*stop_link)(struct dw_pcie *pcie);
 	int	(*assert_perst)(struct dw_pcie *pcie, bool assert);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
