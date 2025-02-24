Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A32DC021B3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6h9RHSp50hvB5J/uIw3swuGS7tbuuYecqBysa1V9Vfw=; b=whLE9mXYVL7wpe
	DY4OWPTc9IPjHmGEuvTgLJ8zNQJKW9XdVlRSHpaoeun28EREasSKfycmhuAACCI93SNqYW6Eu2fr8
	RINRD8NuyNIjTxj+WzkQw5BNPuMWRg2et2EtXBDr1gmA6oMsCrQZx7o0bw0KwyU3l/bDUzXC8YBEk
	gKIcL0Sruz3qz4xL7PHtQxrjGym2M5KaeuHRJDW7SVIt2tjTaUL1cC6S0Q+iqAFvu2iFR236Ua7bj
	qv/2Dm4qZYsRg+RoMECPeVhZeBkqGbwjX7YqxEmoj+HGtxU+r3QbLuyTJC2yerPieB/iMGj/abLI9
	Rki3OhkNCww7/OW+D7rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmTdW-0000000Cei6-2YHn;
	Mon, 24 Feb 2025 08:16:22 +0000
Received: from mail-m1973181.qiye.163.com ([220.197.31.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmTbL-0000000Ce62-33jj;
	Mon, 24 Feb 2025 08:14:09 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id bfd287c2;
	Mon, 24 Feb 2025 16:14:03 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v7 04/15] drm/bridge: analogix_dp: Remove the unnecessary calls to clk_disable_unprepare() during probing
Date: Mon, 24 Feb 2025 16:13:14 +0800
Message-Id: <20250224081325.96724-5-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250224081325.96724-1-damon.ding@rock-chips.com>
References: <20250224081325.96724-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ05JSFZPQh8eGhgYSUpPSkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a953705365703a3kunmbfd287c2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pz46FQw4MzIONxNWTT4uETEv
	AzpPCS1VSlVKTE9LSENPQ09OSE1NVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSENONwY+
DKIM-Signature: a=rsa-sha256;
	b=RhFY3D8+01Zany8/FVPwFeNfI8Nep2zTus9v0jfNh2VgjfdPDmvgF9hY0aLTlYEWq47hRGpbrwBns//Y5TcLc7m/GATrGdY2eNDBqE2u/z+yoJPwUmCtKn2/8KHbxb2+S3SW1QWzoB/S0/eoIkVmyXc9wJ98i9/scTJUJRu674M=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qIDpDUZK6hSel5I8fxZivGCbqLzNct87SHt9UpVS6tg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_001407_939198_2B32D1DD 
X-CRM114-Status: UNSURE (   9.09  )
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
Cc: dianders@chromium.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the commit f37952339cc2 ("drm/bridge: analogix_dp: handle clock via
runtime PM"), the PM operations can help enable/disable the clock. The
err_disable_clk label and clk_disable_unprepare() operations are no
longer necessary because the analogix_dp_resume() will not be called
during probing.

Fixes: f37952339cc2 ("drm/bridge: analogix_dp: handle clock via runtime PM")
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../gpu/drm/bridge/analogix/analogix_dp_core.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index e23af674d91c..d9dafb038e7a 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1608,10 +1608,8 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 
 	dp->reg_base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(dp->reg_base)) {
-		ret = PTR_ERR(dp->reg_base);
-		goto err_disable_clk;
-	}
+	if (IS_ERR(dp->reg_base))
+		return ERR_CAST(dp->reg_base);
 
 	dp->force_hpd = of_property_read_bool(dev->of_node, "force-hpd");
 
@@ -1623,8 +1621,7 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 	if (IS_ERR(dp->hpd_gpiod)) {
 		dev_err(dev, "error getting HDP GPIO: %ld\n",
 			PTR_ERR(dp->hpd_gpiod));
-		ret = PTR_ERR(dp->hpd_gpiod);
-		goto err_disable_clk;
+		return ERR_CAST(dp->hpd_gpiod);
 	}
 
 	if (dp->hpd_gpiod) {
@@ -1644,8 +1641,7 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 
 	if (dp->irq == -ENXIO) {
 		dev_err(&pdev->dev, "failed to get irq\n");
-		ret = -ENODEV;
-		goto err_disable_clk;
+		return ERR_PTR(-ENODEV);
 	}
 
 	ret = devm_request_threaded_irq(&pdev->dev, dp->irq,
@@ -1654,14 +1650,10 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 					irq_flags, "analogix-dp", dp);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to request irq\n");
-		goto err_disable_clk;
+		return ERR_PTR(ret);
 	}
 
 	return dp;
-
-err_disable_clk:
-	clk_disable_unprepare(dp->clock);
-	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_probe);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
