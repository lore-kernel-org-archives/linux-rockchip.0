Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1030C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 07:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmYK/RWhb5K1M8WPJwqiBJT7mwo9xG9GjRmknZTlypY=; b=Y5aP+YTX8VDoWI
	Jb/WeKjFh185yWeCXBY65CsNrgpK5KY/YWGEdmBhAcPRhbVTCa/rzj0kTYOtG2eqyTFY9suevlqmb
	J6f8VXSZnQV8twdGSR87b1M4qGB8RcKwH7HkXWOvbKoye0i2Md6FSvEYwkYYmsOj4zIPQSYhVg2TT
	P1Lz6awfFzNwbgRI6HuDhohNFYlwcZRhB0a2HjcUscrAGvaCB7xDn3f6Gn0NXMnUcBFlBbhtOTN2D
	xMzIUFVG7IzMl9ANb5eieaVMqOaE9C32hDJc3mayW2yMOHe2ymL8zWKWoYPZ2yLYj4SdKXHMsVKP2
	9puEg5Pn6QVT9UVZvKcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfxh-00000007wxh-1798;
	Wed, 21 Aug 2024 07:40:57 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfux-00000007wRJ-07Zj;
	Wed, 21 Aug 2024 07:38:10 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724225884;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7mpSgzy1mYsfmRZERxM1qKQwFf2Bvpti+0UrXxT9LS0=;
	b=VAhqzafl1g0io65W7HyURf3pSL/CuyQtt3tQtsLmL6RP/7/Y5D791BM11qXYjdTOzK1Uxd
	rUlZZtpStM7cbXzID5nq2aaFkEOusbAipxhnIUIJSvCs68zSJ8dSNkerAHOXN/A3t6uK1r
	nxx2Abak3LxXCzttOgeF1wkzldIDOQl+uh8B3uEWv66dsOeXBWQQyqLv1AV3AGP7bdbKen
	BZsZCj/L/ai2OosxqRKfLcuNUskNohqchZeEJbHg7AVSweKIJfNQp3jWdM/95k0IDOd5OR
	KSjZCjdexqBVPeZphtsQ9KPqX2t1Ki72Crfle9BHveqVOOsraqle0SOMPgwiug==
To: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] phy: phy-rockchip-inno-usb2: Improve error handling while probing
Date: Wed, 21 Aug 2024 09:37:55 +0200
Message-Id: <866445027a4f41165c872f494b04c218b6e67b09.1724225528.git.dsimic@manjaro.org>
In-Reply-To: <cover.1724225528.git.dsimic@manjaro.org>
References: <cover.1724225528.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_003807_371951_A32D1965 
X-CRM114-Status: GOOD (  11.88  )
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

Improve error handling in the probe path by using function dev_err_probe()
where appropriate, and by no longer using it rather pointlessly in one place
that actually produces a single, hardcoded error code.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 33 ++++++++-----------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 05af46dda11d..30b6134365ec 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -424,25 +424,22 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
 
 	if (of_property_read_bool(node, "extcon")) {
 		edev = extcon_get_edev_by_phandle(rphy->dev, 0);
-		if (IS_ERR(edev)) {
-			if (PTR_ERR(edev) != -EPROBE_DEFER)
-				dev_err(rphy->dev, "Invalid or missing extcon\n");
-			return PTR_ERR(edev);
-		}
+		if (IS_ERR(edev))
+			return dev_err_probe(rphy->dev, PTR_ERR(edev),
+					     "invalid or missing extcon\n");
 	} else {
 		/* Initialize extcon device */
 		edev = devm_extcon_dev_allocate(rphy->dev,
 						rockchip_usb2phy_extcon_cable);
 
 		if (IS_ERR(edev))
 			return dev_err_probe(rphy->dev, PTR_ERR(edev),
 					     "failed to allocate extcon device\n");
 
 		ret = devm_extcon_dev_register(rphy->dev, edev);
-		if (ret) {
-			dev_err(rphy->dev, "failed to register extcon device\n");
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(rphy->dev, ret,
+					     "failed to register extcon device\n");
 	}
 
 	rphy->edev = edev;
@@ -1375,8 +1372,10 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	rphy->irq = platform_get_irq_optional(pdev, 0);
 	platform_set_drvdata(pdev, rphy);
 
-	if (!phy_cfgs)
-		return dev_err_probe(dev, -EINVAL, "phy configs are not assigned!\n");
+	if (!phy_cfgs) {
+		dev_err(dev, "phy configs are not assigned\n");
+		return -EINVAL;
+	}
 
 	ret = rockchip_usb2phy_extcon_register(rphy);
 	if (ret)
@@ -1407,10 +1406,8 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 				     "failed to get phyclk\n");
 
 	ret = rockchip_usb2phy_clk480m_register(rphy);
-	if (ret) {
-		dev_err(dev, "failed to register 480m output clock\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register 480m output clock\n");
 
 	if (rphy->phy_cfg->phy_tuning) {
 		ret = rphy->phy_cfg->phy_tuning(rphy);
@@ -1430,8 +1427,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 
 		phy = devm_phy_create(dev, child_np, &rockchip_usb2phy_ops);
 		if (IS_ERR(phy)) {
-			dev_err_probe(dev, PTR_ERR(phy), "failed to create phy\n");
-			ret = PTR_ERR(phy);
+			ret = dev_err_probe(dev, PTR_ERR(phy), "failed to create phy\n");
 			goto put_child;
 		}
 
@@ -1466,8 +1462,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 						"rockchip_usb2phy",
 						rphy);
 		if (ret) {
-			dev_err(rphy->dev,
-				"failed to request usb2phy irq handle\n");
+			dev_err_probe(rphy->dev, ret, "failed to request usb2phy irq handle\n");
 			goto put_child;
 		}
 	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
