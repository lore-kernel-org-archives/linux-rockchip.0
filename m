From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH 5/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq-events' property
Date: Tue, 17 Dec 2019 14:57:34 +0900
Message-ID: <20191217055738.28445-6-cw00.choi@samsung.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
        <CGME20191217055106epcas1p4b50ca647af9b54465e5c0a0bebb165b8@epcas1p4.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

In order to remove the deprecated 'devfreq-events' property, replace with
new 'exynos,ppmu-device' property in order to get the devfreq-event device
in devicetree file instead of 'devfreq-events' property. But, to guarantee
the backward-compatibility, keep the support 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../bindings/devfreq/exynos-bus.txt           |  6 ++--
 drivers/devfreq/exynos-bus.c                  | 32 ++++++++++++++-----
 2 files changed, 27 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index c948cee01124..c6c2dd0e77c8 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -41,7 +41,7 @@ Required properties for all bus devices:
 
 Required properties only for parent bus device:
 - vdd-supply: the regulator to provide the buses with the voltage.
-- devfreq-events: the devfreq-event device to monitor the current utilization
+- exynos,ppmu-device: the devfreq-event device to monitor the current utilization
   of buses.
 
 Required properties only for passive bus device:
@@ -374,13 +374,13 @@ Example2 :
 	in exynos3250-rinato.dts is listed below:
 
 	&bus_dmc {
-		devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+		exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 		vdd-supply = <&buck1_reg>;	/* VDD_MIF */
 		status = "okay";
 	};
 
 	&bus_leftbus {
-		devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+		exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 		vdd-supply = <&buck3_reg>;
 		status = "okay";
 	};
diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 60d61b168153..0683bee64eb6 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -165,11 +165,18 @@ static struct devfreq *get_parent_devfreq_by_node(struct device_node *np)
 static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
-							index);
+	struct device_node *node = of_parse_phandle(np,
+					"exynos,ppmu-device", index);
 
-	if (!node)
-		return ERR_PTR(-ENODEV);
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
 
@@ -220,11 +227,20 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
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
 
-- 
2.17.1
