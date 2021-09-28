Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF07C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 14:22:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D52C611C0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 14:22:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2D52C611C0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wyEomK6UOnUlTuvKifflruw+Q6p1hlC4xvlrb4Ff8o=; b=e7DIUPwI7zy7c5
	bSVFFShLq8qdBxOc13ULFprQujfS5W09xqy3Yt6uzCUe9e85f9TkA0lyx00VgjVbUWV/kNEGz2+dA
	1YqPcpVVTgPObPiGRZoUGU4We4I2V5BMnIxqlXABurUWNjEgcP67qMr/fcnWeDEtQ5hi6SEeKI/wj
	/HZIBlLXVbSckHoiP5+9cKFmV1FgzPyzKWXYiV4lyBqazEPXsE6uyqSXKwQYzfyEVsB1fbECRvJxx
	aG2Q+QeBiiPK8HI1xdEcEFsImFNfi64n5wg0BMM6ucJraUSawk/Ay45Cv1FDlGks7m5omqm4t3d/p
	rttyPJCA1vVw3Aan5VVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVE03-007Y9E-6B; Tue, 28 Sep 2021 14:22:27 +0000
Received: from mx22.baidu.com ([220.181.50.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVDyC-007X6z-G4; Tue, 28 Sep 2021 14:20:34 +0000
Received: from BJHW-Mail-Ex13.internal.baidu.com (unknown [10.127.64.36])
 by Forcepoint Email with ESMTPS id 63ADA635ED54FF3630B8;
 Tue, 28 Sep 2021 22:20:31 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Tue, 28 Sep 2021 22:20:31 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Tue, 28 Sep 2021 22:20:29 +0800
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
 Stuebner <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-amlogic@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH v3 6/9] iio: adc: meson_saradc: Make use of the helper
 function dev_err_probe()
Date: Tue, 28 Sep 2021 22:19:52 +0800
Message-ID: <20210928141956.2148-6-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210928141956.2148-1-caihuoqing@baidu.com>
References: <20210928141956.2148-1-caihuoqing@baidu.com>
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-Baidu-BdMsfe-DateCheck: 1_BJHW-Mail-Ex13_2021-09-28 22:20:31:410
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_072032_727257_CD207234 
X-CRM114-Status: GOOD (  11.83  )
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

 drivers/iio/adc/meson_saradc.c | 39 +++++++++++++-----------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
index 705d5e11a54b..014a77f98b98 100644
--- a/drivers/iio/adc/meson_saradc.c
+++ b/drivers/iio/adc/meson_saradc.c
@@ -1230,35 +1230,31 @@ static int meson_sar_adc_probe(struct platform_device *pdev)
 		return ret;
 
 	priv->clkin = devm_clk_get(&pdev->dev, "clkin");
-	if (IS_ERR(priv->clkin)) {
-		dev_err(&pdev->dev, "failed to get clkin\n");
-		return PTR_ERR(priv->clkin);
-	}
+	if (IS_ERR(priv->clkin))
+		return dev_err_probe(&pdev->dev, PTR_ERR(priv->clkin),
+				     "failed to get clkin\n");
 
 	priv->core_clk = devm_clk_get(&pdev->dev, "core");
-	if (IS_ERR(priv->core_clk)) {
-		dev_err(&pdev->dev, "failed to get core clk\n");
-		return PTR_ERR(priv->core_clk);
-	}
+	if (IS_ERR(priv->core_clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(priv->core_clk),
+				     "failed to get core clk\n");
 
 	priv->adc_clk = devm_clk_get(&pdev->dev, "adc_clk");
 	if (IS_ERR(priv->adc_clk)) {
-		if (PTR_ERR(priv->adc_clk) == -ENOENT) {
+		if (PTR_ERR(priv->adc_clk) == -ENOENT)
 			priv->adc_clk = NULL;
-		} else {
-			dev_err(&pdev->dev, "failed to get adc clk\n");
-			return PTR_ERR(priv->adc_clk);
-		}
+		else
+			return dev_err_probe(&pdev->dev, PTR_ERR(priv->adc_clk),
+					     "failed to get adc clk\n");
 	}
 
 	priv->adc_sel_clk = devm_clk_get(&pdev->dev, "adc_sel");
 	if (IS_ERR(priv->adc_sel_clk)) {
-		if (PTR_ERR(priv->adc_sel_clk) == -ENOENT) {
+		if (PTR_ERR(priv->adc_sel_clk) == -ENOENT)
 			priv->adc_sel_clk = NULL;
-		} else {
-			dev_err(&pdev->dev, "failed to get adc_sel clk\n");
-			return PTR_ERR(priv->adc_sel_clk);
-		}
+		else
+			return dev_err_probe(&pdev->dev, PTR_ERR(priv->adc_sel_clk),
+					     "failed to get adc_sel clk\n");
 	}
 
 	/* on pre-GXBB SoCs the SAR ADC itself provides the ADC clock: */
@@ -1265,10 +1265,9 @@ static int meson_sar_adc_probe(struct platform_device *pdev)
 	}
 
 	priv->vref = devm_regulator_get(&pdev->dev, "vref");
-	if (IS_ERR(priv->vref)) {
-		dev_err(&pdev->dev, "failed to get vref regulator\n");
-		return PTR_ERR(priv->vref);
-	}
+	if (IS_ERR(priv->vref))
+		return dev_err_probe(&pdev->dev, PTR_ERR(priv->vref),
+				     "failed to get vref regulator\n");
 
 	priv->calibscale = MILLION;
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
