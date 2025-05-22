Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A6C0C54E90
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 12:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GsyYrfdwDXMeBNdF3s16ZOaod2hxYaZ9RCEtCaCKJ+E=; b=xX6fnHY4eW5dTR
	tx/1/67zs7mIwsYu3J7Za50GrhsRZEWj3lQzL0tW17WPXHGmE4HmGeUdWaBjoA2me5Q+FWX6PAvLh
	BpFy2T7HsxwJ9YTjMs3SX3/uQWNvPJINtgfPjUGG7NG8u+XKZKizli1soEFhH1PpNOXu2yt4aX9Z1
	XVLqumKl8hguNVOB64FrKmsAapGSiViM7ShddPJ6OTa9FPTOgsKY2mfa0GRJ61TJF2nNQVw7/ccdy
	/dTT3GCTSRGQ2Qjju4qOz9XFyG5CVZNwO3eddyq/6srjIeuyFtGoZU83o5x5w7/rFZQAE7sWt7nFq
	UDwvls2UOJU4hQAmZUbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI5GN-000000011Fd-3iSD;
	Thu, 22 May 2025 12:43:07 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI5DU-000000010pP-3unN
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 12:40:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CCA9EA4E4C7;
	Thu, 22 May 2025 12:40:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8FF2C4CEE4;
	Thu, 22 May 2025 12:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747917607;
	bh=dIFmpsAhMvCplcUfGCTOY0heRVtKxZ1RNz40PxK8rOk=;
	h=From:To:Cc:Subject:Date:From;
	b=nxFyp0PwZTmRg83D1Vmmh/ZmyrjdXltyLFpuIVGyrQkxQO6Km0FRL4NpEGGEVHKIP
	 w1tLszf6o3IpPne4hxLm49xKOCbP4pWWs+C+kXBgg4kU/7O2Pr8plog5//wbd4MnrS
	 nX+SgixA8xLvDOUfCO4D67Rb2cQ6GeeNGEg3+0OXwUaLLnov/zY0LVtKfsds843w8/
	 KfthzZFTuAIIEYQ6uwJs7zMGLoHsq+ZIXH4bY+1wMzvJ4uiVr6iA4z07qvZj2uRJGo
	 VQ7sjEqPx/xIsVHkTtfCd9hGAWdrWbVYRecaRvjlGXYQQ1vqEgvjebkKhs1LdvWZ8V
	 l3cPr3nqTJBmw==
From: Niklas Cassel <cassel@kernel.org>
To: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH] PCI: dw-rockchip: Delay link training after hot reset in EP mode
Date: Thu, 22 May 2025 14:39:59 +0200
Message-ID: <20250522123958.1518205-2-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3121; i=cassel@kernel.org; h=from:subject; bh=ZYXfFcQXDiFwjrTUi2n35UtRuclFuX1gTrMksp86lBY=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDL0peVOfwo++dH/xZEkw9+pYrfqzyZMiD+ikTfHNGeXU fMZ8aL6jlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAExEh5nhv7dRmMyUWUYZtZu+ r3XzevN+8+I/yj0NunNVZbwn7pk1y5aRoSt4a/AK72KtVYFBSSKSkwS+r/0l3MtyYvWL/owK/o1 KzAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_054009_100119_F25D246F 
X-CRM114-Status: GOOD (  12.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Wilfred Mallawa <wilfred.mallawa@wdc.com>

RK3588 TRM, section "11.6.1.3.3 Hot Reset and Link-Down Reset" states that:
"""
If you want to delay link re-establishment (after reset) so that you can
reprogram some registers through DBI, you must set app_ltssm_enable =0
immediately after core_rst_n as shown in above. This can be achieved by
enable the app_dly2_en, and end-up the delay by assert app_dly2_done.
"""

I.e. setting app_dly2_en will automatically deassert app_ltssm_enable on
a hot reset, and setting app_dly2_done will re-assert app_ltssm_enable,
re-enabling link training.

When receiving a hot reset/link-down IRQ when running in EP mode, we will
call dw_pcie_ep_linkdown(), which will call the .link_down() callback in
the currently bound endpoint function (EPF) drivers.

The callback in an EPF driver can theoretically take a long time to
complete, so make sure that the link is not re-established until after
dw_pcie_ep_linkdown() (which calls the .link_down() callback(s)
synchronously).

Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Co-developed-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c4bd7e0abdf0..05b8e4cbd30b 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -61,6 +61,8 @@
 
 /* Hot Reset Control Register */
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
+#define  PCIE_LTSSM_APP_DLY2_EN		BIT(1)
+#define  PCIE_LTSSM_APP_DLY2_DONE	BIT(3)
 #define  PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
 
 /* LTSSM Status Register */
@@ -487,7 +489,7 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
 	struct rockchip_pcie *rockchip = arg;
 	struct dw_pcie *pci = &rockchip->pci;
 	struct device *dev = pci->dev;
-	u32 reg;
+	u32 reg, val;
 
 	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
 	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
@@ -498,6 +500,10 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
 	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
 		dev_dbg(dev, "hot reset or link-down reset\n");
 		dw_pcie_ep_linkdown(&pci->ep);
+		/* Stop delaying link training. */
+		val = HIWORD_UPDATE_BIT(PCIE_LTSSM_APP_DLY2_DONE);
+		rockchip_pcie_writel_apb(rockchip, val,
+					 PCIE_CLIENT_HOT_RESET_CTRL);
 	}
 
 	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
@@ -585,8 +591,11 @@ static int rockchip_pcie_configure_ep(struct platform_device *pdev,
 		return ret;
 	}
 
-	/* LTSSM enable control mode */
-	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	/*
+	 * LTSSM enable control mode, and automatically delay link training on
+	 * hot reset/link-down reset.
+	 */
+	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE | PCIE_LTSSM_APP_DLY2_EN);
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
 
 	/*
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
