Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E50DC369C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 01:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhJNETvQYvOlhw8VbpndCkGbcZr5qk5sNEiYumMzRsM=; b=KUhcykLkeuIMUt
	SEOJCgRLsV0p0pDAohxLlNyGdjGxlgoo5EK3xWoVng7YvTedL4egT/ZoXOsmPfJEOG3mxgf6+F+/0
	WTaPoTiNswaQUZgEEcxMjtBBVcYH8HxjLlxWGZgR7Mk4F5W5W1bQsLolDuTRnvoZijJaoWIvCb17k
	OquvwsLwQmxUALa6AhFxADu8iFkTjYHuYnmJxVKJBfRZ2klmon0f8lFBAs2rwhTaqJqqa9d3nj39Q
	bexViQQcbouFH222mJTIY08/4h43sPWAjhaUzQ9Ho4igXhT7f/vzagT001F4M9YMrin5vlHSvaii6
	OpzWbeU4SYKIVdQaU4DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Dwx-0000000BQCO-0y4W;
	Thu, 17 Apr 2025 01:21:55 +0000
Received: from mail-m93237.xmail.ntesmail.com ([103.126.93.237])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5DE4-0000000BJtE-3YCJ
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 00:35:35 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1224c9fcc;
	Thu, 17 Apr 2025 08:35:22 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 2/3] PCI: dw-rockchip: Enable L0S capability
Date: Thu, 17 Apr 2025 08:35:10 +0800
Message-Id: <1744850111-236269-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUoYH1YdGkJNT0NDSUJDHU9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96412bf76d09cckunm1224c9fcc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mjo6Fjo6IjJPQxIsN1EaSRwU
	Mk4wFDNVSlVKTE9PQ05LSklITUtLVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhPTkk3Bg++
DKIM-Signature: a=rsa-sha256;
	b=Ll+f3hVibvz98qjZUuX4AqAybXXMLdFBMW0bQ6td5t6TEeCzB1o7vSTxcekXYN16M1aC8Q8z28jWsZrQdNFVmyURC817M6PULpJk9MRrPOX9YNC1J4LkIwRBOTyFxtj2UMelxxP7B4tpVZwvXuIbNsACp9BvRQoMOFBfeH/wL/E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3zV4zLHBFMBDkTaI0ymuEzaxulPPeYl/7men0nXYlkA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_173533_443551_A42C4DBA 
X-CRM114-Status: GOOD (  15.00  )
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
L0S and Recovery, leading to long exit latency, even fail to link
sometimes. So override it to the max 255 which seems work fine under test
for both PHYs used by Rockchip platforms.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
---

Changes in v4:
- Add Niklas's review tag

Changes in v3:
- Add rockchip_pcie_enable_l0s() and called from .init()

Changes in v2:
- Move n_fts to probe function
- rewrite the commit message

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 21dc99c..e4519c0 100644
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
@@ -599,6 +618,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	rockchip->pci.ops = &dw_pcie_ops;
 	rockchip->data = data;
 
+	/* Default N_FTS value (210) is broken, override it to 255 */
+	rockchip->pci.n_fts[0] = 255; /* Gen1 */
+	rockchip->pci.n_fts[1] = 255; /* Gen2+ */
+
 	ret = rockchip_pcie_resource_get(pdev, rockchip);
 	if (ret)
 		return ret;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
