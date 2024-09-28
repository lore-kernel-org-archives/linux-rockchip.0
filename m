Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35BBFCF649A
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 04:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOvPeq4MxbAVutZzYrLuRz1gH5sVpGhUvJeAIr+g5Qk=; b=SHlKPBRX5tgMyE
	cRZKdvLcHJJle97YhXwbK4tMR5jdJ9sEoprsmZ5XWYTzVeuH7iRT02r8et04O/TJyzp+tK2ED4xHW
	8P2WZFcNgfkTBjyt9hoZH2rhnI2hm6RJeWmwYHPQOTpquUuaGbIbCI/v9J2Vr2ItZMcX28Da01dav
	bsm3Trc2r0q9nGBPeAvuSo4d1xcUdWnWu982zUaDM2IGk+zNXIG4lotoJJlufrfc0PyZ4TGIv42HI
	q/CSTO3qSkihlphlhnwnVmMBlAql4Lu3KwaCHOGxtoK7iIDUuweju9byQAAlTsQ6eOLb2vYNYSQhO
	u4k+qifEJVZ7eIuqZTNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suOsq-0000000Ca93-0txT;
	Sat, 28 Sep 2024 04:16:40 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suOpK-0000000CZbZ-07ZJ;
	Sat, 28 Sep 2024 04:13:05 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727496778;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GpUUSCEgG6i2JX+Qd6833mlykOrIc+MfZyPBIOvg7Ao=;
	b=ebROR9ErceR5vLV6cjmxcAfhWeSaIi+Yaw6kiOKzhN2gRBUoNd0WAzLvX9dDvV7besTMnm
	CqC7FI16ocPrGYHG2aQpdXNcUDXhMv+LkTHNvryfbBIAQN5jj141TOKRtOKVYRS+1JpLcA
	h+klMWa3REEoMjBMGnHeNnpxERAAUtv+QNeOloEiCRrnv1x71Uv62isl02CdF9njwwNfKH
	40YVJYnOzIShI08RuypKroKj0RaRbYlzsZBmuGZJsffwKEFW+BYeXqg5kn0VKe3jbE4WGm
	IjvTyQTP46pTPIUoUSfIDhbhrvAaNNHMtqB/BosoynekID7D/vAaLTe5CVucng==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] spi: rockchip: Perform trivial code cleanups
Date: Sat, 28 Sep 2024 06:12:45 +0200
Message-Id: <1b55380a0b9f0e8fe1a09611636b30e232b95d08.1727496560.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727496560.git.dsimic@manjaro.org>
References: <cover.1727496560.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_211302_616495_FAB652EA 
X-CRM114-Status: GOOD (  14.01  )
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

Perform a few trivial code cleanups, to obey the reverse Christmas tree rule,
to avoid unnecessary line wrapping by using the 100-column width better, to
actually obey the 100-column width in one case, and to make the way a couple
of wrapped function arguments are indented a bit more readable.

No intended functional changes are introduced by these code cleanups.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/spi/spi-rockchip.c | 27 ++++++++++++---------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index e1ecd96c7858..81f2a966c124 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -742,34 +742,32 @@ static int rockchip_spi_setup(struct spi_device *spi)
 
 static int rockchip_spi_probe(struct platform_device *pdev)
 {
-	int ret;
-	struct rockchip_spi *rs;
+	struct device_node *np = pdev->dev.of_node;
 	struct spi_controller *ctlr;
+	struct rockchip_spi *rs;
 	struct resource *mem;
-	struct device_node *np = pdev->dev.of_node;
 	u32 rsd_nsecs, num_cs;
 	bool target_mode;
+	int ret;
 
 	target_mode = of_property_read_bool(np, "spi-slave");
 
 	if (target_mode)
-		ctlr = spi_alloc_target(&pdev->dev,
-				sizeof(struct rockchip_spi));
+		ctlr = spi_alloc_target(&pdev->dev, sizeof(struct rockchip_spi));
 	else
-		ctlr = spi_alloc_host(&pdev->dev,
-				sizeof(struct rockchip_spi));
+		ctlr = spi_alloc_host(&pdev->dev, sizeof(struct rockchip_spi));
 
 	if (!ctlr)
 		return -ENOMEM;
 
 	platform_set_drvdata(pdev, ctlr);
 
 	rs = spi_controller_get_devdata(ctlr);
 
 	/* Get basic io resource and map it */
 	rs->regs = devm_platform_get_and_ioremap_resource(pdev, 0, &mem);
 	if (IS_ERR(rs->regs)) {
-		ret =  PTR_ERR(rs->regs);
+		ret = PTR_ERR(rs->regs);
 		goto err_put_ctlr;
 	}
 
@@ -794,26 +792,25 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		goto err_put_ctlr;
 
 	ret = devm_request_threaded_irq(&pdev->dev, ret, rockchip_spi_isr, NULL,
-			IRQF_ONESHOT, dev_name(&pdev->dev), ctlr);
+					IRQF_ONESHOT, dev_name(&pdev->dev), ctlr);
 	if (ret)
 		goto err_put_ctlr;
 
 	rs->dev = &pdev->dev;
 	rs->freq = clk_get_rate(rs->spiclk);
 
 	if (!of_property_read_u32(pdev->dev.of_node, "rx-sample-delay-ns",
 				  &rsd_nsecs)) {
 		/* rx sample delay is expressed in parent clock cycles (max 3) */
-		u32 rsd = DIV_ROUND_CLOSEST(rsd_nsecs * (rs->freq >> 8),
-				1000000000 >> 8);
+		u32 rsd = DIV_ROUND_CLOSEST(rsd_nsecs * (rs->freq >> 8), 1000000000 >> 8);
 		if (!rsd) {
 			dev_warn(rs->dev, "%u Hz are too slow to express %u ns delay\n",
-					rs->freq, rsd_nsecs);
+				 rs->freq, rsd_nsecs);
 		} else if (rsd > CR0_RSD_MAX) {
 			rsd = CR0_RSD_MAX;
-			dev_warn(rs->dev, "%u Hz are too fast to express %u ns delay, clamping at %u ns\n",
-					rs->freq, rsd_nsecs,
-					CR0_RSD_MAX * 1000000000U / rs->freq);
+			dev_warn(rs->dev,
+				 "%u Hz are too fast to express %u ns delay, clamping at %u ns\n",
+				 rs->freq, rsd_nsecs, CR0_RSD_MAX * 1000000000U / rs->freq);
 		}
 		rs->rsd = rsd;
 	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
