Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5CD1ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 17:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNJwA0OEC78oeVwyyeLuLelUZQQEt880IuqxFfSvB2Q=; b=JsufMe/xaZHTHs
	LyP9EIaEQzhlJ15hIm9ggQ9Wyv39ixjcgr986jtU8gqXe9OmO0InGqBbYmm3wuxX/cu0oEep3C1vG
	Wj3JOaGxO09pPDzdHYqvTTfY8BYfQ83YTyytu2KTvh9BwDgpHSi7wZwRDaT/dRR2ly8M3RnhwOw2E
	MbA+awZpSOrZyq+RZ8AfHI3+E64HC81RB3c2lXUuxKpcO+gcFMi8waDSxOsIfLovg/XHDr3R3jkp4
	GkAOgO9xogp4Hs7qrGkPgl7G4YMITRFHuY0UsPS3LSbm3KStvkYe6+daVzsZaZopST/vg3qYMPK05
	+Ax7E1BIRSPaZPw6Sbtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwN-00DVIa-HB; Mon, 31 Oct 2022 17:51:15 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwE-00DVAf-IH
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 17:51:12 +0000
Received: from jupiter.universe (dyndsl-095-033-157-181.ewe-ip-backbone.de [95.33.157.181])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8D0756602923;
	Mon, 31 Oct 2022 17:51:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667238661;
	bh=+qY+C6EGTnTjDDxzojbaxh4GdVbARIg1OLM2mDdh7mE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=in67QW6MMSO6F3j1G1W8w/CEg6nQR/gYVukjyvYf2zn903cibBfOtCcWlTSsXQeiN
	 kUmbpOEZBPh1rTw4l2u1v3sgA7EtdyY25fiBRoanWazUPH9vEnqpkQGvg2+dvditAU
	 F7HepoFHdE0JXHHxnEBMDm2SAbB1Co13HRsD72SFQvzJBLj+qOJ7Ifb1Lvr3C496BT
	 +YM+cj/xxqXjjfQqnanThkm/DKmonkAkh1ceG7ddCs5qmuUPtLRA6aH96Sd5Bsrdx7
	 JZKKPwty1+0qDIp5FzgK7pUEC0GvUj3/68mD3WY2VqYutOPbt8hNc3nMVX6tFYwbqA
	 eVXRU09kFN3jw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 511BE4801C7; Mon, 31 Oct 2022 18:50:59 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 3/7] thermal: rockchip: Use dev_err_probe
Date: Mon, 31 Oct 2022 18:50:54 +0100
Message-Id: <20221031175058.175698-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221031175058.175698-1-sebastian.reichel@collabora.com>
References: <20221031175058.175698-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_105106_771656_9B06F5E7 
X-CRM114-Status: GOOD (  10.21  )
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

Use dev_err_probe to simplify error printing in the driver's probe
routine.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 50 +++++++++++-------------------
 1 file changed, 18 insertions(+), 32 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 6d680bea0734..3dab31f163b3 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1379,35 +1379,26 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 		return PTR_ERR(thermal->regs);
 
 	thermal->reset = devm_reset_control_array_get(&pdev->dev, false, false);
-	if (IS_ERR(thermal->reset)) {
-		error = PTR_ERR(thermal->reset);
-		dev_err(&pdev->dev, "failed to get tsadc reset: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(thermal->reset))
+		return dev_err_probe(&pdev->dev, PTR_ERR(thermal->reset),
+				     "failed to get tsadc reset.\n");
 
 	thermal->clk = devm_clk_get_enabled(&pdev->dev, "tsadc");
-	if (IS_ERR(thermal->clk)) {
-		error = PTR_ERR(thermal->clk);
-		dev_err(&pdev->dev, "failed to get tsadc clock: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(thermal->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(thermal->clk),
+				     "failed to get tsadc clock.\n");
 
 	thermal->pclk = devm_clk_get_enabled(&pdev->dev, "apb_pclk");
-	if (IS_ERR(thermal->pclk)) {
-		error = PTR_ERR(thermal->pclk);
-		dev_err(&pdev->dev, "failed to get apb_pclk clock: %d\n",
-			error);
-		return error;
-	}
+	if (IS_ERR(thermal->pclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(thermal->pclk),
+				     "failed to get apb_pclk clock.\n");
 
 	rockchip_thermal_reset_controller(thermal->reset);
 
 	error = rockchip_configure_from_dt(&pdev->dev, np, thermal);
-	if (error) {
-		dev_err(&pdev->dev, "failed to parse device tree data: %d\n",
-			error);
-		return error;
-	}
+	if (error)
+		return dev_err_probe(&pdev->dev, error,
+				"failed to parse device tree data\n");
 
 	thermal->chip->initialize(thermal->grf, thermal->regs,
 				  thermal->tshut_polarity);
@@ -1416,23 +1407,18 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 		error = rockchip_thermal_register_sensor(pdev, thermal,
 						&thermal->sensors[i],
 						thermal->chip->chn_id[i]);
-		if (error) {
-			dev_err(&pdev->dev,
-				"failed to register sensor[%d] : error = %d\n",
-				i, error);
-			return error;
-		}
+		if (error)
+			return dev_err_probe(&pdev->dev, error,
+				"failed to register sensor[%d].\n", i);
 	}
 
 	error = devm_request_threaded_irq(&pdev->dev, irq, NULL,
 					  &rockchip_thermal_alarm_irq_thread,
 					  IRQF_ONESHOT,
 					  "rockchip_thermal", thermal);
-	if (error) {
-		dev_err(&pdev->dev,
-			"failed to request tsadc irq: %d\n", error);
-		return error;
-	}
+	if (error)
+		return dev_err_probe(&pdev->dev, error,
+				     "failed to request tsadc irq.\n");
 
 	thermal->chip->control(thermal->regs, true);
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
