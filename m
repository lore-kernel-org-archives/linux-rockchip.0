Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4B14C369A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 00:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=batvXlxHZxChZzKLCGB9ZEb990+rrMjnppCjSnyR2SY=; b=HfTvI5z3720ru8
	GTML6gHXC7rHcd99jT22rCWZBZ6sDXX4fhIb+S7d5LsHg0s5AV5Zt+XYgoILV+HiQac/Is3pa/H1p
	xsryi6vkVpUsWgnI28ggctADTLR5UQSlWipcigmdqkQQ4kSBChHLbyW41cQ1gBzcLser51dVDvDo7
	iFJe4gbT3tWMOushcz0icIDvYgZUEvOu8T3dvhg6vP+wmaD81oRelbHF6TIJuIpKegQZBPMO67NPN
	QoPaib6CzzVY3k2tIj/ZuN9qmPu+TWcF751MHucS9vjIwI++WHPCYFHZMajqYDtrt4EHNCAv2rMD8
	Ani0YRto9FKu1H6HG9Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u32gB-0000000CAzu-3DDA;
	Fri, 11 Apr 2025 00:55:35 +0000
Received: from mail-m49211.qiye.163.com ([45.254.49.211])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u32Z3-0000000CADV-1PO3
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 00:48:15 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1173be577;
	Fri, 11 Apr 2025 08:48:07 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] PCI: dw-rockchip: Enable L0S capability
Date: Fri, 11 Apr 2025 08:48:01 +0800
Message-Id: <1744332481-143011-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tJGVZCHhlNT0pNTktDSE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9622517d4209cckunm1173be577
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PSI6Agw6KDJIFjYLMzUvSxwq
	PAgwFBFVSlVKTE9PSEhJT0NDQk1CVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlNSEk3Bg++
DKIM-Signature: a=rsa-sha256;
	b=DEYbkOXqgzukVwE3YP9MmCCjyDojosC0TIml55pd/opPYMdATgyQ0dfDsYby7OiXEV2et2uU73LP7c1xmcxxJPh07WFUPuB46TcEbUaq4kp2MQGVeFLdYHCqT9mqByM1k1rP7O4f9hM4IMbpHGSDMeKxyLh9kpwwq5BFLS0aT0A=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=EXKzYEqYiTE9w2mRpKEMs5Wxk/nTiA8EzLVI2PN8O4Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_174813_909520_F6367C21 
X-CRM114-Status: GOOD (  13.17  )
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
testing it for quite a long time and found the default FTS number
provided by DWC core doesn't work stable and make LTSSM switch between
L0S and Recovery, leading to long exit latency, even fail to link sometimes.
So override it to the max 255 which seems work fine under test for both PHYs
used by Rockchip platforms.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- Move n_fts to probe function
- rewrite the commit message

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 21dc99c..c397f3a 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -185,6 +185,17 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
 static int rockchip_pcie_start_link(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 cap, lnkcap;
+
+	/* Enable L0S capability for all SoCs */
+	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	if (cap) {
+		lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
+		lnkcap |= PCI_EXP_LNKCAP_ASPM_L0S;
+		dw_pcie_dbi_ro_wr_en(pci);
+		dw_pcie_writel_dbi(pci, cap + PCI_EXP_LNKCAP, lnkcap);
+		dw_pcie_dbi_ro_wr_dis(pci);
+	}
 
 	/* Reset device */
 	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
@@ -598,6 +609,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	rockchip->pci.dev = dev;
 	rockchip->pci.ops = &dw_pcie_ops;
 	rockchip->data = data;
+	/* Default fts number(210) is broken, override it to 255 */
+	rockchip->pci.n_fts[0] = 255; /* Gen1 */
+	rockchip->pci.n_fts[1] = 255; /* Gen2+ */
 
 	ret = rockchip_pcie_resource_get(pdev, rockchip);
 	if (ret)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
