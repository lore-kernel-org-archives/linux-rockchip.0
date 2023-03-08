Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E96B0C678D5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DE8WTI2M6wazUcYHfWb0I2DGmGtU9vmxtlpgNxO1/Lk=; b=wwLPIAg/v/Gv3T
	bKp0UG4cZZwVHgkECMNc7Jir8ICIL7MGPrRc0ByugbJlmLzT4HP6E7mfYJyHuF8h944ECmirM3/R7
	imK5M1/ve87yrCPlRONFuVKngX7q4EWsSSH/HFsQ0h3F33ezWZRgqjEDNMWgpIkA8iyFNgf6Qp+zw
	qNqCbMAGvKW5mYWHSIql4h2fRsYvnO+4ZfRdjwiMe2MHZ9DwGH/EGPE25Szpfi6B/XBptc/Kk7dEa
	iyUUnYQ9ifYMZ/bjvi8yxMbqwLd6l+1qTYONawLlLcq/B9ciUgJ91JYBVwsvYCpqoTLA12omp5Dmm
	jvaJSimr7YyhBBr3rPqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsw-004axg-1E; Wed, 08 Mar 2023 11:23:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsr-004aue-3t
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 11:23:04 +0000
Received: from jupiter.universe (dyndsl-091-248-211-125.ewe-ip-backbone.de [91.248.211.125])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 64C606602FF1;
	Wed,  8 Mar 2023 11:22:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678274578;
	bh=s2e12H1E4UhSPpqxDNG9lVL6rQq63K8jTcBFhbky8Dg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PWDBwQd7lPom216y2V5hxcOsCbaNr5I4ZREz/oIk/xw/3lmH6sd71T6839LvZ/87A
	 7hObMp9lOWAX+VcSGikHY5tBBNSds6Q+zJYxuTckZVIt7PdpvX1k+bj3c5waE1NHV/
	 3iA5ATYKnA3vzlTrnZ2eUecaf3IUEw0NZ//mkx5BJc7LJkGr9h8TU0xipwQwHka/L8
	 +kisnpikbmL4h+Qnl0bvHn60rRW6wBYRNVX1NsC0Pv0YuOX8YS1qyxfabBT833mmbc
	 vX29t8Tm3ja7lX5vJ/nW2GslMgM30fcjg3TbfPLGkUrmYc923TkJoWUfRnm8MyHaIZ
	 wK18alJ9nTRfQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 712CD48011B; Wed,  8 Mar 2023 12:22:55 +0100 (CET)
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
Subject: [RESEND] [PATCHv3 3/7] thermal: rockchip: Use dev_err_probe
Date: Wed,  8 Mar 2023 12:22:49 +0100
Message-Id: <20230308112253.15659-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308112253.15659-1-sebastian.reichel@collabora.com>
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_032301_419469_F10E5549 
X-CRM114-Status: GOOD (  10.48  )
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

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 50 +++++++++++-------------------
 1 file changed, 18 insertions(+), 32 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 6235c033995b..9ed45b318344 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1377,35 +1377,26 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
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
@@ -1414,23 +1405,18 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
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
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
