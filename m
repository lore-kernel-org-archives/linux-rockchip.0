From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v4 1/6] rockchip: power-domain: make idle handling optional
Date: Fri, 26 Feb 2016 14:10:21 +0800
Message-ID: <1456467026-16030-2-git-send-email-zhangqing@rock-chips.com>
References: <1456467026-16030-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1456467026-16030-1-git-send-email-zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Not all new socs need to handle idle states on domain state changes,
so add the possibility to make them optional.

Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
