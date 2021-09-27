Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D27C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 08:18:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7078260EB4
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 08:18:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7078260EB4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/l3EU8a/37cDjjRlJtteQpgjwY6Ao5GyXts50ZRO3s=; b=LI7mzNidDZG65U
	Dj2zC9EK79H2CNsRRnPsYPQp58HviukPhNV/kyKyIxCzifPpDlZfSwyhQmTN8mEA4zdRWhtJd2iWN
	1J/UEcOSTV2KranjFpiXHH7DYG6rfehDvVWVnVD+lIZZm6xfTk86/N7JUVaX8gXNAnALP3qRwfH91
	bXiqilTwUcUEBCh2/UoOQI4TPJPp3ItBRhXmCM5qmDflIAV9FJKu5ObFacPpZyAxb4nAq9xv3grio
	d+jMh6C4brudRlm6MZfmpXPEYIVcuiA3dr7GhAH8kpvBQoxxhhHVz/itiM3IuLlv3zHYEtENRq6uV
	8GmCRsXdRSqx1ioI+WDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUlq3-001xZ3-Kx; Mon, 27 Sep 2021 08:18:15 +0000
Received: from mx24.baidu.com ([111.206.215.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUlnU-001vxv-Dh; Mon, 27 Sep 2021 08:15:38 +0000
Received: from BC-Mail-Ex31.internal.baidu.com (unknown [172.31.51.25])
 by Forcepoint Email with ESMTPS id EA99EBA5509B56E1DD20;
 Mon, 27 Sep 2021 16:15:34 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BC-Mail-Ex31.internal.baidu.com (172.31.51.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Mon, 27 Sep 2021 16:15:34 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Mon, 27 Sep 2021 16:15:33 +0800
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
Subject: [PATCH 8/9] iio: adc: rockchip_saradc: Make use of the helper
 function dev_err_probe()
Date: Mon, 27 Sep 2021 16:14:24 +0800
Message-ID: <20210927081426.762-8-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210927081426.762-1-caihuoqing@baidu.com>
References: <20210927081426.762-1-caihuoqing@baidu.com>
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex10.internal.baidu.com (172.31.51.50) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_011536_715173_355BA40A 
X-CRM114-Status: GOOD (  10.06  )
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
 drivers/iio/adc/rockchip_saradc.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index a56a0d7337ca..57419ccb3c70 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -392,11 +392,10 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	}
 
 	info->vref = devm_regulator_get(&pdev->dev, "vref");
-	if (IS_ERR(info->vref)) {
-		dev_err(&pdev->dev, "failed to get regulator, %ld\n",
-			PTR_ERR(info->vref));
-		return PTR_ERR(info->vref);
-	}
+	if (IS_ERR(info->vref))
+		return dev_err_probe(&pdev->dev,
+				     PTR_ERR(info->vref),
+				     "failed to get regulator\n");
 
 	if (info->reset)
 		rockchip_saradc_reset_controller(info->reset);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
