Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42C42EE49A3
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 13:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xZoEadG/SGyKJrBaXuNrzibKXtAIuZ4aeB7ggpKw50=; b=CSP+4iMQcEoHz0
	kwJ6XD0vvSNhzviX5CuzMzjME1zfa35hP7HOg3dv5990qMAws/X0cZDagpAWtNmRM9BvXE0/BwgZC
	6KppbJr8fBNjvMw2gb7Q44KUeacbXr1kt6TIhGy22DBt24F7AIS7LoUmmY5AlrP/YtHCtIUqYIBfo
	BZfQg7/Rgk/c01mmZjIIz7VnKaqBup7uOg26qJF3/ZOCmwdFPlbv5Hbzr3uj1Fa5sbpdO8OQXtsNl
	JfNdHqjCPQmrXJlUuTIy2ThvOPQjsj8T/SvTt1cih2gQJoyWyydKNHLIpvzl07S5gK7EQwC+w1gwt
	jfEFYZR3zwsACZqLRRTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYo9L-000lLD-1a;
	Wed, 23 Aug 2023 13:43:55 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYo5r-000ha8-0k;
	Wed, 23 Aug 2023 13:40:21 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RW6gs5KpLzNn3J;
	Wed, 23 Aug 2023 21:36:41 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Wed, 23 Aug
 2023 21:40:15 +0800
From: Li Zetao <lizetao1@huawei.com>
To: <lizetao1@huawei.com>
CC: <andrew@aj.id.au>, <angelogioacchino.delregno@collabora.com>,
	<avifishman70@gmail.com>, <bcm-kernel-feedback-list@broadcom.com>,
	<benjaminfair@google.com>, <broonie@kernel.org>,
	<chin-ting_kuo@aspeedtech.com>, <clg@kaod.org>, <conor.dooley@microchip.com>,
	<daire.mcnamara@microchip.com>, <fancer.lancer@gmail.com>,
	<florian.fainelli@broadcom.com>, <heiko@sntech.de>, <jbrunet@baylibre.com>,
	<joel@jms.id.au>, <khilman@baylibre.com>, <linus.walleij@linaro.org>,
	<linux-amlogic@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-aspeed@lists.ozlabs.org>, <linux-mediatek@lists.infradead.org>,
	<linux-riscv@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
	<linux-rpi-kernel@lists.infradead.org>, <linux-spi@vger.kernel.org>,
	<martin.blumenstingl@googlemail.com>, <matthias.bgg@gmail.com>,
	<neil.armstrong@linaro.org>, <olteanv@gmail.com>, <openbmc@lists.ozlabs.org>,
	<rjui@broadcom.com>, <sbranden@broadcom.com>, <tali.perry1@gmail.com>,
	<tmaimon77@gmail.com>, <venture@google.com>, <yuenn@google.com>, Jonathan
 Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH -next v2 23/25] spi: pic32: Use helper function devm_clk_get_enabled()
Date: Wed, 23 Aug 2023 21:39:36 +0800
Message-ID: <20230823133938.1359106-24-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230823133938.1359106-1-lizetao1@huawei.com>
References: <20230822131237.1022815-1-lizetao1@huawei.com>
 <20230823133938.1359106-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_064019_595888_B7557114 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

Since commit 7ef9651e9792 ("clk: Provide new devm_clk helpers for prepared
and enabled clocks"), devm_clk_get() and clk_prepare_enable() can now be
replaced by devm_clk_get_enabled() when driver enables (and possibly
prepares) the clocks for the whole lifetime of the device. Moreover, it is
no longer necessary to unprepare and disable the clocks explicitly.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
v1 -> v2: None

 drivers/spi/spi-pic32.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/spi/spi-pic32.c b/drivers/spi/spi-pic32.c
index 52b788dac10a..f55b38c577e4 100644
--- a/drivers/spi/spi-pic32.c
+++ b/drivers/spi/spi-pic32.c
@@ -730,17 +730,13 @@ static int pic32_spi_hw_probe(struct platform_device *pdev,
 		return pic32s->tx_irq;
 
 	/* get clock */
-	pic32s->clk = devm_clk_get(&pdev->dev, "mck0");
+	pic32s->clk = devm_clk_get_enabled(&pdev->dev, "mck0");
 	if (IS_ERR(pic32s->clk)) {
 		dev_err(&pdev->dev, "clk not found\n");
 		ret = PTR_ERR(pic32s->clk);
 		goto err_unmap_mem;
 	}
 
-	ret = clk_prepare_enable(pic32s->clk);
-	if (ret)
-		goto err_unmap_mem;
-
 	pic32_spi_hw_init(pic32s);
 
 	return 0;
@@ -837,7 +833,6 @@ static int pic32_spi_probe(struct platform_device *pdev)
 
 err_bailout:
 	pic32_spi_dma_unprep(pic32s);
-	clk_disable_unprepare(pic32s->clk);
 err_host:
 	spi_controller_put(host);
 	return ret;
@@ -849,7 +844,6 @@ static void pic32_spi_remove(struct platform_device *pdev)
 
 	pic32s = platform_get_drvdata(pdev);
 	pic32_spi_disable(pic32s);
-	clk_disable_unprepare(pic32s->clk);
 	pic32_spi_dma_unprep(pic32s);
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
