From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 1/6] rockchip: power-domain: make idle handling optional
Date: Thu, 10 Mar 2016 05:00:36 +0800
Message-ID: <1457557241-21297-2-git-send-email-zhangqing@rock-chips.com>
References: <1457557241-21297-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1457557241-21297-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com
Cc: linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Not all new socs need to handle idle states on domain state changes,
so add the possibility to make them optional.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/soc/rockchip/pm_domains.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 18aee6b..c46312d 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -68,9 +68,9 @@ struct rockchip_pmu {
 {						\
 	.pwr_mask = BIT(pwr),			\
 	.status_mask = BIT(status),		\
-	.req_mask = BIT(req),			\
-	.idle_mask = BIT(idle),			\
-	.ack_mask = BIT(ack),			\
+	.req_mask = (req >= 0) ? BIT(req) : 0,		\
+	.idle_mask = (idle >= 0) ? BIT(idle) : 0,	\
+	.ack_mask = (ack >= 0) ? BIT(ack) : 0,		\
 }
 
 #define DOMAIN_RK3288(pwr, status, req)		\
@@ -96,6 +96,9 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 	struct rockchip_pmu *pmu = pd->pmu;
 	unsigned int val;
 
+	if (pd_info->req_mask == 0)
+		return 0;
+
 	regmap_update_bits(pmu->regmap, pmu->info->req_offset,
 			   pd_info->req_mask, idle ? -1U : 0);
 
-- 
1.9.1
