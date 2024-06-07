Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE59C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNFHhrq10J1pukkgj0YGI8sN1ItBDzZ6fpHHVhPz3SA=; b=o7KFOghXryij3w
	yu4wZHYIm7SPYLuKFJRFyD/yEv9aXrGtlbtRNB6++x1D25TCTfQ0hfEDuSlQXv+DFgiZUnH0iaNHa
	64BhhVqBCREEUqNI95TNPSQMh+Bqp3GRq5fhndMYxxScnv8LmhIU+WeCSpCLtLk98/PVsH7XNBImj
	N/aj7hbKrfceWdVmty11L9Ysnu8AjqehUepmlAkBEOPRC1f9H1iBdznCnIW2G3MarURCft5GvN5x3
	Hu5qM5w0qEjnE7DRyLT88GpL+aGQupli5QPjq0xBdGetRnmnoIeW9yV47wUhzv3YEbfF4dzd9SBHB
	BNXc+367ZN+TbGi4vDBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYx-0000000Dfv4-1JDq;
	Fri, 07 Jun 2024 11:15:15 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYu-0000000Dfs4-0NqA
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:15:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3721CCE1D24;
	Fri,  7 Jun 2024 11:15:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C656C4AF14;
	Fri,  7 Jun 2024 11:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758909;
	bh=LgjZvCWxsa5eEjGu/Q9o3JSSpMeeDr5eYKPdOgwFoqo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VWSt3paUM4wIy7INbaU3TEM2jwyASGNwJ9pRUw+jWQrg+CjoDgu9f3iEgIHSHsaMp
	 J0j+sxnMhCLzDNUBSihQJYQgebrYroJqRx7+v+xgZInnC/VKHUTy7pqdBE4tciSj9X
	 vNGpxGl1J7Rp5zpgzyfsMYqMaS1089AmCLVNBafR5P24uUkZul23vRXPfiDVfzN3sU
	 MRvBZQ+AUHQDIkeXGCWZDojs0cUSTFTM5oKkP9zME7rHLEHs/TPnVt2O43ErBufWQ0
	 M1i5XPyKPI4KQdNtWDXb9Ht0N9FW2zxfJyBDktR2s3roib0wlNvmCmBVklSflafOX+
	 Odqb1KyJlQRVQ==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:29 +0200
Subject: [PATCH v5 09/13] PCI: dw-rockchip: Refactor the driver to prepare
 for EP mode
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-9-0a042d6b0049@kernel.org>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4819; i=cassel@kernel.org;
 h=from:subject:message-id; bh=LgjZvCWxsa5eEjGu/Q9o3JSSpMeeDr5eYKPdOgwFoqo=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk+KUtrqubPLfwHv9NVrbUUvXrvqf8BnmQzbwmOt/
 5f1Nk870lHKwiDGxSArpsji+8Nlf3G3+5TjindsYOawMoEMYeDiFICJrNNl+O/GaSOyzHFB8bbC
 710Xd8cnOLh1zuMoWq3ZWHPrSbPFHn5GhjeVjoErwgtvRHRsPJf3zFI6//JOMf7myMilUwQeB4h
 s5wcA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041512_580968_0C9A4FD3 
X-CRM114-Status: GOOD (  16.31  )
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

This refactors the driver to prepare for EP mode.
Add of-match data to the existing compatible, and explicitly define it as
DW_PCIE_RC_TYPE. This way, we will be able to add EP mode in a follow-up
commit in a much less intrusive way, which makes the follup-up commit much
easier to review.

No functional change intended.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 84 +++++++++++++++++++--------
 1 file changed, 60 insertions(+), 24 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 1380e3a5284b..bd35620b1a96 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -49,15 +49,20 @@
 #define PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
 
 struct rockchip_pcie {
-	struct dw_pcie			pci;
-	void __iomem			*apb_base;
-	struct phy			*phy;
-	struct clk_bulk_data		*clks;
-	unsigned int			clk_cnt;
-	struct reset_control		*rst;
-	struct gpio_desc		*rst_gpio;
-	struct regulator                *vpcie3v3;
-	struct irq_domain		*irq_domain;
+	struct dw_pcie pci;
+	void __iomem *apb_base;
+	struct phy *phy;
+	struct clk_bulk_data *clks;
+	unsigned int clk_cnt;
+	struct reset_control *rst;
+	struct gpio_desc *rst_gpio;
+	struct regulator *vpcie3v3;
+	struct irq_domain *irq_domain;
+	const struct rockchip_pcie_of_data *data;
+};
+
+struct rockchip_pcie_of_data {
+	enum dw_pcie_device_mode mode;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip, u32 reg)
@@ -195,7 +200,6 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
 	struct device *dev = rockchip->pci.dev;
-	u32 val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
 	int irq, ret;
 
 	irq = of_irq_get_byname(dev->of_node, "legacy");
@@ -209,12 +213,6 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
 					 rockchip);
 
-	/* LTSSM enable control mode */
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
-
-	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
-				 PCIE_CLIENT_GENERAL_CONTROL);
-
 	return 0;
 }
 
@@ -294,13 +292,35 @@ static const struct dw_pcie_ops dw_pcie_ops = {
 	.start_link = rockchip_pcie_start_link,
 };
 
+static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
+{
+	struct dw_pcie_rp *pp;
+	u32 val;
+
+	/* LTSSM enable control mode */
+	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+
+	pp = &rockchip->pci.pp;
+	pp->ops = &rockchip_pcie_host_ops;
+
+	return dw_pcie_host_init(pp);
+}
+
 static int rockchip_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rockchip_pcie *rockchip;
-	struct dw_pcie_rp *pp;
+	const struct rockchip_pcie_of_data *data;
 	int ret;
 
+	data = of_device_get_match_data(dev);
+	if (!data)
+		return -EINVAL;
+
 	rockchip = devm_kzalloc(dev, sizeof(*rockchip), GFP_KERNEL);
 	if (!rockchip)
 		return -ENOMEM;
@@ -309,9 +329,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 	rockchip->pci.dev = dev;
 	rockchip->pci.ops = &dw_pcie_ops;
-
-	pp = &rockchip->pci.pp;
-	pp->ops = &rockchip_pcie_host_ops;
+	rockchip->data = data;
 
 	ret = rockchip_pcie_resource_get(pdev, rockchip);
 	if (ret)
@@ -347,10 +365,21 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto deinit_phy;
 
-	ret = dw_pcie_host_init(pp);
-	if (!ret)
-		return 0;
+	switch (data->mode) {
+	case DW_PCIE_RC_TYPE:
+		ret = rockchip_pcie_configure_rc(rockchip);
+		if (ret)
+			goto deinit_clk;
+		break;
+	default:
+		dev_err(dev, "INVALID device type %d\n", data->mode);
+		ret = -EINVAL;
+		goto deinit_clk;
+	}
+
+	return 0;
 
+deinit_clk:
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 deinit_phy:
 	rockchip_pcie_phy_deinit(rockchip);
@@ -361,8 +390,15 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
+	.mode = DW_PCIE_RC_TYPE,
+};
+
 static const struct of_device_id rockchip_pcie_of_match[] = {
-	{ .compatible = "rockchip,rk3568-pcie", },
+	{
+		.compatible = "rockchip,rk3568-pcie",
+		.data = &rockchip_pcie_rc_of_data_rk3568,
+	},
 	{},
 };
 

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
