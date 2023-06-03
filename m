Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A75C77B73
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 18:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzzLNabP1hkEgG6nJhExNeq38/YG/NNNuvLWxmQY/kc=; b=bwoF0yKTOB19+1
	pMoKA29NShys+OgFY988zBkwl23ywlzf927UrwN++SpBflq19FBM+zK3NmhpF/iXUJ8yEGBWyKOZr
	Dgk9M2VpL4M10NpWfZ7V1VN8L8TmYt/Zkoeg9suZj6fUbrzie8tqgc0zV3CJ8oggrHY43Rbi0TwPX
	Tra19zOQuoc/yVKkNUyRIFVo5LbW4D6etYMeDqeYbhVcbzpYOODOSYXkK4L9UVo6nRVWHP9ZpqEu9
	Us1DWY29poxsbpqPsSrtEaxv5R014G12dS1rqZ4dG65629wyK8+OdAIMT7DzwzTGFITSIIBCs1rlP
	UKMVsft8UeEBxx2go/xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WP6-00AMER-0v;
	Sat, 03 Jun 2023 18:55:08 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOw-00AM7U-0P;
	Sat, 03 Jun 2023 18:55:01 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DBE516603147;
	Sat,  3 Jun 2023 19:54:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685818496;
	bh=8dxa3AxEBlpgUQ0ClMFRIptu4pfjEzefRs26x8e/iQo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cOTtYJhlLAEFYNPHn0rH56xZmVBUVaHNl5WbXHeLOijuS7R3nL6QgaYz4qV2gtQAG
	 N6CY3vizDt0XoPpM6VJty3McTXSngliMiLlr9gsaXRCZY/7ZT8IZTAnaSTpdcY/xhJ
	 yGbssgM4o6mU60feoq+ietYuogC3bZpJs818rrCmplbVyAs4fpWw0BlKRic4yQQVuO
	 j/ou0vQDxEP3dUeeVITiSyEmAUheHwJpqZOmugBcoAmmg7Z/JAXvxbNEKxblSE0ovG
	 +sT3GCZwWOfAzbqo08d6e0srfq4csdn9XMwlUpvmIYMffck3fuF67iXNY5JhCQ4glt
	 6Iu63USJi+2NA==
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
	gustavo.padovan@collabora.com,
	kernel@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v3 6/8] iio: adc: rockchip_saradc: Use dev_err_probe
Date: Sun,  4 Jun 2023 00:23:38 +0530
Message-Id: <20230603185340.13838-7-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_115459_087908_940DD01F 
X-CRM114-Status: GOOD (  13.39  )
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

Changes in v3
  - No change

Changes in v2
  - No change

 drivers/iio/adc/rockchip_saradc.c | 45 ++++++++++++++-----------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 436e219984fd..921844d9232d 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -425,25 +425,23 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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
@@ -491,23 +489,20 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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
