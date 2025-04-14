Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F418AC3601E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Apr 2025 01:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDCyoJHj62jbGf/jVX7a/TUQKI4+06uMeokwhRwhiQ0=; b=1h6+uJQMkwofQv
	ZlEcwye0kV6Eltl0LE95tbHDkmJO6Lv4qVLJ6RrN/WNYUI4NQsQIgOkFVOnuVM5ZVpzcNjLwXSvIO
	F03/YHuon/AAIhllWTcBeZm9yAVT44rTl5YybdLHNk3fapTrwcxY+JXVkEqinmVIE5rVEGzatfVe7
	vc43gUQfoiJGWGyty0iIuDZj5Gj/2DZAK+fkhT8+mhjQi2dAxRDkoe1ionGb1QSUQ+3/mvVUAjaQw
	VuT10aYtvuit5tYq9yorV5dk8YpKQAAZadrgnbD5AimJi1afJ567hSlG6MKLQwoiZ1JnOuFDqrVql
	wPBFAs/1nBLlyM4JceHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u48cu-00000000QYh-31Wm;
	Mon, 14 Apr 2025 01:28:44 +0000
Received: from mail-m19731100.qiye.163.com ([220.197.31.100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u48cr-00000000QXv-2uYJ
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Apr 2025 01:28:43 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 11ba080e5;
	Mon, 14 Apr 2025 09:28:38 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 2/2] PCI: dw-rockchip: Move rockchip_pcie_ep_hide_broken_ats_cap_rk3588() to .init()
Date: Mon, 14 Apr 2025 09:28:29 +0800
Message-Id: <1744594109-209312-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1744594051-209255-1-git-send-email-shawn.lin@rock-chips.com>
References: <1744594051-209255-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkgZQ1YdQ0lPQkxLGB8ZTh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9631e9a7a509cckunm11ba080e5
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODI6Njo*CjJNAi4VThlMFDxI
	ED8aClFVSlVKTE9PTkJPSkpCT01IVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlISko3Bg++
DKIM-Signature: a=rsa-sha256;
	b=b7SYh4S7XlMIKDKrrUG0lH9skDFqDH2VaFj0s4zgM3uINWgK6ESM6//jDRu2YTC/KcjecZW0BVPhLwCmP5U9g8n56yw6G6MPh9hz8HiaAPY8OjcZ5ZEFyb5nOQ1kXEq8e/f+t5vC7LbbrjUTE3lq5Yxv/MpGTI5+DjRWbv0URrw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=5A4TBHvuXi69hu9oUHOU20qjziwkwnj8HnqCaEmrLaY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_182842_089957_FEFED0E0 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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

Iif there is a core reset, _init() is called again, but _pre_init() is
not.

Suggested-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 922aff0..b45af18 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -278,17 +278,13 @@ static void rockchip_pcie_ep_hide_broken_ats_cap_rk3588(struct dw_pcie_ep *ep)
 		dev_err(dev, "failed to hide ATS capability\n");
 }
 
-static void rockchip_pcie_ep_pre_init(struct dw_pcie_ep *ep)
-{
-	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
-}
-
 static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	enum pci_barno bar;
 
 	rockchip_pcie_enable_l0s(pci);
+	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
 
 	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
 		dw_pcie_ep_reset_bar(pci, bar);
@@ -359,7 +355,6 @@ rockchip_pcie_get_features(struct dw_pcie_ep *ep)
 
 static const struct dw_pcie_ep_ops rockchip_pcie_ep_ops = {
 	.init = rockchip_pcie_ep_init,
-	.pre_init = rockchip_pcie_ep_pre_init,
 	.raise_irq = rockchip_pcie_raise_irq,
 	.get_features = rockchip_pcie_get_features,
 };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
