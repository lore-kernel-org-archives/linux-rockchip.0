From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 07/11] PM / devfreq: exynos-bus: Replace the deprecated
 'devfreq' and 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:26 +0900
Message-ID: <20191220002430.11995-8-cw00.choi@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
        <CGME20191220001800epcas1p3accefc4384d9503481311f25f5794cb8@epcas1p3.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: mark.rutland@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Replace the deprecated 'devfreq' and 'devfreq-events' property
with new following properties.
- 'devfreq' is changed to 'exynos,parent-bus' property
- 'devfreq-events' is changed to 'exynos,ppmu-device' property
But, to guarantee the backward-compatibility, keep the support
both 'devfreq' and 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/exynos-bus.c | 52 +++++++++++++++++++++++++-----------
 1 file changed, 37 insertions(+), 15 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index c4931ef53f15..9fdb188915e8 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -88,22 +88,35 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
 
 static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node *np)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
-
-	if (!node)
-		return ERR_PTR(-ENODEV);
-
+	struct device_node *node = of_parse_phandle(np, "exynos,parent-bus", 0);
+
+	if (!node) {
+		/*
+		 * Check the deprecated 'devfreq' property
+		 * to support backward-compatibility.
+		 */
+		node = of_parse_phandle(np, "devfreq", 0);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_get_devfreq_by_node(node);
 }
 
 static struct devfreq_event_dev *exynos_bus_get_edev(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
-							index);
-
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	struct device_node *node = of_parse_phandle(np,
+					"exynos,ppmu-device", index);
+
+	if (!node) {
+		/*
+		 * Check the deprecated 'devfreq-events' property
+		 * to support backward-compatibility.
+		 */
+		node = of_parse_phandle(np, "devfreq-events", index);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_event_get_edev_by_node(node);
 }
 
@@ -214,11 +227,20 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	 * buses. This raw data will be used in devfreq ondemand governor.
 	 */
 	count = of_property_count_elems_of_size(dev->of_node,
-					"devfreq-events", sizeof(u32));
+					"exynos,ppmu-device", sizeof(u32));
 	if (count < 0) {
-		dev_err(dev, "failed to get the count of devfreq-event dev\n");
-		ret = count;
-		goto err_regulator;
+		/*
+		 * Check the deprecated 'devfreq-events' property
+		 * to support backward-compatibility.
+		 */
+		count = of_property_count_elems_of_size(dev->of_node,
+					"devfreq-events", sizeof(u32));
+		if (count < 0) {
+			dev_err(dev,
+				"failed to get the count of devfreq-event dev\n");
+			ret = count;
+			goto err_regulator;
+		}
 	}
 	bus->edev_count = count;
 
@@ -423,7 +445,7 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	if (!profile)
 		return -ENOMEM;
 
-	node = of_parse_phandle(dev->of_node, "devfreq", 0);
+	node = of_parse_phandle(dev->of_node, "exynos,parent-bus", 0);
 	if (node) {
 		of_node_put(node);
 		passive = true;
-- 
2.17.1
