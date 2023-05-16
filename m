Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C34C77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 23:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rc6R4Cd6Ut5d0OpJM/rIURbg9Z4tZh9P3Eriwvyxsdk=; b=UUM0ksrmqX56qm
	JmAoti0sS01Qomh7scV5Zi4ZdLPmFg7gNW0YLAeHlmK3LHsyocjXKK9RbLtJtS+VXUJ9UdrdakVyr
	KtHg6uuDbdgTxy6NcEpmqdAKqukagI4N4NVfkBTct7yNnnlvF+RaLxFjr3RYi7XYRihKOIxcr1dPi
	6GyHTNfgqhYHwpM/xdV2KuRvsd7Dd4PFiwcufFKLUzYsEKvoKb+UjqulbuzAnjcz30S+DBoxsp80X
	GSMSL0e/te/OdFEroEhxZjbjmIPnT1pZZ6h1LW01dYQPekMpZ/+NBbV+F22sef2kFl94t1BhEhaUG
	piXOvIYqg716rXNqEXHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3hD-007Nu5-2N;
	Tue, 16 May 2023 23:03:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3hA-007Nrm-2e;
	Tue, 16 May 2023 23:03:06 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1BC756605906;
	Wed, 17 May 2023 00:02:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684278183;
	bh=p1G9c4ZZ0z8CwWdi+emrO1to/4AF/8CTX9Ml4RigWEU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YjsZ4IsUmuOvbFm3+kJRtR/DToroDRMOUlV+7bBqh4nlkSmKs3HOWXTYV+aFMi12B
	 K62bCfS6sHud5Ljdj9zwnT9U31oTw0aCeF6StztEaP2QTZdj0Ziu8vUCYazEcs0yih
	 fMJkJSW8tCIOV3zAj6h8IKAy9ZxsYIccrfGdtdu1ji1KikCXg/ki09rAuPQ/4+fyVZ
	 S9dmAp81e2WUSl+fH/wMDFiWgcME6ltH/W2CqWfbfK+GTSuQCooJX/syZ7mCTjzWgU
	 wetWmBND3XWYBFitf+kGIUYWkv3aFngf7UGMBeyOhwyJhWdGs8MOkCFrUISJYHcaPW
	 qX6Vs3LGcAxQg==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH 2/7] iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled
Date: Wed, 17 May 2023 04:30:46 +0530
Message-Id: <20230516230051.14846-3-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230516230051.14846-1-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_160305_120257_D70EB150 
X-CRM114-Status: GOOD (  13.64  )
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

Use devm_clk_get_enabled() to avoid manually disabling the
clock.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 drivers/iio/adc/rockchip_saradc.c | 77 +++++--------------------------
 1 file changed, 11 insertions(+), 66 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index ac6fdf8e673b..05b66eff9a44 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -339,20 +339,6 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
 	reset_control_deassert(reset);
 }
 
-static void rockchip_saradc_clk_disable(void *data)
-{
-	struct rockchip_saradc *info = data;
-
-	clk_disable_unprepare(info->clk);
-}
-
-static void rockchip_saradc_pclk_disable(void *data)
-{
-	struct rockchip_saradc *info = data;
-
-	clk_disable_unprepare(info->pclk);
-}
-
 static void rockchip_saradc_regulator_disable(void *data)
 {
 	struct rockchip_saradc *info = data;
@@ -486,16 +472,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	info->pclk = devm_clk_get(&pdev->dev, "apb_pclk");
-	if (IS_ERR(info->pclk))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->pclk),
-				     "failed to get pclk\n");
-
-	info->clk = devm_clk_get(&pdev->dev, "saradc");
-	if (IS_ERR(info->clk))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
-				     "failed to get adc clock\n");
-
 	info->vref = devm_regulator_get(&pdev->dev, "vref");
 	if (IS_ERR(info->vref))
 		return dev_err_probe(&pdev->dev, PTR_ERR(info->vref),
@@ -504,6 +480,16 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (info->reset)
 		rockchip_saradc_reset_controller(info->reset);
 
+	info->pclk = devm_clk_get_enabled(&pdev->dev, "apb_pclk");
+	if (IS_ERR(info->pclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->pclk),
+				     "failed to get pclk\n");
+
+	info->clk = devm_clk_get_enabled(&pdev->dev, "saradc");
+	if (IS_ERR(info->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
+				     "failed to get adc clock\n");
+
 	/*
 	 * Use a default value for the converter clock.
 	 * This may become user-configurable in the future.
@@ -533,32 +519,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	info->uv_vref = ret;
 
-	ret = clk_prepare_enable(info->pclk);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to enable pclk\n");
-		return ret;
-	}
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rockchip_saradc_pclk_disable, info);
-	if (ret) {
-		dev_err(&pdev->dev, "failed to register devm action, %d\n",
-			ret);
-		return ret;
-	}
-
-	ret = clk_prepare_enable(info->clk);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to enable converter clock\n");
-		return ret;
-	}
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rockchip_saradc_clk_disable, info);
-	if (ret) {
-		dev_err(&pdev->dev, "failed to register devm action, %d\n",
-			ret);
-		return ret;
-	}
-
 	platform_set_drvdata(pdev, indio_dev);
 
 	indio_dev->name = dev_name(&pdev->dev);
@@ -594,8 +554,6 @@ static int rockchip_saradc_suspend(struct device *dev)
 	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct rockchip_saradc *info = iio_priv(indio_dev);
 
-	clk_disable_unprepare(info->clk);
-	clk_disable_unprepare(info->pclk);
 	regulator_disable(info->vref);
 
 	return 0;
@@ -605,21 +563,8 @@ static int rockchip_saradc_resume(struct device *dev)
 {
 	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct rockchip_saradc *info = iio_priv(indio_dev);
-	int ret;
-
-	ret = regulator_enable(info->vref);
-	if (ret)
-		return ret;
-
-	ret = clk_prepare_enable(info->pclk);
-	if (ret)
-		return ret;
-
-	ret = clk_prepare_enable(info->clk);
-	if (ret)
-		clk_disable_unprepare(info->pclk);
 
-	return ret;
+	return regulator_enable(info->vref);
 }
 
 static DEFINE_SIMPLE_DEV_PM_OPS(rockchip_saradc_pm_ops,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
