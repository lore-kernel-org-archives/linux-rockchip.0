Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A10DCD5C0E7
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 15:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mn7kKEXd6kuY5roOh/O79X0AXF+WY5yjsUHSMaO2m80=; b=PGR+8VFCaBiece
	9sBcQW+0iBmeU+Q1GsbBepeKgDUIrF0WHcIhfK1HFLTB+K//O3rY9JtBqfJhNho6JLgaDBIiHTquw
	t5ez7byfYzlhRHAbsXdy0qGGM3LdYbkKt2nL6OR7elnKl1VByICE1yUZrXultwqj5yWRLauPhK1Ga
	wHMcX2bh3Imn4282VsmQTkmBnimT9rncUCtNDrMurHCCZIxG/Az56BLMeQohk5EQlBUl9tb11gHar
	kjeC7RWARM3ms6rdYgegjpybWApZtvp6+M9k2l1iWf5f++ZT8pFIRWn4Sa/lPCQISi91eE+iizd5V
	hrjJzl2eWyA79xe7uWqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Qe6-0000000Az03-24IU;
	Fri, 08 Nov 2024 15:11:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9QE5-0000000AtVc-1I03
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 14:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Sq1qOtFF69mFoOsytrqshcI4Hj0x/QP2wi6DnImQLW0=; b=MvMdEwofqR70BiYpz8W5OuxiTU
	IZl4ZZvbUwoKHNlHHa01BLTEi6HQuNVZwVPgq38ZoafCnWhP5u8tTLPH0EQHhf2+TRH6UmL/rqjRr
	lvUR+tCJOMb509mHndLjI248FXt1NJkbWR73JLHcQPz1EhKogwCHbShLoqp+1YFQRI6yd351rbVyA
	hjLeTGgLuEjxHPP4GbC46MQVD6x+zW6sL17Ez9NVOo0K/27bKgu4v5QbV6P4hBrWVhjmu9MBWh2qa
	+yoypA7Fi65U1Ph7jvNG+G4t1AReyjTxozhbT00vhuw6UFIbGA5ejm5fqQgn3VkKig3/OEurwKnCy
	DxRJOdHw==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9QE1-0006ov-Mk; Fri, 08 Nov 2024 15:44:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Cc: dsimic@manjaro.org,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH] drm/rockchip: dsi: convert to dev_err_probe in probe function
