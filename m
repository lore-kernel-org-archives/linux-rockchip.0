Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78395C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5StjZiEPTUf9eceYsS6YcLVJ9TDaWCtp7GpneJUL4Y=; b=WZBPhMrGdneqPH
	UEi1PON45UOmlmBiIgjKjKPMAr6w+SHofAJY8r2vBCz3Pdq6FX8C9Q228yPt4sqm2PwnjqKqPiy1x
	9gryFNN0EFvfnylHyoHdhLGT8YOYe1GIsEaTquoqYg9F3dSAEioqEqqxVXlouED7bKUBiLLg+u0hI
	7fTfxCC1n9dGahnYbpYF0FkbstQ8C3z5uMGVql0+AEiSJ4soAWiOZeEf/Xdh4s0wD6hEXiQi2410N
	BPGCg2G5mg2i4JWTzRTdLzHfXiOZ/lnXYXGf0pODluC/DbmVE5s4loOFjStbNWfPEyHHgLVSHTQ10
	LC/Lh7nZ+SEvNbo0Oddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEh3-00000003Onu-1mSb;
	Wed, 29 May 2024 08:29:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEgy-00000003OjM-0569
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:29:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8117A626FC;
	Wed, 29 May 2024 08:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 816B3C32789;
	Wed, 29 May 2024 08:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971391;
	bh=SMegS8nfoyN3eNUTsk9/OXgYZ+S9QBWigdpnPN30MN8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fPcIzDgmpp4lG6N4O4av6+KhSpuaX0QHWg6UKDiJ/jtuHRpoHOhD8GoFf6P23dLzG
	 J5XNmWfVgtiQCkZJP930+wb0DKt+EnyZzx607omepb0Xn6yAcuB0iPwPk67seFxm6h
	 1mTVjZ6jIbQ7t3S/Wx/fGk0ogPcwIZ5L0e/1hAW7C5VgsGdlooHPz+/MarPDgzW58R
	 Iup8B7C7bJC5F0Ztgp9LKa5SEPpwPaxo8xbRKqEG5HJ8zoi9FigqGCLwictAkhzXgv
	 YO4MrSlrfWKr51+E3aU57/FQJI1z889UUkm4dVXZhit2/SoJ+gRAunkQHtf1gTV7KZ
	 M50u/T1lezs4g==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:29:03 +0200
Subject: [PATCH v4 09/13] PCI: dw-rockchip: Refactor the driver to prepare
 for EP mode
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-9-3dc00fe21a78@kernel.org>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4770; i=cassel@kernel.org;
 h=from:subject:message-id; bh=SMegS8nfoyN3eNUTsk9/OXgYZ+S9QBWigdpnPN30MN8=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnoduzg+/6X+zNZ6nWS4jsjphl+WkV9t2bLJ9tM6zN
 PC5XANnRykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACbyS5mR4VrlIib9HnPh/NtT
 hA41nzFLTNsQVsS6qeSqpKCo2/rNcxj+KTN8We1rEPpw8RVjP/td6p9upjBVTlp9putvnsrV7Oi
 PnAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_012952_267683_2AF860F1 
X-CRM114-Status: GOOD (  16.92  )
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
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 84 +++++++++++++++++++--------
 1 file changed, 60 insertions(+), 24 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 1380e3a5284b..e133511692af 100644
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
+	struct dw_pcie				pci;
+	void __iomem				*apb_base;
+	struct phy				*phy;
+	struct clk_bulk_data			*clks;
+	unsigned int				clk_cnt;
+	struct reset_control			*rst;
+	struct gpio_desc			*rst_gpio;
+	struct regulator			*vpcie3v3;
+	struct irq_domain			*irq_domain;
+	const struct rockchip_pcie_of_data	*data;
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
