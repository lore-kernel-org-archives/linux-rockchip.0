Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512E1C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:30:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 137EB60F90
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:30:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 137EB60F90
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/J5TIoeT0UcUrKxNJW/psE7+QwR9+QVjOAz23C99grM=; b=Tssp68l9kRYbX8
	IPC4UrvL6LSbDocpdyR37KggAKZ3mRFR3KZU634wJ4QbD/HpeJb6tnQfQll8B8wbY8C8kbsFEW5JJ
	uE3ZJH3x+wMaNkxxsun0xGy3BFevCAOHExOzFXaSgPJRyuAXV5ONPaGQQgzsEw1jnsUsnM3pJC0zY
	Bq/io2y8IOVQMIbm6LrIwuw5BD4mU1mdQcG1V9OQoalT+35/DSRG8p9qch352I2uNS7J9qozzSu1q
	hEMBdowYHUixiCEbV/AxFKUqm7Bd9baVndiFoZGf9RanyfJ2GBTCmt9Avg4oaLOOyLlkC3touRU1M
	XkvNC9tSDFxnVuAh1XhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmCy-002CGI-AJ; Fri, 08 Oct 2021 09:30:28 +0000
Received: from mx22.baidu.com ([220.181.50.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmBh-002BcJ-JT; Fri, 08 Oct 2021 09:29:11 +0000
Received: from BJHW-Mail-Ex14.internal.baidu.com (unknown [10.127.64.37])
 by Forcepoint Email with ESMTPS id 990FF4FF3CDB6B75BF7F;
 Fri,  8 Oct 2021 17:29:08 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BJHW-Mail-Ex14.internal.baidu.com (10.127.64.37) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Fri, 8 Oct 2021 17:29:08 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Fri, 8 Oct 2021 17:29:07 +0800
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
Subject: [PATCH v4 4/9] iio: adc: max1118: Make use of the helper function
 dev_err_probe()
Date: Fri, 8 Oct 2021 17:28:52 +0800
Message-ID: <20211008092858.495-4-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211008092858.495-1-caihuoqing@baidu.com>
References: <20211008092858.495-1-caihuoqing@baidu.com>
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex14.internal.baidu.com (172.31.51.54) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-Baidu-BdMsfe-DateCheck: 1_BJHW-Mail-Ex14_2021-10-08 17:29:08:562
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_022909_843424_EB1D8638 
X-CRM114-Status: UNSURE (   9.89  )
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
 drivers/iio/adc/max1118.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/max1118.c b/drivers/iio/adc/max1118.c
index 8cec9d949083..a41bc570be21 100644
--- a/drivers/iio/adc/max1118.c
+++ b/drivers/iio/adc/max1118.c
@@ -221,10 +221,9 @@ static int max1118_probe(struct spi_device *spi)
 
 	if (id->driver_data == max1118) {
 		adc->reg = devm_regulator_get(&spi->dev, "vref");
-		if (IS_ERR(adc->reg)) {
-			dev_err(&spi->dev, "failed to get vref regulator\n");
-			return PTR_ERR(adc->reg);
-		}
+		if (IS_ERR(adc->reg))
+			return dev_err_probe(&spi->dev, PTR_ERR(adc->reg),
+					     "failed to get vref regulator\n");
 		ret = regulator_enable(adc->reg);
 		if (ret)
 			return ret;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
