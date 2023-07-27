Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9578AC04E69
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jul 2023 07:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ofmDu7YvnDaG8DYOEnoNqW3M+Xzgh8RBo69FpuPBA7U=; b=kmWZQLd47irRCx
	G9MpJ0Hwkr9RXaj3sn4rIjT5NOO2ijdjuJRR33FuvRRCJ0GdFohWdOQ0Zfow8tVc9QwImrFX8utS4
	6bsqmICSuq9HY/fNoJGVS78xAe2lsAmAHZ6y3Rjt4nAba/PrHjaQjYXCC1YcfTBJIwlybcdvl4WfU
	DkDpWWZWyXMripwJf45SXgm892LkiILJJMrO4vU2/9aSAnX0nJ9zy3Az2tjBzwNJ92zym+UxntYy9
	hI7zM2TA4pwgPq9Tz0Ov5MNiFPvGBgErAUwgVhWO6Dfwko+gT86isRWqCdE9PEavJqjMB9NnaHHG0
	+vnYOuh2Y07z13xOQEWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOvbY-00CU06-2n;
	Thu, 27 Jul 2023 07:40:12 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOvbQ-00CTvu-0m;
	Thu, 27 Jul 2023 07:40:06 +0000
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.57])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4RBN1b4jNTz1GDJv;
	Thu, 27 Jul 2023 15:38:59 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 27 Jul
 2023 15:39:52 +0800
From: Ruan Jinjie <ruanjinjie@huawei.com>
To: <linus.walleij@linaro.org>, <jic23@kernel.org>, <lars@metafoo.de>,
	<haibo.chen@nxp.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
	<kernel@pengutronix.de>, <festevam@gmail.com>, <linux-imx@nxp.com>,
	<heiko@sntech.de>, <ktsai@capellamicro.com>, <risca@dalakolonin.se>,
	<christophe.jaillet@wanadoo.fr>, <dan.carpenter@linaro.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next] iio: adc: Remove redundant dev_err_probe()
Date: Thu, 27 Jul 2023 15:39:12 +0800
Message-ID: <20230727073912.4178659-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_004004_691549_B6037BC9 
X-CRM114-Status: GOOD (  11.22  )
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

There is no need to call the dev_err() function directly to print a custom
message when handling an error from either the platform_get_irq() or
platform_get_irq_byname() functions as both are going to display an
appropriate error message in case of a failure.

Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
---
 drivers/iio/adc/ab8500-gpadc.c    | 6 ++----
 drivers/iio/adc/imx7d_adc.c       | 2 +-
 drivers/iio/adc/palmas_gpadc.c    | 6 ++----
 drivers/iio/adc/rockchip_saradc.c | 2 +-
 drivers/iio/light/cm3605.c        | 2 +-
 5 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/adc/ab8500-gpadc.c b/drivers/iio/adc/ab8500-gpadc.c
index 4fa2126a354b..3b1bdd0b531d 100644
--- a/drivers/iio/adc/ab8500-gpadc.c
+++ b/drivers/iio/adc/ab8500-gpadc.c
@@ -1099,14 +1099,12 @@ static int ab8500_gpadc_probe(struct platform_device *pdev)
 
 	gpadc->irq_sw = platform_get_irq_byname(pdev, "SW_CONV_END");
 	if (gpadc->irq_sw < 0)
-		return dev_err_probe(dev, gpadc->irq_sw,
-				     "failed to get platform sw_conv_end irq\n");
+		return gpadc->irq_sw;
 
 	if (is_ab8500(gpadc->ab8500)) {
 		gpadc->irq_hw = platform_get_irq_byname(pdev, "HW_CONV_END");
 		if (gpadc->irq_hw < 0)
-			return dev_err_probe(dev, gpadc->irq_hw,
-					     "failed to get platform hw_conv_end irq\n");
+			return gpadc->irq_hw;
 	} else {
 		gpadc->irq_hw = 0;
 	}
diff --git a/drivers/iio/adc/imx7d_adc.c b/drivers/iio/adc/imx7d_adc.c
index 22da81bac97f..828d3fea6d43 100644
--- a/drivers/iio/adc/imx7d_adc.c
+++ b/drivers/iio/adc/imx7d_adc.c
@@ -496,7 +496,7 @@ static int imx7d_adc_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-		return dev_err_probe(dev, irq, "Failed getting irq\n");
+		return irq;
 
 	info->clk = devm_clk_get(dev, "adc");
 	if (IS_ERR(info->clk))
diff --git a/drivers/iio/adc/palmas_gpadc.c b/drivers/iio/adc/palmas_gpadc.c
index 27b2632c1037..a66da674a6ad 100644
--- a/drivers/iio/adc/palmas_gpadc.c
+++ b/drivers/iio/adc/palmas_gpadc.c
@@ -916,8 +916,7 @@ static int palmas_gpadc_probe(struct platform_device *pdev)
 
 	adc->irq_auto_0 = platform_get_irq(pdev, 1);
 	if (adc->irq_auto_0 < 0)
-		return dev_err_probe(adc->dev, adc->irq_auto_0,
-				     "get auto0 irq failed\n");
+		return adc->irq_auto_0;
 
 	ret = devm_request_threaded_irq(&pdev->dev, adc->irq_auto_0, NULL,
 					palmas_gpadc_irq_auto, IRQF_ONESHOT,
@@ -929,8 +928,7 @@ static int palmas_gpadc_probe(struct platform_device *pdev)
 
 	adc->irq_auto_1 = platform_get_irq(pdev, 2);
 	if (adc->irq_auto_1 < 0)
-		return dev_err_probe(adc->dev, adc->irq_auto_1,
-				     "get auto1 irq failed\n");
+		return adc->irq_auto_1;
 
 	ret = devm_request_threaded_irq(&pdev->dev, adc->irq_auto_1, NULL,
 					palmas_gpadc_irq_auto, IRQF_ONESHOT,
diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 4b011f7eddec..8270652244c2 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -467,7 +467,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-		return dev_err_probe(&pdev->dev, irq, "failed to get irq\n");
+		return irq;
 
 	ret = devm_request_irq(&pdev->dev, irq, rockchip_saradc_isr,
 			       0, dev_name(&pdev->dev), info);
diff --git a/drivers/iio/light/cm3605.c b/drivers/iio/light/cm3605.c
index 0b30db77f78b..e7f0b81b7f5a 100644
--- a/drivers/iio/light/cm3605.c
+++ b/drivers/iio/light/cm3605.c
@@ -227,7 +227,7 @@ static int cm3605_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
-		ret = dev_err_probe(dev, irq, "failed to get irq\n");
+		ret = irq;
 		goto out_disable_aset;
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
