Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A7BC27C50
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 14:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wECUWebHUR3tbzx44AK+6kaDG/yk7/uMPfcFovzGXm8=; b=tgqkbq14o+aHww
	ly0F1cqC8o2XoRhdGlt2rB9krKb7BcZvjTZiVhEfKJN2S7v0TaYWvEmPmKmkVFL7NKZwy08g5D6+o
	w6b9VtnIZkIsZA2cbtBW/avPKEoAIgbUDqsdYDp0yYsSWWof5YhRxGFjBpX9N0zXf3ycMxi6bvwLk
	P/6T3a2D+w5qMg3pB77ULJGu2Q014LYFaMJP1QpZXJhyAk3nOmcgKPia0KXonNCut0U4UmJhVDuDT
	JgWnhLAfhIfYaiUBFN3UTKxHIt7uVHBf3hqLDCEBW0HBncZpMUM8qjg41jGWngxrZ9vC7/f028g46
	IsU4Mu44NWP1NO5Mg7LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDPXU-0000000CkkQ-3uRp;
	Sat, 01 Jun 2024 14:16:57 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXh-0000000Ce7i-2WUx;
	Sat, 01 Jun 2024 13:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247579;
	bh=l8XtBaTwAnkRuYmXmxTYBbTkRdQIUV1mvvps+vRhY14=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BsoXUfw5X2BcNbgtXuoysLYNsZmBXgQBS0JlqduU0I638QwCeXWzIRpNhGwUwnrzI
	 PdOi+EiCgCAL7Qu3bzGvUEcb4yw0bjHPRBiLxT37fKTAzDkKHDmmcgm1HJHmRL0QY1
	 SZ2z/3xkjFKeMNJ6xZpTMgVOjW6aITR98S4l9oMSCNe41qvHuJ+YtdDCQplp9WLKZO
	 0FmZgkAjrnwkZSx9P1USIugxHJNIBsm2iFOkMusxCYyPULldtiVkuEg84JNtGoesJ+
	 zoqNyFYY5xy6sVzpUF7IKZhL8Xg5MpX6UQdtJKnFxrDVZRrUoSGs61364tun+WIoC4
	 7pQvRmLXHL3iQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 95A1A37821AE;
	Sat,  1 Jun 2024 13:12:59 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:23 +0300
Subject: [PATCH 01/14] drm/bridge: dw-hdmi: Simplify clock handling
MIME-Version: 1.0
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-1-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_061305_944415_1E80B4E8 
X-CRM114-Status: GOOD (  14.36  )
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

Make use of devm_clk_get_enabled() to replace devm_clk_get() and
clk_prepare_enable() for isfr and iahb clocks, and drop the now
unnecessary calls to clk_disable_unprepare().

Similarly, use devm_clk_get_optional_enabled() helper for cec clock,
which additionally allows to remove the -ENOENT test.

Moreover, the clock related members of struct dw_hdmi are not required
anymore, hence drop them.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 66 ++++++++-----------------------
 1 file changed, 16 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 9f2bc932c371..0031f3c54882 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -138,9 +138,6 @@ struct dw_hdmi {
 	struct platform_device *audio;
 	struct platform_device *cec;
 	struct device *dev;
-	struct clk *isfr_clk;
-	struct clk *iahb_clk;
-	struct clk *cec_clk;
 	struct dw_hdmi_i2c *i2c;
 
 	struct hdmi_data_info hdmi_data;
@@ -3326,6 +3323,7 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 	struct device_node *ddc_node;
 	struct dw_hdmi_cec_data cec;
 	struct dw_hdmi *hdmi;
+	struct clk *clk;
 	struct resource *iores = NULL;
 	int irq;
 	int ret;
@@ -3405,50 +3403,27 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 		hdmi->regm = plat_data->regm;
 	}
 
-	hdmi->isfr_clk = devm_clk_get(hdmi->dev, "isfr");
-	if (IS_ERR(hdmi->isfr_clk)) {
-		ret = PTR_ERR(hdmi->isfr_clk);
+	clk = devm_clk_get_enabled(hdmi->dev, "isfr");
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
 		dev_err(hdmi->dev, "Unable to get HDMI isfr clk: %d\n", ret);
 		goto err_res;
 	}
 
