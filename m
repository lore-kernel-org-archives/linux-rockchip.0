Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1302AC5472D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 02:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0okoXl+PYPK+QRzGqyJJCC80HhJaECZRiwOM1BPsqzo=; b=nnaQ93q3N8ZSdo
	Bg4P+nMBLiEe02GdmMLbhmOHsmJe/VSo+qBteESLRzO3ulJdGSvsjnRwcbFhTo58HkUONqZhohERU
	gqYM9fVUNdpe7ceQ/QxCC1g9zqEHjogsoFh8WG+YcE24y8mMDCStyBWt13AKHBErZla4n+MxH8+qk
	WtCQ91NUy3h08IRAjeR0P3XxIRym7HQIi6XfD4QjiE+PplSMxU8Uyz+Nvn/KpSoefNshqxX9rlh9a
	DFta99x4/DkUNLNLmaqPwWHTKFrDBPZStd3MuLKGB/h6MYHAj0DJ1LoHDqMv1DM7uIt0wqWbK14XN
	jRhAUhFMrs7u7xwISmMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simPr-00000009We9-3k9I;
	Tue, 27 Aug 2024 02:58:43 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simNW-00000009W5M-3KB5;
	Tue, 27 Aug 2024 02:56:21 +0000
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4WtBxP3NmTzyRDP;
	Tue, 27 Aug 2024 10:55:37 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 52FEA18007C;
	Tue, 27 Aug 2024 10:56:06 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 27 Aug
 2024 10:56:05 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next v2 3/3] drm/rockchip: Simplified with dev_err_probe()
Date: Tue, 27 Aug 2024 11:03:57 +0800
Message-ID: <20240827030357.1006220-4-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827030357.1006220-1-ruanjinjie@huawei.com>
References: <20240827030357.1006220-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_195619_412465_A05142B3 
X-CRM114-Status: GOOD (  10.80  )
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

Use dev_err_probe to replace deprecated() DRM_DEV_ERROR(), which
can simplfy code.

Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 30 +++++++++---------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 700ac730887d..92679e54c71d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -455,10 +455,8 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
 		return PTR_ERR(lvds->regs);
 
 	lvds->pclk = devm_clk_get(lvds->dev, "pclk_lvds");
-	if (IS_ERR(lvds->pclk)) {
-		DRM_DEV_ERROR(lvds->dev, "could not get pclk_lvds\n");
-		return PTR_ERR(lvds->pclk);
-	}
+	if (IS_ERR(lvds->pclk))
+		return dev_err_probe(lvds->dev, PTR_ERR(lvds->pclk), "could not get pclk_lvds\n");
 
 	lvds->pins = devm_kzalloc(lvds->dev, sizeof(*lvds->pins),
 				  GFP_KERNEL);
@@ -467,24 +465,22 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
 
 	lvds->pins->p = devm_pinctrl_get(lvds->dev);
 	if (IS_ERR(lvds->pins->p)) {
-		DRM_DEV_ERROR(lvds->dev, "no pinctrl handle\n");
+		dev_err(lvds->dev, "no pinctrl handle\n");
 		devm_kfree(lvds->dev, lvds->pins);
 		lvds->pins = NULL;
 	} else {
 		lvds->pins->default_state =
 			pinctrl_lookup_state(lvds->pins->p, "lcdc");
 		if (IS_ERR(lvds->pins->default_state)) {
-			DRM_DEV_ERROR(lvds->dev, "no default pinctrl state\n");
+			dev_err(lvds->dev, "no default pinctrl state\n");
 			devm_kfree(lvds->dev, lvds->pins);
 			lvds->pins = NULL;
 		}
 	}
 
 	ret = clk_prepare(lvds->pclk);
-	if (ret < 0) {
-		DRM_DEV_ERROR(lvds->dev, "failed to prepare pclk_lvds\n");
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(lvds->dev, ret, "failed to prepare pclk_lvds\n");
 
 	return 0;
 }
@@ -700,22 +696,18 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
 
 	lvds->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
 						    "rockchip,grf");
-	if (IS_ERR(lvds->grf)) {
-		DRM_DEV_ERROR(dev, "missing rockchip,grf property\n");
-		return PTR_ERR(lvds->grf);
-	}
+	if (IS_ERR(lvds->grf))
+		return dev_err_probe(dev, PTR_ERR(lvds->grf), "missing rockchip,grf property\n");
 
 	ret = lvds->soc_data->probe(pdev, lvds);
-	if (ret) {
-		DRM_DEV_ERROR(dev, "Platform initialization failed\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "Platform initialization failed\n");
 
 	dev_set_drvdata(dev, lvds);
 
 	ret = component_add(&pdev->dev, &rockchip_lvds_component_ops);
 	if (ret < 0) {
-		DRM_DEV_ERROR(dev, "failed to add component\n");
+		dev_err(dev, "failed to add component\n");
 		clk_unprepare(lvds->pclk);
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
