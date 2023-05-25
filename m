Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C1DBC7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fR33ns+VQAmq6qMdjeF0YZn+jqqPbdIkLb/7apjaEbk=; b=hK2s33HFercvXX
	NqlP2XwS/XZDHQ/sj90xc5Z2GMwqdhReSkbaykfNTLc6itQTX/XKr8omuUImxaN+9zwBmerQYjjMM
	3BRNivG5/yGh9YrdmyaIxRrxiRL1nhNCKvCP3IeDX8C0hz3g+kkaNTu8aUYEdUoRntVBB4TybCRG7
	VRlTtn9lcJ3diuDE5sNpL/258V6//ZGr8B8tgjWSF4SVLKbozMvBy2Fngvujcd6cX0rKg8eVsb1dr
	y2MJ4dVoEu3MVJ/V+k2Hf+pi6/zmlD0zPEsiPWLdZs4kOCDuWdJeOWlUgIPwHfW7fEGM3W+f4pYjC
	ChyDYptFVpo5YG/q6DnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVT-000Brz-0K;
	Thu, 25 May 2023 21:28:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVK-000BnA-0K;
	Thu, 25 May 2023 21:28:15 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 303346606E81;
	Thu, 25 May 2023 22:28:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050092;
	bh=dLuu0SEFNcIqh//QlQCte4G4opm+zXpvYd73IcKTf1s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LEKdNo3mLOU+adE2Y7F/aUFFUhZfZ4UXAGvUd2GlJT0kQHuvss+mbsX/O/73C6y6E
	 JabCu7NLEA/RPKe+5vEv5Wvs71PpxdKY0nFiXIfQu6kah/uk8fTlJiFmB8bipNl/SB
	 Xq7EkfAvk7sSkvTZplkeRD0B1yH/9Xt0nVRSG6wEgTkP6xjF35MzQX8NZvFcFMBrVg
	 JPBaude2yN99FKCnjjYqDbOd75/dZofAW4wHFtdUDLuQ2Te6V7D05pWlt8w+N0uqDy
	 /ZEnRHCyETPZlASaBNmn6KKvvGOhkNBMYNShvT0TJ3udbjltyeEZKiwlJfRqVtSfBC
	 iZI6NjMpv2bXA==
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
Subject: [PATCH v2 3/8] iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled
Date: Fri, 26 May 2023 02:57:07 +0530
Message-Id: <20230525212712.255406-4-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142814_411384_78DAE424 
X-CRM114-Status: GOOD (  13.09  )
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

Changes in v2
  - No need to enable the clocks earlier than the original code.
    Move the enablement of clocks at it's original position.

 drivers/iio/adc/rockchip_saradc.c | 73 ++++---------------------------
 1 file changed, 9 insertions(+), 64 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 31637440be83..41226b76a995 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -345,20 +345,6 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
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
@@ -492,16 +478,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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
@@ -539,31 +515,15 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
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
+	info->pclk = devm_clk_get_enabled(&pdev->dev, "apb_pclk");
+	if (IS_ERR(info->pclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->pclk),
+				     "failed to get pclk\n");
 
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
+	info->clk = devm_clk_get_enabled(&pdev->dev, "saradc");
+	if (IS_ERR(info->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
+				     "failed to get adc clock\n");
 
 	platform_set_drvdata(pdev, indio_dev);
 
@@ -600,8 +560,6 @@ static int rockchip_saradc_suspend(struct device *dev)
 	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct rockchip_saradc *info = iio_priv(indio_dev);
 
-	clk_disable_unprepare(info->clk);
-	clk_disable_unprepare(info->pclk);
 	regulator_disable(info->vref);
 
 	return 0;
@@ -611,21 +569,8 @@ static int rockchip_saradc_resume(struct device *dev)
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
