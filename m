Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D5C0C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 13:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1Wq8r8jh/sFs1u9JBYo3Fw/MF+Z88Z6rqfzn72ijFY=; b=TrN0twPXwVGWsO
	/R3aruOH/nm+rsI8II8NdedrUZNr6rEhHsJfA8P+7EFoHkpxYgUQY8492R+KFcUHZMHMpRsm2cUIR
	+Peb2A7zwnbdgjeRkucF5ck1Uxnz9EzX1P+GFAIGM8hr9RDETqh7IuY6MdGekxkvn8GXTBfWjs293
	pknibqV+6m6DaECiXMapiycD14ia09RnPeJDBDmWtzlcFC9nOOJobv0R/eOLBJl4VxlnY6BX3ehrk
	IYaJPZjjHdz1ENqstHH4p2dTU6DeM7vvqEOkfJqrg2P330sJ4I80Jn22qmGwz3XFuWnFP0Px4PdIz
	SS96no6ENgaUXW/STpow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myCzk-00AIy6-Dg; Fri, 17 Dec 2021 13:09:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myCzI-00AImA-E6
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 13:09:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzF-0004Ur-9K; Fri, 17 Dec 2021 14:09:25 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzE-00Cjq6-0c; Fri, 17 Dec 2021 14:09:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Date: Fri, 17 Dec 2021 14:09:18 +0100
Message-Id: <20211217130919.3035788-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217130919.3035788-1-s.hauer@pengutronix.de>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_050928_484948_001C0A67 
X-CRM114-Status: GOOD (  16.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch allows to let a domain be supplied by a regulator which
is needed for the GPU on the rk3568-EVB board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/rockchip/pm_domains.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index dcfd3db649f58..e7db888cc226c 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -15,6 +15,7 @@
 #include <linux/of_platform.h>
 #include <linux/clk.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 #include <linux/mfd/syscon.h>
 #include <dt-bindings/power/px30-power.h>
 #include <dt-bindings/power/rk3036-power.h>
@@ -80,6 +81,7 @@ struct rockchip_pm_domain {
 	u32 *qos_save_regs[MAX_QOS_REGS_NUM];
 	int num_clks;
 	struct clk_bulk_data *clks;
+	struct regulator *regulator;
 };
 
 struct rockchip_pmu {
@@ -344,6 +346,14 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 {
 	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
+	struct rockchip_pmu *pmu = pd->pmu;
+	int ret;
+
+	ret = regulator_enable(pd->regulator);
+	if (ret) {
+		dev_err(pmu->dev, "failed to enable regulator: %d\n", ret);
+		return ret;
+	}
 
 	return rockchip_pd_power(pd, true);
 }
@@ -351,8 +361,15 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 static int rockchip_pd_power_off(struct generic_pm_domain *domain)
 {
 	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
+	int ret;
 
-	return rockchip_pd_power(pd, false);
+	ret = rockchip_pd_power(pd, false);
+	if (ret)
+		return ret;
+
+	regulator_disable(pd->regulator);
+
+	return 0;
 }
 
 static int rockchip_pd_attach_dev(struct generic_pm_domain *genpd,
@@ -500,6 +517,11 @@ static int rockchip_domain_probe(struct platform_device *pdev)
 	pd->info = pd_info;
 	pd->pmu = pd_info->pmu;
 
+	pd->regulator = devm_regulator_get(&pdev->dev, "power");
+
+	if (IS_ERR(pd->regulator))
+		return PTR_ERR(pd->regulator);
+
 	pd->num_clks = devm_clk_bulk_get_all(&pdev->dev, &pd->clks);
 	if (pd->num_clks < 0)
 		return pd->num_clks;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
