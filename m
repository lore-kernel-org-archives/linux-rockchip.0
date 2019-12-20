From: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH v2 09/11] memory: samsung: exynos5422-dmc: Replace the
 deprecated 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:28 +0900
Message-ID: <20191220002430.11995-10-cw00.choi@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001800epcas1p41ab059757aeec99060cb4f47b0f48ac0@epcas1p4.samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191220002430.11995-1-cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, leonard.crestez-3arQi8VN3Tc@public.gmane.org, lukasz.luba-5wv7dgnIgG8@public.gmane.org
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-samsung-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, a.swigon-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kyungmin.park-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, m.szyprowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Replace the deprecated 'devfreq-events' property with 'exynos,ppmu-device'
property. But, to guarantee the backward-compatibility, keep the support
of 'devfreq-events' property.

Reviewed-by: Lukasz Luba <lukasz.luba-5wv7dgnIgG8@public.gmane.org>
Signed-off-by: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
---
 drivers/memory/samsung/exynos5422-dmc.c | 29 ++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index f11fe29a69fc..6e8aa19e84d3 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -1270,10 +1270,17 @@ static int exynos5_dmc_init_clks(struct exynos5_dmc *dmc)
 static struct devfreq_event_dev *exynos5_dmc_get_edev(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+	struct device_node *node = of_parse_phandle(np, "exynos,ppmu-device",
 							index);
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	if (!node) {
+		 /*
+		  * Check the deprecated 'devfreq-events' property
+		  * to support backward-compatibility.
+		 */
+		node = of_parse_phandle(np, "devfreq-events", index);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_event_get_edev_by_node(node);
 }
 
@@ -1292,10 +1299,20 @@ static int exynos5_performance_counters_init(struct exynos5_dmc *dmc)
 	int ret, i;
 
 	dmc->num_counters = of_property_count_elems_of_size(dmc->dev->of_node,
-					"devfreq-events", sizeof(u32));
+					"exynos,ppmu-device", sizeof(u32));
 	if (dmc->num_counters < 0) {
-		dev_err(dmc->dev, "could not get devfreq-event counters\n");
-		return dmc->num_counters;
+		 /*
+		  * Check the deprecated 'devfreq-events' property
+		  * to support backward-compatibility.
+		 */
+		dmc->num_counters = of_property_count_elems_of_size(
+					dmc->dev->of_node,
+					"devfreq-events", sizeof(u32));
+		if (dmc->num_counters < 0) {
+			dev_err(dmc->dev,
+				"could not get devfreq-event counters\n");
+			return dmc->num_counters;
+		}
 	}
 
 	counters_size = sizeof(struct devfreq_event_dev) * dmc->num_counters;
-- 
2.17.1
