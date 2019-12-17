From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH 3/9] PM / devfreq: event: Add devfreq_event_get_edev_by_node
 function
Date: Tue, 17 Dec 2019 14:57:32 +0900
Message-ID: <20191217055738.28445-4-cw00.choi@samsung.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
        <CGME20191217055106epcas1p3e77268d200006921dfa736b2c7550a04@epcas1p3.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Previously, devfreq-event core supports 'devfreq-events' property
in order to get the devfreq_event_dev device by phandle.
But, 'devfreq-events' property name is not proper on devicetree binding
because this name doesn't mean the any h/w attribute.

The devfreq-event core hands over the rights of which decide the property name
for getting the devfreq device on devicetree, to each devfreq device driver.
Each devfreq driver will decide the property name on devicetree binding
and then get the devfreq device by using devfreq_event_get_edev_by_node().

And Remove devfreq_event_get_edev_count() function used 'devfreq-events'.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/devfreq-event.c         | 53 ++++---------------------
 drivers/devfreq/exynos-bus.c            | 16 +++++++-
 drivers/devfreq/rk3399_dmc.c            | 13 +++++-
 drivers/memory/samsung/exynos5422-dmc.c | 16 ++++++--
 include/linux/devfreq-event.h           | 14 ++-----
 5 files changed, 50 insertions(+), 62 deletions(-)

diff --git a/drivers/devfreq/devfreq-event.c b/drivers/devfreq/devfreq-event.c
index 8c31b0f2e28f..d0c989acbf93 100644
--- a/drivers/devfreq/devfreq-event.c
+++ b/drivers/devfreq/devfreq-event.c
@@ -210,25 +210,18 @@ int devfreq_event_reset_event(struct devfreq_event_dev *edev)
 EXPORT_SYMBOL_GPL(devfreq_event_reset_event);
 
 /**
- * devfreq_event_get_edev_by_phandle() - Get the devfreq-event dev from
- *					 devicetree.
- * @dev		: the pointer to the given device
- * @index	: the index into list of devfreq-event device
+ * devfreq_event_get_edev_by_node() - Get the devfreq-event dev from devicetree
+ * @node	: the pointer to device_node
  *
  * Note that this function return the pointer of devfreq-event device.
  */
-struct devfreq_event_dev *devfreq_event_get_edev_by_phandle(struct device *dev,
-						      int index)
+struct devfreq_event_dev *devfreq_event_get_edev_by_node(
+					struct device_node *node)
 {
-	struct device_node *node;
 	struct devfreq_event_dev *edev;
 
-	if (!dev->of_node)
-		return ERR_PTR(-EINVAL);
-
-	node = of_parse_phandle(dev->of_node, "devfreq-events", index);
 	if (!node)
-		return ERR_PTR(-ENODEV);
+		return ERR_PTR(-EINVAL);
 
 	mutex_lock(&devfreq_event_list_lock);
 	list_for_each_entry(edev, &devfreq_event_list, node) {
@@ -244,44 +237,12 @@ struct devfreq_event_dev *devfreq_event_get_edev_by_phandle(struct device *dev,
 out:
 	mutex_unlock(&devfreq_event_list_lock);
 
-	if (!edev) {
-		of_node_put(node);
+	if (!edev)
 		return ERR_PTR(-ENODEV);
-	}
-
-	of_node_put(node);
 
 	return edev;
 }
-EXPORT_SYMBOL_GPL(devfreq_event_get_edev_by_phandle);
-
-/**
- * devfreq_event_get_edev_count() - Get the count of devfreq-event dev
- * @dev		: the pointer to the given device
- *
- * Note that this function return the count of devfreq-event devices.
- */
-int devfreq_event_get_edev_count(struct device *dev)
-{
-	int count;
-
-	if (!dev->of_node) {
-		dev_err(dev, "device does not have a device node entry\n");
-		return -EINVAL;
-	}
-
-	count = of_property_count_elems_of_size(dev->of_node, "devfreq-events",
-						sizeof(u32));
-	if (count < 0) {
-		dev_err(dev,
-			"failed to get the count of devfreq-event in %pOF node\n",
-			dev->of_node);
-		return count;
-	}
-
-	return count;
-}
-EXPORT_SYMBOL_GPL(devfreq_event_get_edev_count);
+EXPORT_SYMBOL_GPL(devfreq_event_get_edev_by_node);
 
 static void devfreq_event_release_edev(struct device *dev)
 {
diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 9aac2db956d5..7893c3b99e60 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -156,6 +156,17 @@ static struct devfreq *get_parent_devfreq_by_node(struct device_node *np)
 	return devfreq_get_devfreq_by_node(node);
 }
 
+static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
+							int index)
+{
+	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+							index);
+
+	if (!node)
+		return ERR_PTR(-ENODEV);
+	return devfreq_event_get_edev_by_node(node);
+}
+
 static void exynos_bus_exit(struct device *dev)
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
@@ -202,7 +213,8 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	 * Get the devfreq-event devices to get the current utilization of
 	 * buses. This raw data will be used in devfreq ondemand governor.
 	 */
