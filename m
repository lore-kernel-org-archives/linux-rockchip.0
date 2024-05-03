Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B367DC10F16
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YHBYEoQbN8oZzhV3ykKiAbveqanfJozdaoY8ychrEY=; b=3Lqa2QlsSvqNa/
	fcUtrQin+YFV0cHSyzFrMRdij5kfLfgYeo7cShhY/VMN7B/Mg1XqDAlVtQGe86puAwhaToFojAsOv
	WPs9gF4RhTmJ5GPx4yvXzozSEkzY94IosN1f9kikHubVx3sVyDbEeaLaq3zoTFJR6isGzPV5M4pOd
	0p4UPA2IOEASiif/ZIvx7DYCo1Q2NwJUG4OPV/58PuHY0YVbUVCy7VNGS3tLJUNnlcIabZKuDsuSS
	MeoEu+pe4IqcW0xVCRPgJrxfSCoIw+xiXPNIMXYQcemM6pewj+bSgxUy9+r1CB8DuhID5ttSFoCiQ
	g9qujI2Jwj3QjRZiMuSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ua7-0000000Gz6X-3iFu;
	Fri, 03 May 2024 15:12:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ua0-0000000Gz2M-2VRa
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QasAPA/P59hpgg8szxLbQpBRNyK663oZ3vwDc6UpLVQ=; b=R3HySpPJ3MvPH9RktBjpjHphht
	IGnUBfW0KsUF1y/JN/yAG6t9VotTk5sKxZ5q8jVo3zEfSIl/vmYnQjb3mXwTpTWzLkd1bLBaAIDEj
	OHMKYZwSvL+WA7cCEHLcDh7dt22O845XseqZgrygtAy3Qe/ppfWzNjVUdFzIHsr3Gsp7iRT2XlEgM
	KY3ldxuRTuvJ1OfwakF1lmO+h4tHU2K5B1m6u9nmfX9j3J/7cO+8BlaWRDZEF1qNQOEXd/tgfK+Pm
	rjUp3WYzvrKKD/6z7O9WVfr4304GQ1XJEecrlpjj+DQfw7JlRNoAZLwnWx9ffgxgPnypXRurO9ISn
	TFUoFZHg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uZt-00000000aaa-49f9
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZR-0004Bt-K7; Fri, 03 May 2024 17:11:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZN-00FjHY-Gu; Fri, 03 May 2024 17:11:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de
Subject: [PATCH 02/14] drm/rockchip: analogix_dp: add runtime PM handling
Date: Fri,  3 May 2024 17:11:17 +0200
Message-Id: <20240503151129.3901815-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161202_274043_C043D1F1 
X-CRM114-Status: GOOD (  12.83  )
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

Hook up the runtime PM suspend/resume paths to make the rockchip
glue behave more like the exynos one. The same suspend/resume
functions are used for system sleep via the runtime PM force
suspend/resume.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index baeb41875a4b..8214265f1497 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -13,6 +13,7 @@
 #include <linux/of.h>
 #include <linux/of_graph.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/clk.h>
@@ -430,7 +431,6 @@ static void rockchip_dp_remove(struct platform_device *pdev)
 	analogix_dp_remove(dp->adp);
 }
 
-#ifdef CONFIG_PM_SLEEP
 static int rockchip_dp_suspend(struct device *dev)
 {
 	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
@@ -450,14 +450,9 @@ static int rockchip_dp_resume(struct device *dev)
 
 	return analogix_dp_resume(dp->adp);
 }
-#endif
 
-static const struct dev_pm_ops rockchip_dp_pm_ops = {
-#ifdef CONFIG_PM_SLEEP
-	.suspend_late = rockchip_dp_suspend,
-	.resume_early = rockchip_dp_resume,
-#endif
-};
+static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_suspend,
+		rockchip_dp_resume, NULL);
 
 static const struct rockchip_dp_chip_data rk3399_edp = {
 	.lcdsel_grf_reg = RK3399_GRF_SOC_CON20,
@@ -485,7 +480,7 @@ struct platform_driver rockchip_dp_driver = {
 	.remove_new = rockchip_dp_remove,
 	.driver = {
 		   .name = "rockchip-dp",
-		   .pm = &rockchip_dp_pm_ops,
+		   .pm = pm_ptr(&rockchip_dp_pm_ops),
 		   .of_match_table = rockchip_dp_dt_ids,
 	},
 };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
