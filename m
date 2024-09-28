Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6596ACF649E
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 04:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd8hkosYQNeP8hiqwftbfxiFQ7kZSiJ72ZgocKTeG8s=; b=nauyTrPpCsYkge
	QM1zZHg+oIiLsg+SR4oOBoM/Wrt/VdiTqUb21gfPBKCSIFmdTNfZ4AI2fePS8WmgnbbcthcFBqQHa
	va1wGl60YwSa6coXdwy+H/H2lPbsRtAFh7uBxtMNuDQCR5jZCXfHbyLJ7oEfVU8Ne7O/0L8OjUOPo
	MnOdmD53SZioVrvIrmLYOKFj3iTPWpeRaOPjINGyNugvfijK+iE9YVHx/3KPZJowgtnDGXope7cvG
	Cayysi3DssC4b6+0dMofoy0fkpnCBYaDr90aqN6VtSeTXzAK1NW/xPO6JXq1XyN67eSC7fRypbEuQ
	NUYrFa1GyIFx7nuG0M5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suOtz-0000000CaG8-1S0b;
	Sat, 28 Sep 2024 04:17:51 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suOpK-0000000CZbb-47t0;
	Sat, 28 Sep 2024 04:13:05 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727496779;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kpp3peXn8LwBEdMA5eGMOZGlK98YLfThf9954gFiyVA=;
	b=dq4vJao9v1H1On37KKnAyjL/JXzcBBU0ER0bqG8NiLt3toH5r8EUbEipCsjWkgOZkMO29F
	3yWLBuMFI++RjdR2bvMkkH+Qro52jL71Twh84HI8swopZJIg1kWSIytbZ5pU+O64yq/6Ce
	glfpVze2l6wyxwNfR0HvCreslfe5C5iW/3VDhoZ8eLoeAsCRmxofFAncYE5tiD7HXeOHXh
	2GFLMOlsC0KeDdadlDip6Zf9hpZ7i66ndbEKVzhqbqXqLuQ/9g0nOU3RLcDJ5zTwPvizk/
	N6Z0muHXB6H+B2GevNkmVrGF3NiTPofohGHMUD9gsQadWUqCF56J/RU5aPg7tQ==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] spi: rockchip-sfc: Use dev_err_probe() in the probe path
Date: Sat, 28 Sep 2024 06:12:47 +0200
Message-Id: <398229ef316e64dc0c27944ea793dcddef1ead4e.1727496560.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727496560.git.dsimic@manjaro.org>
References: <cover.1727496560.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_211303_220220_080CA4BC 
X-CRM114-Status: UNSURE (   9.41  )
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

Use function dev_err_probe() in the probe path instead of dev_err() where
appropriate, to make the code a bit more uniform and compact.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/spi/spi-rockchip-sfc.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 505d5089bf03..7e0fb4944a34 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -580,16 +580,14 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 		return PTR_ERR(sfc->regbase);
 
 	sfc->clk = devm_clk_get(&pdev->dev, "clk_sfc");
-	if (IS_ERR(sfc->clk)) {
-		dev_err(&pdev->dev, "Failed to get sfc interface clk\n");
-		return PTR_ERR(sfc->clk);
-	}
+	if (IS_ERR(sfc->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(sfc->clk),
+				     "Failed to get sfc interface clk\n");
 
 	sfc->hclk = devm_clk_get(&pdev->dev, "hclk_sfc");
-	if (IS_ERR(sfc->hclk)) {
-		dev_err(&pdev->dev, "Failed to get sfc ahb clk\n");
-		return PTR_ERR(sfc->hclk);
-	}
+	if (IS_ERR(sfc->hclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(sfc->hclk),
+				     "Failed to get sfc ahb clk\n");
 
 	sfc->use_dma = !of_property_read_bool(sfc->dev->of_node, "rockchip,sfc-no-dma");
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