-	count = devfreq_event_get_edev_count(dev);
+	count = of_property_count_elems_of_size(dev->of_node,
+					"devfreq-events", sizeof(u32));
 	if (count < 0) {
 		dev_err(dev, "failed to get the count of devfreq-event dev\n");
 		ret = count;
@@ -218,7 +230,7 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	}
 
 	for (i = 0; i < count; i++) {
-		bus->edev[i] = devfreq_event_get_edev_by_phandle(dev, i);
+		bus->edev[i] = get_edev_by_node(dev->of_node, i);
 		if (IS_ERR(bus->edev[i])) {
 			ret = -EPROBE_DEFER;
 			goto err_regulator;
diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 2f1027c5b647..796272a208a8 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -303,6 +303,17 @@ static int of_get_ddr_timings(struct dram_timing *timing,
 	return ret;
 }
 
+static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
+							int index)
+{
+	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+							index);
+
+	if (!node)
+		return ERR_PTR(-ENODEV);
+	return devfreq_event_get_edev_by_node(node);
+}
+
 static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 {
 	struct arm_smccc_res res;
@@ -339,7 +350,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		return PTR_ERR(data->dmc_clk);
 	}
 
-	data->edev = devfreq_event_get_edev_by_phandle(dev, 0);
+	data->edev = get_edev_by_node(dev->of_node, 0);
 	if (IS_ERR(data->edev))
 		return -EPROBE_DEFER;
 
diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index 47dbf6d1789f..c3195111d646 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -1267,6 +1267,16 @@ static int exynos5_dmc_init_clks(struct exynos5_dmc *dmc)
 	return 0;
 }
 
+static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
+							int index)
+{
+	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+							index);
+	if (!node)
+		return ERR_PTR(-ENODEV);
+	return devfreq_event_get_edev_by_node(node);
+}
+
 /**
  * exynos5_performance_counters_init() - Initializes performance DMC's counters
  * @dmc:	DMC for which it does the setup
@@ -1281,7 +1291,8 @@ static int exynos5_performance_counters_init(struct exynos5_dmc *dmc)
 	int counters_size;
 	int ret, i;
 
-	dmc->num_counters = devfreq_event_get_edev_count(dmc->dev);
+	dmc->num_counters = of_property_count_elems_of_size(dmc->dev->of_node,
+					"devfreq-events", sizeof(u32));
 	if (dmc->num_counters < 0) {
 		dev_err(dmc->dev, "could not get devfreq-event counters\n");
 		return dmc->num_counters;
@@ -1293,8 +1304,7 @@ static int exynos5_performance_counters_init(struct exynos5_dmc *dmc)
 		return -ENOMEM;
 
 	for (i = 0; i < dmc->num_counters; i++) {
-		dmc->counter[i] =
-			devfreq_event_get_edev_by_phandle(dmc->dev, i);
+		dmc->counter[i] = get_edev_by_node(dmc->dev->of_node, i);
 		if (IS_ERR_OR_NULL(dmc->counter[i]))
 			return -EPROBE_DEFER;
 	}
diff --git a/include/linux/devfreq-event.h b/include/linux/devfreq-event.h
index f14f17f8cb7f..967414ac6f7c 100644
--- a/include/linux/devfreq-event.h
+++ b/include/linux/devfreq-event.h
@@ -105,9 +105,8 @@ extern int devfreq_event_set_event(struct devfreq_event_dev *edev);
 extern int devfreq_event_get_event(struct devfreq_event_dev *edev,
 				struct devfreq_event_data *edata);
 extern int devfreq_event_reset_event(struct devfreq_event_dev *edev);
-extern struct devfreq_event_dev *devfreq_event_get_edev_by_phandle(
-				struct device *dev, int index);
-extern int devfreq_event_get_edev_count(struct device *dev);
+extern struct devfreq_event_dev *devfreq_event_get_edev_by_node(
+				struct device_node *node);
 extern struct devfreq_event_dev *devfreq_event_add_edev(struct device *dev,
 				struct devfreq_event_desc *desc);
 extern int devfreq_event_remove_edev(struct devfreq_event_dev *edev);
@@ -151,17 +150,12 @@ static inline int devfreq_event_reset_event(struct devfreq_event_dev *edev)
 	return -EINVAL;
 }
 
-static inline struct devfreq_event_dev *devfreq_event_get_edev_by_phandle(
-					struct device *dev, int index)
+static inline struct devfreq_event_dev *devfreq_event_get_edev_by_node(
+					struct device_node *node)
 {
 	return ERR_PTR(-EINVAL);
 }
 
-static inline int devfreq_event_get_edev_count(struct device *dev)
-{
-	return -EINVAL;
-}
-
 static inline struct devfreq_event_dev *devfreq_event_add_edev(struct device *dev,
 					struct devfreq_event_desc *desc)
 {
-- 
2.17.1
