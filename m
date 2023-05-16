Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0D6C7EE24
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 23:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+3mtjWwYQ2ebISbjFeJAIPhKMei+uMFt0w9s1PaAQ0=; b=NvFczvhDYllXLD
	Jms4DSFD1OGjKT9E4/GBkD4oDaSKvHDI65lrcYPSRKnbYUuP/wP6iQF6kj37/xI8DS2AYEF09C+Eo
	NsSzlpQzWAHGZV9kqVM0Y48OrcfmD2bs+nNsaewu25Ynb2ZAUo8se/XPjGLDaPrVOcyDNlwGlOU4X
	9/atDR/Aclz7jPqkV7wj/6KU6Dix9IXQ17ZYi/1eE446t/6axlsFm/ISFg+SSaIig8KPpi4Qsghv6
	6gHfjG/4W9Q6bZUrhMSIO8wjC8kTZIauiuQbUldYJa9+LAvzU9gADcFNJpmD3djfVPRkpLgTPsr26
	MO5hL0pM3VNZcL3b5bKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3hs-007OFs-18;
	Tue, 16 May 2023 23:03:48 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3ho-007ODe-2S;
	Tue, 16 May 2023 23:03:46 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B232E6605905;
	Wed, 17 May 2023 00:03:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684278223;
	bh=APUXpv76gAJ+bvr5pL51Y23+mXfXNgygrnteOrO5pJI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l+Ht+y+fcgjaPk088r5OsjgjFwbFXVgpdc0Nj+zL8zEkWY81HL+LGhORJ/YFLcUC2
	 DR9xkqjdks0rfhQN13R3eP3pXOMQz1G619FRRKV7BZ3JSuBpS+sZZ8eOypQRHOAxha
	 1r2ObYvLlzG09yAVsX/rlq1sBz84CjlxYyATNaRTq1vrUqaJhWvmhrfO4ckzXDlScT
	 oUyaRZxtcFqwIQAFOHeQnXRXkltx9N1E2dffYSHdwQpIbv49NLIVDH+M0WGvMN1Bgm
	 Cqa+qBbjL+2BuO5FdpzWjoJ6dXiA5Qf8I6K1Vx8iOobkUdqF2SD4zxxnAhfue8mtVq
	 lwsy+BHDZBJRA==
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
Subject: [PATCH 5/7] iio: adc: rockchip_saradc: Use dev_err_probe
Date: Wed, 17 May 2023 04:30:49 +0530
Message-Id: <20230516230051.14846-6-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230516230051.14846-1-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_160344_925921_EC91B908 
X-CRM114-Status: GOOD (  13.27  )
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
 drivers/iio/adc/rockchip_saradc.c | 45 ++++++++++++++-----------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 5e1e8575bc76..a52021fd477d 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -418,25 +418,23 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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
@@ -494,23 +492,20 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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
