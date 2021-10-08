Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF29FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:29:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F80560E75
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:29:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8F80560E75
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dwp1QHAWBIr6YY+5aTb++c2a1xxkAx6DPqnyer3Watw=; b=5B185IkqiM0coW
	KsQZV+MLFdiNPiKdboeMABAHuPifuObO+tizRwfLU/cthrMk8IIyJQz22r0duhcoGwfn1N6S3VbzO
	p76/kgjKBgY7gqTR9c23YBfifYpp7E7qBwIv2lI2hpMc5lxgM7kJvGyuzwV1oXvcNWjwpm4sq8NBz
	NBYQJtc+URl7xSSFb8w95f5S5sEjz/uoFKyNwR9SfYybYlhcMopcElcMM0jrKcqzMV8FJVjCRIdIW
	atZHAkqmv6gWDU5USYJtLYAW6bemCAejDGUmXKP/0ygbB8ugSzpPpEyTs7BTz7OjVjz3TxvG0p6xI
	8pNC/3B/sgzAtpMyoimA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmCD-002BqE-I9; Fri, 08 Oct 2021 09:29:41 +0000
Received: from mx24.baidu.com ([111.206.215.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmBf-002BaS-3o; Fri, 08 Oct 2021 09:29:09 +0000
Received: from BJHW-Mail-Ex10.internal.baidu.com (unknown [10.127.64.33])
 by Forcepoint Email with ESMTPS id 8BB20F70243F7C8C237C;
 Fri,  8 Oct 2021 17:29:02 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BJHW-Mail-Ex10.internal.baidu.com (10.127.64.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Fri, 8 Oct 2021 17:29:02 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Fri, 8 Oct 2021 17:29:01 +0800
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
Subject: [PATCH v4 2/9] iio: adc: imx7d_adc: Make use of the helper function
 dev_err_probe()
Date: Fri, 8 Oct 2021 17:28:50 +0800
Message-ID: <20211008092858.495-2-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211008092858.495-1-caihuoqing@baidu.com>
References: <20211008092858.495-1-caihuoqing@baidu.com>
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex14.internal.baidu.com (172.31.51.54) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-Baidu-BdMsfe-DateCheck: 1_BJHW-Mail-Ex10_2021-10-08 17:29:02:534
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_022907_379893_2155FC09 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
v3->v4: Handle platform_get_irq() that returns -EPROBE_DEFER.

 drivers/iio/adc/imx7d_adc.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/iio/adc/imx7d_adc.c b/drivers/iio/adc/imx7d_adc.c
index 4969a5f941e3..d69d8b7d8456 100644
--- a/drivers/iio/adc/imx7d_adc.c
+++ b/drivers/iio/adc/imx7d_adc.c
@@ -493,22 +493,16 @@ static int imx7d_adc_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-		return irq;
+		return dev_err_probe(dev, irq, "Failed getting irq\n");
 
 	info->clk = devm_clk_get(dev, "adc");
-	if (IS_ERR(info->clk)) {
-		ret = PTR_ERR(info->clk);
-		dev_err(dev, "Failed getting clock, err = %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(info->clk))
+		return dev_err_probe(dev, PTR_ERR(info->clk), "Failed getting clock\n");
 
 	info->vref = devm_regulator_get(dev, "vref");
-	if (IS_ERR(info->vref)) {
-		ret = PTR_ERR(info->vref);
-		dev_err(dev,
-			"Failed getting reference voltage, err = %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(info->vref))
+		return dev_err_probe(dev, PTR_ERR(info->vref),
+				     "Failed getting reference voltage\n");
 
 	platform_set_drvdata(pdev, indio_dev);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
