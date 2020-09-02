Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6577BC433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:09:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 227FD207D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:09:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ko7jU03j";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="z3DPtyJp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 227FD207D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XBqZLGxKqcMHV1YtHlry3y8v4OSt3y84vB2Fqm1I6wA=; b=ko7jU03j7yEPNl/MkonHAzcYi5
	Qagm3KiXzoMLjw7UwAF0d4peoKctf5LEm0uX+MiPFNWQ1AiCaCCg50FF72CbxyViHYVpLy+HYwT0y
	FwUfCLrD1XlbCvNiGEQTPcf9Nfq62rGdovtALktw1+uq6wvKrbh23Bl/nmdpHDDdBr/OQ6/741TS6
	ww1qNcTb3aNN1cGrAeed7EjaUcAPHe08S6bD0HyHR0qTq4gK+hmMFQq4DedMbnEgogOrhaDOkd5ha
	7gQx70uxr/szlTqXrdjOrWn5hlCDCgASKU83TEjUrGV71lSo+jeIsZ8QBCEIRTHARKWHiopAoBf7u
	N027/yNA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDUNq-0006Ti-IV; Wed, 02 Sep 2020 15:09:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDULg-0005J8-5G; Wed, 02 Sep 2020 15:06:57 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D58920773;
 Wed,  2 Sep 2020 15:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599059214;
 bh=5IrQM4zaWaI46iMLqvoLFQL1xUrFrBFsc04JUwsbfdc=;
 h=From:To:Cc:Subject:Date:From;
 b=z3DPtyJpm5wBhKasevREMy5GD7UXAoh+kvi2/+R3Qwd1ZBJwh0NWDq1IE7SZdzxep
 aZJ3ZX3DySSwZ5ws8RPm5NzbxX3NYTbNBB2ugRhEPM5BdaCC66EGXXR7NGiflRpfl7
 /lh8zD3aes02nzAVbZNXUlIGB3nybWAhdvuT0IfA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Michal Simek <michal.simek@xilinx.com>, Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Peter Rosin <peda@axentia.se>,
 Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/9] i2c: stm32: Simplify with dev_err_probe()
Date: Wed,  2 Sep 2020 17:06:35 +0200
Message-Id: <20200902150643.14839-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_110656_402633_C3D00FA4 
X-CRM114-Status: GOOD (  17.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Common pattern of handling deferred probe can be simplified with
dev_err_probe().  Less code and the error value gets printed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/i2c/busses/i2c-stm32.c   | 11 ++++-------
 drivers/i2c/busses/i2c-stm32f4.c |  6 ++----
 drivers/i2c/busses/i2c-stm32f7.c | 24 +++++++++---------------
 3 files changed, 15 insertions(+), 26 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 3f69a3bb6119..198f848b7be9 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -25,9 +25,8 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	/* Request and configure I2C TX dma channel */
 	dma->chan_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(dma->chan_tx)) {
-		ret = PTR_ERR(dma->chan_tx);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "can't request DMA tx channel\n");
+		ret = dev_err_probe(dev, PTR_ERR(dma->chan_tx),
+				    "can't request DMA tx channel\n");
 		goto fail_al;
 	}
 
@@ -45,10 +44,8 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	/* Request and configure I2C RX dma channel */
 	dma->chan_rx = dma_request_chan(dev, "rx");
 	if (IS_ERR(dma->chan_rx)) {
-		ret = PTR_ERR(dma->chan_rx);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "can't request DMA rx channel\n");
-
+		ret = dev_err_probe(dev, PTR_ERR(dma->chan_rx),
+				    "can't request DMA rx channel\n");
 		goto fail_tx;
 	}
 
diff --git a/drivers/i2c/busses/i2c-stm32f4.c b/drivers/i2c/busses/i2c-stm32f4.c
index 48e269284369..937c2c8fd349 100644
--- a/drivers/i2c/busses/i2c-stm32f4.c
+++ b/drivers/i2c/busses/i2c-stm32f4.c
@@ -797,10 +797,8 @@ static int stm32f4_i2c_probe(struct platform_device *pdev)
 
 	rst = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(rst)) {
-		ret = PTR_ERR(rst);
-		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
-
+		ret = dev_err_probe(&pdev->dev, PTR_ERR(rst),
+				    "Error: Missing reset ctrl\n");
 		goto clk_free;
 	}
 	reset_control_assert(rst);
diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index bff3479fe122..a8f1758e4c5b 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1968,11 +1968,9 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 						    "wakeup-source");
 
 	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(i2c_dev->clk)) {
-		if (PTR_ERR(i2c_dev->clk) != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Failed to get controller clock\n");
-		return PTR_ERR(i2c_dev->clk);
-	}
+	if (IS_ERR(i2c_dev->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(i2c_dev->clk),
+				     "Failed to get controller clock\n");
 
 	ret = clk_prepare_enable(i2c_dev->clk);
 	if (ret) {
@@ -1982,10 +1980,8 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 
 	rst = devm_reset_control_get(&pdev->dev, NULL);
 	if (IS_ERR(rst)) {
-		ret = PTR_ERR(rst);
-		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
-
+		ret = dev_err_probe(&pdev->dev, PTR_ERR(rst),
+				    "Error: Missing reset ctrl\n");
 		goto clk_free;
 	}
 	reset_control_assert(rst);
@@ -2052,13 +2048,11 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 	i2c_dev->dma = stm32_i2c_dma_request(i2c_dev->dev, phy_addr,
 					     STM32F7_I2C_TXDR,
 					     STM32F7_I2C_RXDR);
-	if (PTR_ERR(i2c_dev->dma) == -ENODEV)
+	if (PTR_ERR(i2c_dev->dma) == -ENODEV) {
 		i2c_dev->dma = NULL;
-	else if (IS_ERR(i2c_dev->dma)) {
-		ret = PTR_ERR(i2c_dev->dma);
-		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev,
-				"Failed to request dma error %i\n", ret);
+	} else if (IS_ERR(i2c_dev->dma)) {
+		ret = dev_err_probe(&pdev->dev, PTR_ERR(i2c_dev->dma),
+				    "Failed to request dma error\n");
 		goto fmp_clear;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
