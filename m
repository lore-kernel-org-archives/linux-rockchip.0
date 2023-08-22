Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9041EEE49AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Aug 2023 13:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Z7BhZmHl32d3mAmHxBJgXXW+ppMydjEulDklCvywAU=; b=BEMJkeBpKCuxSb
	xHydyxuZPIrYTijwYUmg8FK4kGf19vLmM3+/hwo0acppkvbOXOW7DFn+RFYvP8pXS46m6wJ8mOK9o
	ILzD06EwwtBqQZGU11v39VKKD4+3JiMjBWv6M04gQC8VipSAruUj+6GhfGErvrh9Di7fZB9DuaEX3
	2gw+s8jKbyYHW+GwXGovkHyri3YFv9QoR+/Tp6Q9gvMZM/0q1ewPZF4dQtSJCd3hQFJVIwMRQQCvP
	neHABPlHCxpMtF2FzaNj6bIfUWM/UxGlU+sVZjawpgafuTeGXVHqqUzq41WZ29KNzs/kfu1FUKzqY
	BO4QNfVD2irrQ2cPuxEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYRDL-00Fz7F-0m;
	Tue, 22 Aug 2023 13:14:31 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYRBv-00FxVa-0A;
	Tue, 22 Aug 2023 13:13:06 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RVV8H6wtKzTm1P;
	Tue, 22 Aug 2023 21:10:39 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Tue, 22 Aug
 2023 21:12:53 +0800
From: Li Zetao <lizetao1@huawei.com>
To: <broonie@kernel.org>, <chin-ting_kuo@aspeedtech.com>, <clg@kaod.org>,
	<joel@jms.id.au>, <andrew@aj.id.au>, <florian.fainelli@broadcom.com>,
	<rjui@broadcom.com>, <sbranden@broadcom.com>,
	<bcm-kernel-feedback-list@broadcom.com>, <fancer.lancer@gmail.com>,
	<olteanv@gmail.com>, <neil.armstrong@linaro.org>, <khilman@baylibre.com>,
	<jbrunet@baylibre.com>, <martin.blumenstingl@googlemail.com>,
	<conor.dooley@microchip.com>, <daire.mcnamara@microchip.com>,
	<matthias.bgg@gmail.com>, <angelogioacchino.delregno@collabora.com>,
	<avifishman70@gmail.com>, <tmaimon77@gmail.com>, <tali.perry1@gmail.com>,
	<venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
	<linus.walleij@linaro.org>, <heiko@sntech.de>
CC: <lizetao1@huawei.com>, <linux-spi@vger.kernel.org>,
	<linux-aspeed@lists.ozlabs.org>, <openbmc@lists.ozlabs.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<linux-rpi-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-riscv@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>
Subject: [PATCH -next 05/25] spi: spi-axi-spi-engine: Use helper function devm_clk_get_enabled()
Date: Tue, 22 Aug 2023 21:12:17 +0800
Message-ID: <20230822131237.1022815-6-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230822131237.1022815-1-lizetao1@huawei.com>
References: <20230822131237.1022815-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_061303_595507_5580D929 
X-CRM114-Status: UNSURE (   9.61  )
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

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/spi/spi-axi-spi-engine.c | 25 +++++--------------------
 1 file changed, 5 insertions(+), 20 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index 0258c9a72fdc..b96e55f59d1a 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -485,30 +485,22 @@ static int spi_engine_probe(struct platform_device *pdev)
 
 	spin_lock_init(&spi_engine->lock);
 
-	spi_engine->clk = devm_clk_get(&pdev->dev, "s_axi_aclk");
+	spi_engine->clk = devm_clk_get_enabled(&pdev->dev, "s_axi_aclk");
 	if (IS_ERR(spi_engine->clk)) {
 		ret = PTR_ERR(spi_engine->clk);
 		goto err_put_host;
 	}
 
-	spi_engine->ref_clk = devm_clk_get(&pdev->dev, "spi_clk");
+	spi_engine->ref_clk = devm_clk_get_enabled(&pdev->dev, "spi_clk");
 	if (IS_ERR(spi_engine->ref_clk)) {
 		ret = PTR_ERR(spi_engine->ref_clk);
 		goto err_put_host;
 	}
 
-	ret = clk_prepare_enable(spi_engine->clk);
-	if (ret)
-		goto err_put_host;
-
-	ret = clk_prepare_enable(spi_engine->ref_clk);
-	if (ret)
-		goto err_clk_disable;
-
 	spi_engine->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(spi_engine->base)) {
 		ret = PTR_ERR(spi_engine->base);
-		goto err_ref_clk_disable;
+		goto err_put_host;
 	}
 
 	version = readl(spi_engine->base + SPI_ENGINE_REG_VERSION);
@@ -518,7 +510,7 @@ static int spi_engine_probe(struct platform_device *pdev)
 			SPI_ENGINE_VERSION_MINOR(version),
 			SPI_ENGINE_VERSION_PATCH(version));
 		ret = -ENODEV;
-		goto err_ref_clk_disable;
+		goto err_put_host;
 	}
 
 	writel_relaxed(0x00, spi_engine->base + SPI_ENGINE_REG_RESET);
@@ -527,7 +519,7 @@ static int spi_engine_probe(struct platform_device *pdev)
 
 	ret = request_irq(irq, spi_engine_irq, 0, pdev->name, host);
 	if (ret)
-		goto err_ref_clk_disable;
+		goto err_put_host;
 
 	host->dev.of_node = pdev->dev.of_node;
 	host->mode_bits = SPI_CPOL | SPI_CPHA | SPI_3WIRE;
@@ -545,10 +537,6 @@ static int spi_engine_probe(struct platform_device *pdev)
 	return 0;
 err_free_irq:
 	free_irq(irq, host);
-err_ref_clk_disable:
-	clk_disable_unprepare(spi_engine->ref_clk);
-err_clk_disable:
-	clk_disable_unprepare(spi_engine->clk);
 err_put_host:
 	spi_controller_put(host);
 	return ret;
@@ -569,9 +557,6 @@ static void spi_engine_remove(struct platform_device *pdev)
 	writel_relaxed(0xff, spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
 	writel_relaxed(0x00, spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
 	writel_relaxed(0x01, spi_engine->base + SPI_ENGINE_REG_RESET);
-
-	clk_disable_unprepare(spi_engine->ref_clk);
-	clk_disable_unprepare(spi_engine->clk);
 }
 
 static const struct of_device_id spi_engine_match_table[] = {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