-	ret = clk_prepare_enable(hdmi->isfr_clk);
-	if (ret) {
-		dev_err(hdmi->dev, "Cannot enable HDMI isfr clock: %d\n", ret);
-		goto err_res;
-	}
-
-	hdmi->iahb_clk = devm_clk_get(hdmi->dev, "iahb");
-	if (IS_ERR(hdmi->iahb_clk)) {
-		ret = PTR_ERR(hdmi->iahb_clk);
+	clk = devm_clk_get_enabled(hdmi->dev, "iahb");
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
 		dev_err(hdmi->dev, "Unable to get HDMI iahb clk: %d\n", ret);
-		goto err_isfr;
-	}
-
-	ret = clk_prepare_enable(hdmi->iahb_clk);
-	if (ret) {
-		dev_err(hdmi->dev, "Cannot enable HDMI iahb clock: %d\n", ret);
-		goto err_isfr;
+		goto err_res;
 	}
 
-	hdmi->cec_clk = devm_clk_get(hdmi->dev, "cec");
-	if (PTR_ERR(hdmi->cec_clk) == -ENOENT) {
-		hdmi->cec_clk = NULL;
-	} else if (IS_ERR(hdmi->cec_clk)) {
-		ret = PTR_ERR(hdmi->cec_clk);
+	clk = devm_clk_get_optional_enabled(hdmi->dev, "cec");
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
 		if (ret != -EPROBE_DEFER)
 			dev_err(hdmi->dev, "Cannot get HDMI cec clock: %d\n",
 				ret);
-
-		hdmi->cec_clk = NULL;
-		goto err_iahb;
-	} else {
-		ret = clk_prepare_enable(hdmi->cec_clk);
-		if (ret) {
-			dev_err(hdmi->dev, "Cannot enable HDMI cec clock: %d\n",
-				ret);
-			goto err_iahb;
-		}
+		goto err_res;
 	}
 
 	/* Product and revision IDs */
@@ -3462,12 +3437,12 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 		dev_err(dev, "Unsupported HDMI controller (%04x:%02x:%02x)\n",
 			hdmi->version, prod_id0, prod_id1);
 		ret = -ENODEV;
-		goto err_iahb;
+		goto err_res;
 	}
 
 	ret = dw_hdmi_detect_phy(hdmi);
 	if (ret < 0)
-		goto err_iahb;
+		goto err_res;
 
 	dev_info(dev, "Detected HDMI TX controller v%x.%03x %s HDCP (%s)\n",
 		 hdmi->version >> 12, hdmi->version & 0xfff,
@@ -3479,14 +3454,14 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
 		ret = irq;
-		goto err_iahb;
+		goto err_res;
 	}
 
 	ret = devm_request_threaded_irq(dev, irq, dw_hdmi_hardirq,
 					dw_hdmi_irq, IRQF_SHARED,
 					dev_name(dev), hdmi);
 	if (ret)
-		goto err_iahb;
+		goto err_res;
 
 	/*
 	 * To prevent overflows in HDMI_IH_FC_STAT2, set the clk regenerator
@@ -3603,11 +3578,6 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 
 	return hdmi;
 
-err_iahb:
-	clk_disable_unprepare(hdmi->iahb_clk);
-	clk_disable_unprepare(hdmi->cec_clk);
-err_isfr:
-	clk_disable_unprepare(hdmi->isfr_clk);
 err_res:
 	i2c_put_adapter(hdmi->ddc);
 
@@ -3627,10 +3597,6 @@ void dw_hdmi_remove(struct dw_hdmi *hdmi)
 	/* Disable all interrupts */
 	hdmi_writeb(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);
 
-	clk_disable_unprepare(hdmi->iahb_clk);
-	clk_disable_unprepare(hdmi->isfr_clk);
-	clk_disable_unprepare(hdmi->cec_clk);
-
 	if (hdmi->i2c)
 		i2c_del_adapter(&hdmi->i2c->adap);
 	else

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
