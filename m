Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2899FA3746
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 17:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMZfpiDWeBE2S8L+iWMZ7tBOyFu69ePc4t0f54ylNk0=; b=BgFe/Uz9akCYM4
	Lxy38mQRYiz1KJW7JW7owroMKfpxuAyRaHBg7IjPOPmW+lfpNV+tsBLfzUIcEY55iH/0a01zJnhs1
	gZJsFnAxCjuECIpx06lQg++pC/FYtvR+xWyylWClBIHljvH47Qyl4UOKPaTy4sI9/Xrpca5QJCoAr
	zYvc242f6AXHEUId+pFOu7GnFinHNsOLH8SKyZGjtn+ZPieuXqU+LSQPOolbxU5uZwEXGQtQCW8w6
	478wyYXw8T6xLN1Rzhqy6IZhKxibzOpLcrJmDpsDSWw36363SjTNEp6slUc7sUsjvCIklambsvX9C
	ha4Dtu5rHf5tG2L0/bLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwK-00DVGK-Ah; Mon, 31 Oct 2022 17:51:12 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwE-00DVAe-H9
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 17:51:10 +0000
Received: from jupiter.universe (dyndsl-095-033-157-181.ewe-ip-backbone.de [95.33.157.181])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7CADC660290F;
	Mon, 31 Oct 2022 17:51:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667238661;
	bh=7J3K+zPuxxNR3IXEOaesAW1rMsS9Y33MQd/6Z4GSCzo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k32Z1g7zMJRZklE7ffW5U9Hl9YVQI47r3g26AkTm+srupfEGO2BF3ldm/xx/T07fj
	 BokmH1TUj2BDaZOdQ+LH602ToZ0N9p0dcHVvZJrC412w05F5Lfk2Cbr0w9iqCt7u/A
	 PVNyTxwVkfLUBJvVQsE7UVUQfonxi0mYVQ4KmrTrzlpYjDLFXqPhTxgTjhC9gEJ1/1
	 RhxKetx/PQNvIVEhyw0UgmYg6oNU1N9xNxGHS7qZDlVSoGzPK7FYnZBmQslXesUB8l
	 XGJtxqtXI/TkBbv+LEruK8HiHH6htC+fAsYkn/vR8EHUrFzSptRPj5ObdHg2fTpQbE
	 hB5a6dFz64yFQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4F0CE4801C4; Mon, 31 Oct 2022 18:50:59 +0100 (CET)
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
Subject: [PATCH 2/7] thermal: rockchip: Simplify clock logic
Date: Mon, 31 Oct 2022 18:50:53 +0100
Message-Id: <20221031175058.175698-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221031175058.175698-1-sebastian.reichel@collabora.com>
References: <20221031175058.175698-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_105106_765122_E84EB286 
X-CRM114-Status: GOOD (  11.24  )
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 33 +++++-------------------------
 1 file changed, 5 insertions(+), 28 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 0a0f38c29842..6d680bea0734 100644
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
