Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90E8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:33:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 881AA60F90
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:33:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 881AA60F90
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsUvpQJy1UcMKqeuZ2JD7U4FJZ1ntg6Iv+pHNIXm6Eo=; b=b8bxyaN5qsZAls
	mh9Rci9tM8kDGq6xv8+ob4Iwymo6gEkdNDWJnFQ6Ik9T7rblvpzPlQbKjCGYQ/3IIOxz9aNcLh0cv
	+88MSoU90YTT4BCZp9U30qv6l4NGX00MJajbhqg7A/mt7nc+BZl3SE11kSvBbFQnSe4Ue+MQxl5Ls
	tgyUPU+4cg9aVGWMyBjLdl9LqjWyC52QcOXJ6xnvB7n9s1AYHMcKXk1JzqHutPRzDAFAOsS/Pxpi/
	/h/d+Lb2uVCvEQ7PpjjoKKM00AZ9leY5UAZjBZWUsMl5uGQMTZ8u2xK4M/2Uojf8PypKJD3xdkA6A
	2jXQu3Qx1bQ6rsI6LSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmFa-002DpT-8h; Fri, 08 Oct 2021 09:33:10 +0000
Received: from mx24.baidu.com ([111.206.215.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmBu-002BiW-Ae; Fri, 08 Oct 2021 09:29:23 +0000
Received: from BC-Mail-Ex15.internal.baidu.com (unknown [172.31.51.55])
 by Forcepoint Email with ESMTPS id F0B3D676A9121E31F75;
 Fri,  8 Oct 2021 17:29:20 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BC-Mail-Ex15.internal.baidu.com (172.31.51.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Fri, 8 Oct 2021 17:29:20 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Fri, 8 Oct 2021 17:29:19 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <caihuoqing@baidu.com>
CC: Linus Walleij <linus.walleij@linaro.org>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "NXP Linux Team" <linux-imx@nxp.com>, Vladimir Zapolskiy <vz@mleia.com>,
 "Neil Armstrong" <narmstrong@baylibre.com>, Kevin Hilman
 <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Andy Gross
 <agross@kernel.org>, "Bjorn Andersson" <bjorn.andersson@linaro.org>, Heiko
 Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: [PATCH v4 8/9] iio: adc: rockchip_saradc: Make use of the helper
 function dev_err_probe()
Date: Fri, 8 Oct 2021 17:28:56 +0800
Message-ID: <20211008092858.495-8-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211008092858.495-1-caihuoqing@baidu.com>
References: <20211008092858.495-1-caihuoqing@baidu.com>
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex14.internal.baidu.com (172.31.51.54) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_022922_603685_8EF34817 
X-CRM114-Status: GOOD (  10.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

When possible use dev_err_probe help to properly deal with the
PROBE_DEFER error, the benefit is that DEFER issue will be logged
in the devices_deferred debugfs file.
Using dev_err_probe() can reduce code size, and the error value
gets printed.

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
v1->v2: Remove the separate line of PTR_ERR().
v3->v4:
	*Handle devm_reset_control_get_exclusive() by dev_err_probe().
	*Handle platform_get_irq() that returns -EPROBE_DEFER.

 drivers/iio/adc/rockchip_saradc.c | 27 ++++++++++++---------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index a56a0d7337ca..14b8df4ca9c8 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -360,7 +360,8 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (IS_ERR(info->reset)) {
 		ret = PTR_ERR(info->reset);
 		if (ret != -ENOENT)
-			return ret;
+			return dev_err_probe(&pdev->dev, ret,
+					     "failed to get saradc-apb\n");
 
 		dev_dbg(&pdev->dev, "no reset control found\n");
 		info->reset = NULL;
@@ -370,7 +371,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-		return irq;
+		return dev_err_probe(&pdev->dev, irq, "failed to get irq\n");
 
 	ret = devm_request_irq(&pdev->dev, irq, rockchip_saradc_isr,
 			       0, dev_name(&pdev->dev), info);
@@ -380,23 +381,19 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	}
 
 	info->pclk = devm_clk_get(&pdev->dev, "apb_pclk");
-	if (IS_ERR(info->pclk)) {
-		dev_err(&pdev->dev, "failed to get pclk\n");
-		return PTR_ERR(info->pclk);
-	}
+	if (IS_ERR(info->pclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->pclk),
+				     "failed to get pclk\n");
 
 	info->clk = devm_clk_get(&pdev->dev, "saradc");
-	if (IS_ERR(info->clk)) {
-		dev_err(&pdev->dev, "failed to get adc clock\n");
-		return PTR_ERR(info->clk);
-	}
+	if (IS_ERR(info->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
+				     "failed to get adc clock\n");
 
 	info->vref = devm_regulator_get(&pdev->dev, "vref");
-	if (IS_ERR(info->vref)) {
-		dev_err(&pdev->dev, "failed to get regulator, %ld\n",
-			PTR_ERR(info->vref));
-		return PTR_ERR(info->vref);
-	}
+	if (IS_ERR(info->vref))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->vref),
+				     "failed to get regulator\n");
 
 	if (info->reset)
 		rockchip_saradc_reset_controller(info->reset);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
