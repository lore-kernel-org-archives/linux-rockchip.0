Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82554C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 20:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tF3b+cNEkK+q6aYPekJevL8tPz4NruBu4dd1MfHQi0k=; b=dzpyIcej10AmKz
	nszqu7RWA4B3AGBpLTZWwJjUZ88mvR93lzTPkssW8SJYp/zYl5Of1OikkN20fvOwmLwxW2ah7/jrD
	/WfpTOuqhAIe7E+r1VtfzDvKBSaKDH5eqi5dk7saAVD15d96DYTwQAeQEjzHfOC0cRLC6RUK/r6uL
	Xj0O1Ccnck/Y2DxSkKzQDlPa5o8+BBAFAFUycsmLvYyw/scIL08IYaBCufnEwdq+9W/NQ98jNSxJg
	oLiH76uHFDzEYMHQZM1uP5C6Z115fh6I9F1b/m2tmDgPCCnkHOrB+OAs9IsYEAmFPdhzMuV9rEDP3
	O/qk8DVS5dkONP21FZ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDX8Y-00EjI7-Vj; Thu, 05 Jan 2023 20:46:55 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDUam-00DJ1R-Ch
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 18:03:55 +0000
Received: from jupiter.universe (dyndsl-085-016-198-020.ewe-ip-backbone.de [85.16.198.20])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 49DD46602CCE;
	Thu,  5 Jan 2023 18:03:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672941825;
	bh=xIMSW4AOlAHM6XznKwVJh8dNalSiPuEcNwEAA+jCX+Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ARcEhpNhY8IjBHP1mZiLKhnqOgnoKS1kPMfjbrZixL0pJ13OycZhhxh8Ctc6eQAE5
	 soGLACoxLgOJZ3n+9Pl//W7Rz46EPVWcFNrftD2asguPWfhBn9hcTiul8ZOClVJCux
	 lzvxPvb81YcdDhg3r+fL65mP/xI7/KFnBKUL2TaORQ6ivQlyO/mnRFy9Ov+/Fh02LD
	 rSktOEczDffayNaMzST6/Wxf9LPIngjXFEgsIlx9JRBYOzpEm49EzZMJy1uzlDLqy2
	 XaZcyWpDt4VmpcJbN5AFHQBwr9Wjv9AEr93cR95bYFiVUNIlA41ZtfGCuXyv1RJEEm
	 h0XTt4o9DLSrw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A6CFF480119; Thu,  5 Jan 2023 19:03:42 +0100 (CET)
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
Subject: [PATCHv3 2/7] thermal: rockchip: Simplify clock logic
Date: Thu,  5 Jan 2023 19:03:35 +0100
Message-Id: <20230105180340.29140-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105180340.29140-1-sebastian.reichel@collabora.com>
References: <20230105180340.29140-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_100353_412471_A66B70C0 
X-CRM114-Status: GOOD (  11.78  )
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

By using devm_clk_get_enabled() the clock acquisition and
enabling can be done in one step with automatic error
handling.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 33 +++++-------------------------
 1 file changed, 5 insertions(+), 28 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 8c52700d58e8..74e0ad001b33 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1385,14 +1385,14 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 		return error;
 	}
 
-	thermal->clk = devm_clk_get(&pdev->dev, "tsadc");
+	thermal->clk = devm_clk_get_enabled(&pdev->dev, "tsadc");
 	if (IS_ERR(thermal->clk)) {
 		error = PTR_ERR(thermal->clk);
 		dev_err(&pdev->dev, "failed to get tsadc clock: %d\n", error);
 		return error;
 	}
 
-	thermal->pclk = devm_clk_get(&pdev->dev, "apb_pclk");
+	thermal->pclk = devm_clk_get_enabled(&pdev->dev, "apb_pclk");
 	if (IS_ERR(thermal->pclk)) {
 		error = PTR_ERR(thermal->pclk);
 		dev_err(&pdev->dev, "failed to get apb_pclk clock: %d\n",
@@ -1400,26 +1400,13 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 		return error;
 	}
 
-	error = clk_prepare_enable(thermal->clk);
-	if (error) {
-		dev_err(&pdev->dev, "failed to enable converter clock: %d\n",
-			error);
-		return error;
-	}
-
-	error = clk_prepare_enable(thermal->pclk);
-	if (error) {
-		dev_err(&pdev->dev, "failed to enable pclk: %d\n", error);
-		goto err_disable_clk;
-	}
-
 	rockchip_thermal_reset_controller(thermal->reset);
 
 	error = rockchip_configure_from_dt(&pdev->dev, np, thermal);
 	if (error) {
 		dev_err(&pdev->dev, "failed to parse device tree data: %d\n",
 			error);
-		goto err_disable_pclk;
+		return error;
 	}
 
 	thermal->chip->initialize(thermal->grf, thermal->regs,
@@ -1433,7 +1420,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 			dev_err(&pdev->dev,
 				"failed to register sensor[%d] : error = %d\n",
 				i, error);
-			goto err_disable_pclk;
+			return error;
 		}
 	}
 
@@ -1444,7 +1431,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	if (error) {
 		dev_err(&pdev->dev,
 			"failed to request tsadc irq: %d\n", error);
-		goto err_disable_pclk;
+		return error;
 	}
 
 	thermal->chip->control(thermal->regs, true);
@@ -1462,13 +1449,6 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, thermal);
 
 	return 0;
-
-err_disable_pclk:
-	clk_disable_unprepare(thermal->pclk);
-err_disable_clk:
-	clk_disable_unprepare(thermal->clk);
-
-	return error;
 }
 
 static int rockchip_thermal_remove(struct platform_device *pdev)
@@ -1485,9 +1465,6 @@ static int rockchip_thermal_remove(struct platform_device *pdev)
 
 	thermal->chip->control(thermal->regs, false);
 
-	clk_disable_unprepare(thermal->pclk);
-	clk_disable_unprepare(thermal->clk);
-
 	return 0;
 }
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
