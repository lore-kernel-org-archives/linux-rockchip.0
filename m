From: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [RESEND PATCH v3 1/2] phy: rockchip-typec: add pm runtime support
Date: Wed,  7 Sep 2016 22:57:33 -0700
Message-ID: <1473314253-2646-1-git-send-email-zyw@rock-chips.com>
References: <57D0F612.10702@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <57D0F612.10702-l0cyMroinI0@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: kishon-l0cyMroinI0@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Adds pm_runtime support for rockchip Type-C, so that power domain is
enabled only when there is a transaction going on to help save power.

Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v3:
- use phy_core pm_runtime

Changes in v2:
- add pm_runtime_put_sync in err case

 drivers/phy/phy-rockchip-typec.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/phy-rockchip-typec.c b/drivers/phy/phy-rockchip-typec.c
index fb58a27..7cfb0f8 100644
--- a/drivers/phy/phy-rockchip-typec.c
+++ b/drivers/phy/phy-rockchip-typec.c
@@ -960,6 +960,8 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(tcphy->extcon);
 	}
 
+	pm_runtime_enable(dev);
+
 	for_each_available_child_of_node(np, child_np) {
 		struct phy *phy;
 
@@ -990,6 +992,13 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int rockchip_typec_phy_remove(struct platform_device *pdev)
+{
+	pm_runtime_disable(&pdev->dev);
+
+	return 0;
+}
+
 static const struct of_device_id rockchip_typec_phy_dt_ids[] = {
 	{ .compatible = "rockchip,rk3399-typec-phy" },
 	{}
@@ -999,6 +1008,7 @@ MODULE_DEVICE_TABLE(of, rockchip_typec_phy_dt_ids);
 
 static struct platform_driver rockchip_typec_phy_driver = {
 	.probe		= rockchip_typec_phy_probe,
+	.remove		= rockchip_typec_phy_remove,
 	.driver		= {
 		.name	= "rockchip-typec-phy",
 		.of_match_table = rockchip_typec_phy_dt_ids,
-- 
1.9.1
