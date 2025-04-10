Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFCBBC369A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 01:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WAWE9u5/UwHTsPALEmQN0kR686gLl9BrUUOYS+VRcvI=; b=OWTCcVQarlORZ1
	KRjuEV82GrLsEbX4/Aaj0/LnSf2HskHj8P0n6CH7jFkzs66VT0ipZ9GK+fdqkui5+4eVj3dhsm2s7
	IlOt7jqVYPnOnE7AR24B4hHzktLboHp7xuY+wIPx8Qz18PY66khwusdHlq6BDfZzoJLn0AaRsg7/b
	0wWVhli6BKY5j2ZFHCY+gaxr+ZG6KIfrRla1e0t83p5lEd9jWPYInPW5LK4tLFcckazx00FjCXHie
	K4p/tukMLxXYM4nrjfU3XawC/nqbCoi7uGufF7kPjpdjL5oWr2FsBUJ3kY+uQ5WDutcwBHqTSnE4/
	FZ7/UXQYUOdv+QV0nPFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2gy7-00000008y7Z-1XcH;
	Thu, 10 Apr 2025 01:44:39 +0000
Received: from mail-m15588.qiye.163.com ([101.71.155.88])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2gqG-00000008xEi-0aFv
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 01:36:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 114e5ef60;
	Thu, 10 Apr 2025 09:36:28 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] PCI: dw-rockchip: Enable L0S capability
Date: Thu, 10 Apr 2025 09:36:21 +0800
Message-Id: <1744248981-43371-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hJGFZCGk5JSh0ZH0MZGBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a961d5762ce09cckunm114e5ef60
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OFE6Ogw6KzJMCjIrEVEhMTki
	ETEKCVFVSlVKTE9PSU9DQkNCSENKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlKS003Bg++
DKIM-Signature: a=rsa-sha256;
	b=c63JWdE+x5s5JZLvoHg6UMPUPNkG7t2QYXgQB4JaJp8bJTb0vlMVsaIk6TTrskzl/DfNzFSKQyKPkdVj489U/TUoNBsSpq+QECm2oWhjcd5L5KbEFIUs+vJ1QeG/gNow95W69MhjxznH7/gg/mI3Lslu630jpF+Q5QMI2GMVdRI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=oN7Fx3ZF2Uu3Okzovtu+9jYiTBMBTahqeqCbWdeeYlU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_183632_661326_CF5797AD 
X-CRM114-Status: GOOD (  11.47  )
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

L0S capability isn't enabled on all SoCs by default, so enabling it
in order to make ASPM L0S work on Rockchip platforms. We have been
testing it for quite a long time and the default FTS number provided
by DWC core is broken since it fits only for DWC PHY IP but not for
other types of PHY IP from other vendors.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 21dc99c..56acfea 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -185,6 +185,20 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
 static int rockchip_pcie_start_link(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 cap, lnkcap;
+
+	/* Enable L0S capability for all SoCs */
+	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	if (cap) {
+		/* Default fts number(210) is broken, override it */
+		pci->n_fts[0] = 255; /* Gen1 */
+		pci->n_fts[1] = 255; /* Gen2+ */
+		lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
+		lnkcap |= PCI_EXP_LNKCAP_ASPM_L0S;
+		dw_pcie_dbi_ro_wr_en(pci);
+		dw_pcie_writel_dbi(pci, cap + PCI_EXP_LNKCAP, lnkcap);
+		dw_pcie_dbi_ro_wr_dis(pci);
+	}
 
 	/* Reset device */
 	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
