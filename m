Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBC7AC369B1
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Apr 2025 01:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lO6zOCoISidGgTIpSpuTg2WmtqXi9K/GaFM+O0Xqlbk=; b=aeCFvbRZ0RA0Fu
	eCyEnAgbCgCSyJ07UNZWcWwtQapMRmB53lbIfDFXsAZpxjnixj7g5O74yQFnbr20Pi/SytqCiDeYl
	QT/8TjDWfcRjAs0ZzAF/dmT71T9OkPpRcrYMXn/e7usZ1iL3/Sq5l6s22KmjsLrAQrrU+5HgxzWD2
	pAaRzPW7v68Af6SQPdR0P4sZJlhnMZcZZzFmtBOGqH8EWufUxS5kJi6JytZbzlIuIYtDkVcCebk2k
	tFYY3N8yRdyv7RGS82EJ9nWBWLiS4By9s8L2KHPruNIiYB3hPNS1X6nd//UwKhsiuZY3TkKJlg11Y
	G+1dEp52W2Lk3MazvfzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u48cH-00000000QVh-0Nk9;
	Mon, 14 Apr 2025 01:28:05 +0000
Received: from mail-m3276.qiye.163.com ([220.197.32.76])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u48cE-00000000QTg-0LOC
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Apr 2025 01:28:04 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 11ba07f80;
	Mon, 14 Apr 2025 09:27:41 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 1/2] PCI: dw-rockchip: Enable L0S capability
Date: Mon, 14 Apr 2025 09:27:31 +0800
Message-Id: <1744594051-209255-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU4YSFYfS0lDGEweGhgYGU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9631e8c83109cckunm11ba07f80
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mkk6ERw6FjJWMC4vTigNQw8J
	FkxPCx5VSlVKTE9PTkJPS01JT0pIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhJSEM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=JjQO4ABunhJdKRnzLJ4GefumjA2BsuJwEd/MgJdR08IcrhX0iGiQXDWtKnF8yRBczCq6oAUFdcRHzWbAglTGLZ70wJdUjhJvflquK/ulQ2y5E2tMRr1v2XjAv/LoJr+kSBACfQcJxAjVtNAOxAtXt26jgQnR7df7xEUpSFIHjJ0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=OxdNaXCyAeYXEowqe4VRE8Max3v8FCj6DS4Psx2YHb4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_182802_267091_083D98F1 
X-CRM114-Status: GOOD (  15.33  )
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
Changes in v3:
- Add rockchip_pcie_enable_l0s() and called from .init()

Changes in v2:
- Move n_fts to probe function
- rewrite the commit message

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 21dc99c..922aff0 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -182,6 +182,21 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
 	return 0;
 }
 
+static void rockchip_pcie_enable_l0s(struct dw_pcie *pci)
+{
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
+}
+
 static int rockchip_pcie_start_link(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
@@ -231,6 +246,8 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
 					 rockchip);
 
+	rockchip_pcie_enable_l0s(pci);
+
 	return 0;
 }
 
@@ -271,6 +288,8 @@ static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	enum pci_barno bar;
 
+	rockchip_pcie_enable_l0s(pci);
+
 	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
 		dw_pcie_ep_reset_bar(pci, bar);
 };
@@ -598,6 +617,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
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
