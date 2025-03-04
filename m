Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 382BFC282D1
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 02:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nyJCD7gbgmJ0J5sYBhye3G8Q7u+9zFxIDduFgno+kw=; b=27Nq63g6TaANOo
	8yXNp/67eFqQDk/9BcxdGBTeGAOtxRBVM3hTEikSaDvgVzUSjghv20ag3LE0FAasyA5ce+D8pUN98
	dhoctAYPXrXT93Q6UQREef/ENnJFtmW8zcxqzjnR9ElZrtWiRDzy0nzgyQBlSUdcgerBD53Ohj80h
	xv8q6o5FvUq02/oPiHXikltHYaxz6UNGmG9D+uzMnj5Ljf+9aHfSnu67qhmaMx4Mxcb+mSgVQdRz7
	5bQrO0ehhgMZNw4ixngHSDWOvx2yFyreeBIibGYWdpwUdxj0YiUWTRcs8copFVJ3QabgKgFkgE7r3
	dXGGYt6QuFhPiHg83eRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHjO-00000002rhK-3LHE;
	Tue, 04 Mar 2025 02:10:02 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHKa-00000002o4W-0E1L;
	Tue, 04 Mar 2025 01:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741052662;
	bh=MrgqgIZ157jsElaeg3dFAoESeyFXV9vNfZmK9cHxL2A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gr18z2akC5QqEA8/nx/lgtd8EIXDSnfG18I2aWVHmKMAu2lyj1uFiqgYS/QDGlg0q
	 BrIvwe6XjarK2xyHiAyEA6tDcnlEDkofwmrWASsLqDGPORaZYGxHh7fn6u201rhBdT
	 fgBQYRPXDZDf7L49jvhX64PA2SfkhZKVl0plq7iW4VNs4Km7Zh/mwUOJ0IN4MmebOF
	 rBw99m649HdFxnCwqrMRjzC76ugXu563LUwTz57oD3jMH1+gxSHp3ye7t8WvE+5RBv
	 PxCLAk8BxtjCiZyxVIxW8taIz4RlLs3YrLJ4jFsIeJTs4BaUO8gMEQq6Cv4c8gYKCm
	 6hUxT98KMsKdw==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 8F23717E1016;
	Tue,  4 Mar 2025 02:44:22 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 04 Mar 2025 03:44:05 +0200
Subject: [PATCH v4 06/12] phy: rockchip: samsung-hdptx: Drop superfluous
 cfgs driver data
MIME-Version: 1.0
Message-Id: <20250304-phy-sam-hdptx-bpc-v4-6-8657847c13f7@collabora.com>
References: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
In-Reply-To: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_174424_241753_2C14EAD4 
X-CRM114-Status: GOOD (  14.06  )
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

The ->cfgs member has been introduced via commit f08d1c085638 ("phy:
phy-rockchip-samsung-hdptx: Don't use dt aliases to determine phy-id"),
but it is only used during probe() in order to setup ->phy_id.

Use a probe() local variable to store device match data and remove the
now unnecessary member from struct rk_hdptx_phy.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 06644c3d98d3f8b697fc704704df5acdd3c85bad..2bf525514c1991a1299265d12e1e85f66333c604 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -392,10 +392,7 @@ struct rk_hdptx_phy {
 	struct regmap *regmap;
 	struct regmap *grf;
 
-	/* PHY const config */
-	const struct rk_hdptx_phy_cfg *cfgs;
 	int phy_id;
-
 	struct phy *phy;
 	struct clk_bulk_data *clks;
 	int nr_clks;
@@ -1892,6 +1889,7 @@ static int rk_hdptx_phy_runtime_resume(struct device *dev)
 
 static int rk_hdptx_phy_probe(struct platform_device *pdev)
 {
+	const struct rk_hdptx_phy_cfg *cfgs;
 	struct phy_provider *phy_provider;
 	struct device *dev = &pdev->dev;
 	struct rk_hdptx_phy *hdptx;
@@ -1910,14 +1908,14 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(regs),
 				     "Failed to ioremap resource\n");
 
-	hdptx->cfgs = device_get_match_data(dev);
-	if (!hdptx->cfgs)
+	cfgs = device_get_match_data(dev);
+	if (!cfgs)
 		return dev_err_probe(dev, -EINVAL, "missing match data\n");
 
 	/* find the phy-id from the io address */
 	hdptx->phy_id = -ENODEV;
-	for (id = 0; id < hdptx->cfgs->num_phys; id++) {
-		if (res->start == hdptx->cfgs->phy_ids[id]) {
+	for (id = 0; id < cfgs->num_phys; id++) {
+		if (res->start == cfgs->phy_ids[id]) {
 			hdptx->phy_id = id;
 			break;
 		}

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