Date: Fri,  8 Nov 2024 15:44:24 +0100
Message-ID: <20241108144425.1009916-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_064441_403259_5EEC9F4E 
X-CRM114-Status: GOOD (  16.19  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

DRM_DEV_ERROR is deprecated and using dev_err_probe saves quite a number
of lines too, so convert the error prints for the dsi-driver.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 80 ++++++-------------
 1 file changed, 26 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 58a44af0e9ad..3224ab749352 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1356,17 +1356,15 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 	struct resource *res;
 	const struct rockchip_dw_dsi_chip_data *cdata =
 				of_device_get_match_data(dev);
-	int ret, i;
+	int i;
 
 	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
 	if (!dsi)
 		return -ENOMEM;
 
 	dsi->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
-	if (IS_ERR(dsi->base)) {
-		DRM_DEV_ERROR(dev, "Unable to get dsi registers\n");
-		return PTR_ERR(dsi->base);
-	}
+	if (IS_ERR(dsi->base))
+		return dev_err_probe(dev, PTR_ERR(dsi->base), "Unable to get dsi registers\n");
 
 	i = 0;
 	while (cdata[i].reg) {
@@ -1378,67 +1376,47 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 		i++;
 	}
 
-	if (!dsi->cdata) {
-		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
-		return -EINVAL;
-	}
+	if (!dsi->cdata)
+		return dev_err_probe(dev, -EINVAL, "No dsi-config for %s node\n", np->name);
 
 	/* try to get a possible external dphy */
 	dsi->phy = devm_phy_optional_get(dev, "dphy");
-	if (IS_ERR(dsi->phy)) {
-		ret = PTR_ERR(dsi->phy);
-		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(dsi->phy))
+		return dev_err_probe(dev, PTR_ERR(dsi->phy), "Failed to get mipi dphy\n");
 
 	dsi->pclk = devm_clk_get(dev, "pclk");
-	if (IS_ERR(dsi->pclk)) {
-		ret = PTR_ERR(dsi->pclk);
-		DRM_DEV_ERROR(dev, "Unable to get pclk: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(dsi->pclk))
+		return dev_err_probe(dev, PTR_ERR(dsi->pclk), "Unable to get pclk\n");
 
 	dsi->pllref_clk = devm_clk_get(dev, "ref");
 	if (IS_ERR(dsi->pllref_clk)) {
-		if (dsi->phy) {
+		if (dsi->phy)
 			/*
 			 * if external phy is present, pll will be
 			 * generated there.
 			 */
 			dsi->pllref_clk = NULL;
-		} else {
-			ret = PTR_ERR(dsi->pllref_clk);
-			DRM_DEV_ERROR(dev,
-				      "Unable to get pll reference clock: %d\n",
-				      ret);
-			return ret;
-		}
+		else
+			return dev_err_probe(dev, PTR_ERR(dsi->pllref_clk),
+					     "Unable to get pll reference clock\n");
 	}
 
 	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
 		dsi->phy_cfg_clk = devm_clk_get(dev, "phy_cfg");
-		if (IS_ERR(dsi->phy_cfg_clk)) {
-			ret = PTR_ERR(dsi->phy_cfg_clk);
-			DRM_DEV_ERROR(dev,
-				      "Unable to get phy_cfg_clk: %d\n", ret);
-			return ret;
-		}
+		if (IS_ERR(dsi->phy_cfg_clk))
+			return dev_err_probe(dev, PTR_ERR(dsi->phy_cfg_clk),
+					     "Unable to get phy_cfg_clk\n");
 	}
 
 	if (dsi->cdata->flags & DW_MIPI_NEEDS_GRF_CLK) {
 		dsi->grf_clk = devm_clk_get(dev, "grf");
-		if (IS_ERR(dsi->grf_clk)) {
-			ret = PTR_ERR(dsi->grf_clk);
-			DRM_DEV_ERROR(dev, "Unable to get grf_clk: %d\n", ret);
-			return ret;
-		}
+		if (IS_ERR(dsi->grf_clk))
+			return dev_err_probe(dev, PTR_ERR(dsi->grf_clk), "Unable to get grf_clk\n");
 	}
 
 	dsi->grf_regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
-	if (IS_ERR(dsi->grf_regmap)) {
-		DRM_DEV_ERROR(dev, "Unable to get rockchip,grf\n");
-		return PTR_ERR(dsi->grf_regmap);
-	}
+	if (IS_ERR(dsi->grf_regmap))
+		return dev_err_probe(dev, PTR_ERR(dsi->grf_regmap), "Unable to get rockchip,grf\n");
 
 	dsi->dev = dev;
 	dsi->pdata.base = dsi->base;
@@ -1451,24 +1429,18 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 	mutex_init(&dsi->usage_mutex);
 
 	dsi->dphy = devm_phy_create(dev, NULL, &dw_mipi_dsi_dphy_ops);
-	if (IS_ERR(dsi->dphy)) {
-		DRM_DEV_ERROR(&pdev->dev, "failed to create PHY\n");
-		return PTR_ERR(dsi->dphy);
-	}
+	if (IS_ERR(dsi->dphy))
+		return dev_err_probe(dev, PTR_ERR(dsi->dphy), "Failed to create PHY\n");
 
 	phy_set_drvdata(dsi->dphy, dsi);
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (IS_ERR(phy_provider))
-		return PTR_ERR(phy_provider);
+		return dev_err_probe(dev, PTR_ERR(phy_provider),
+				     "Failed to register phy-provider\n");
 
 	dsi->dmd = dw_mipi_dsi_probe(pdev, &dsi->pdata);
-	if (IS_ERR(dsi->dmd)) {
-		ret = PTR_ERR(dsi->dmd);
-		if (ret != -EPROBE_DEFER)
-			DRM_DEV_ERROR(dev,
-				      "Failed to probe dw_mipi_dsi: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(dsi->dmd))
+		return dev_err_probe(dev, PTR_ERR(dsi->dmd), "Failed to probe dw_mipi_dsi\n");
 
 	return 0;
 }
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
