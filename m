From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] soc: rockchip: power-domain: use pm_genpd_remove in error cleanup
Date: Fri, 16 Sep 2016 00:14:38 +0200
Message-ID: <1473977679-18649-2-git-send-email-heiko@sntech.de>
References: <1473977679-18649-1-git-send-email-heiko@sntech.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1473977679-18649-1-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, tomeu.vizoso@collabora.com, wxt@rock-chips.com, rjw@rjwysocki.net, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The newly introduced pm_genpd_remove reverts the initialization done
by pm_genpd_init and is necessary in the error path of the rockchip
power-domain driver.

Without it the driver will in the error case cleanup the devm-allocated
structures including the elements referenced in the gpd_list thus making
deactivation of unused domains (and probably later genpd accesses as
well) fail by accessing invalid pointers.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/soc/rockchip/pm_domains.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 7acd151..241df213 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -445,7 +445,16 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 
 static void rockchip_pm_remove_one_domain(struct rockchip_pm_domain *pd)
 {
-	int i;
+	int i, ret;
+
+	/*
+	 * We're in the error cleanup already, so we only complain,
+	 * but won't emit another error on top of the original one.
+	 */
+	ret = pm_genpd_remove(&pd->genpd);
+	if (ret < 0)
+		dev_err(pd->pmu->dev, "failed to remove domain '%s' : %d - state may be inconsistent\n",
+			pd->genpd.name, ret);
 
 	for (i = 0; i < pd->num_clks; i++) {
 		clk_unprepare(pd->clks[i]);
-- 
2.8.1
