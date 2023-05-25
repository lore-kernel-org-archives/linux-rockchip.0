Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB01C7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoOruREaLnKTFvMftJ/Q5qgQiP9tklQYK2GCTjMeSNI=; b=OMpaHKRAqcqPNV
	HHTUNmn90/rQ0+wVDU6zuasK6fCHie2Ki6yDsry60cTX1wk76Lg7VMCZUpegkAMebzXTpSSaqTEeV
	Et4fREG6kaJaFvzkcOCnRnYZjJQy/nJBqb4c9imFcSobswPnZ2FuaE8t068SS+YdWwCXQ4i9fQkHS
	QRNqsH2y/dKrXfNp1zOdsd8wFOniwjcY1RKZHI0X5WMkh4I7jENPxdD5QuDfBzEEzZ9JSMmMvbj3g
	pNqRUEEmGYdfglgWDPw8L1Q5cQ7l/ZjD6JSMmFL3hC/Xez4ykEFQ378u/u4SqyIRGacd5/Q4DqTpG
	yOd9cngLBhCRVAd8ByDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVs-000C7s-0V;
	Thu, 25 May 2023 21:28:48 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVd-000By8-2I;
	Thu, 25 May 2023 21:28:35 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 18DBE6606E83;
	Thu, 25 May 2023 22:28:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050112;
	bh=D27vPfnw18aPYNhUhk1W3Go5MIiPfMAWKC6N6Jt7LbQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XaWkB4Q6bdKk5tFT+QmLTI/tXYZUPcC3yoopnZZhl5JMMbfcR4y+L2Kv1W7tNHA3i
	 1GwAVEJTyADTACD3rrAQhL6o5g4WO8s+JIOxNeIt9OTp8Rpldg/IUiWOjwR58F9C1l
	 LameiIfIM7N8HczBy21QKHMRxkbRCJXET1j/WGsvKoD6hFymgsB8hA62ICzm0/BDtI
	 SU2HGUszENEE/NOfysXujpv+Vma2yEKBn+GwS3kNQUsC7Gp2d3zGsp1NXvHxbm9RaR
	 TOvfc2zHz06j13k4KpVwNM8b3mg2vrn7h2JwQkZ3/rEzdm8ipTCkz/rhm5Jmxt1jnX
	 zfe33uZhIUIRA==
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
Subject: [PATCH v2 6/8] iio: adc: rockchip_saradc: Use dev_err_probe
Date: Fri, 26 May 2023 02:57:10 +0530
Message-Id: <20230525212712.255406-7-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142833_895888_4856359E 
X-CRM114-Status: GOOD (  13.78  )
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

Use dev_err_probe instead of dev_err in probe function,
which simplifies code a little bit and prints the error
code.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---

Changes in v2
  - No changes

 drivers/iio/adc/rockchip_saradc.c | 45 ++++++++++++++-----------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index ede929d9bca0..54c1c2f018a9 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -424,25 +424,23 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 		return -ENODEV;
 
 	indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*info));
-	if (!indio_dev) {
-		dev_err(&pdev->dev, "failed allocating iio device\n");
-		return -ENOMEM;
-	}
+	if (!indio_dev)
+		return dev_err_probe(&pdev->dev, -ENOMEM,
+				     "failed allocating iio device\n");
+
 	info = iio_priv(indio_dev);
 
 	match_data = of_device_get_match_data(&pdev->dev);
-	if (!match_data) {
-		dev_err(&pdev->dev, "failed to match device\n");
-		return -ENODEV;
-	}
+	if (!match_data)
+		return dev_err_probe(&pdev->dev, -ENODEV,
+				     "failed to match device\n");
 
 	info->data = match_data;
 
 	/* Sanity check for possible later IP variants with more channels */
-	if (info->data->num_channels > SARADC_MAX_CHANNELS) {
-		dev_err(&pdev->dev, "max channels exceeded");
-		return -EINVAL;
-	}
+	if (info->data->num_channels > SARADC_MAX_CHANNELS)
+		return dev_err_probe(&pdev->dev, -EINVAL,
+				     "max channels exceeded");
 
 	info->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(info->regs))
@@ -490,23 +488,20 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	 * This may become user-configurable in the future.
 	 */
 	ret = clk_set_rate(info->clk, info->data->clk_rate);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to set adc clk rate, %d\n", ret);
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to set adc clk rate\n");
 
 	ret = regulator_enable(info->vref);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to enable vref regulator\n");
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to enable vref regulator\n");
+
 	ret = devm_add_action_or_reset(&pdev->dev,
 				       rockchip_saradc_regulator_disable, info);
-	if (ret) {
-		dev_err(&pdev->dev, "failed to register devm action, %d\n",
-			ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to register devm action\n");
 
 	ret = regulator_get_voltage(info->vref);
 	if (ret < 0)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
