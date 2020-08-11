From: Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v1] thermal/of: Introduce k-po, k-pu and k-i for a thermal zone
Date: Tue, 11 Aug 2020 20:31:15 +0800
Message-ID: <20200811123115.8144-1-finley.xiao@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org, cl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The default value for k_pu is:
    2 * sustainable_power / (desired_temperature - switch_on_temp)
The default value for k_po is:
    sustainable_power / (desired_temperature - switch_on_temp)
The default value for k_i is 10.

Even though these parameters of the PID controller can be changed
by the following sysfs files:
    /sys/class/thermal/thermal_zoneX/k_pu
    /sys/class/thermal/thermal_zoneX/k_po
    /sys/class/thermal/thermal_zoneX/k_i

But it's still more convenient to change the default values by devicetree,
so introduce these three optional properties. If provided these properties,
they will be parsed and associated with the thermal zone via the thermal
zone parameters.

Signed-off-by: Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 Documentation/devicetree/bindings/thermal/thermal.txt | 14 ++++++++++++++
 drivers/thermal/thermal_of.c                          |  7 +++++++
 2 files changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/thermal.txt b/Documentation/devicetree/bindings/thermal/thermal.txt
index f78bec19ca35..ebe936b57ded 100644
--- a/Documentation/devicetree/bindings/thermal/thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/thermal.txt
@@ -165,6 +165,20 @@ Optional property:
 			2000mW, while on a 10'' tablet is around
 			4500mW.
 
+- k-po:			Proportional parameter of the PID controller when
+			current temperature is above the target.
+  Type: signed
+  Size: one cell
+
+- k-pu:			Proportional parameter of the PID controller when
+			current temperature is below the target.
+  Type: signed
+  Size: one cell
+
+- k-i:			Integral parameter of the PID controller.
+  Type: signed
+  Size: one cell
+
 Note: The delay properties are bound to the maximum dT/dt (temperature
 derivative over time) in two situations for a thermal zone:
 (i)  - when passive cooling is activated (polling-delay-passive); and
diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
index ddf88dbe7ba2..b2a9f92cd8d2 100644
--- a/drivers/thermal/thermal_of.c
+++ b/drivers/thermal/thermal_of.c
@@ -1089,6 +1089,7 @@ int __init of_parse_thermal_zones(void)
 		struct thermal_zone_params *tzp;
 		int i, mask = 0;
 		u32 prop;
+		s32 sval;
 
 		tz = thermal_of_build_thermal_zone(child);
 		if (IS_ERR(tz)) {
@@ -1113,6 +1114,12 @@ int __init of_parse_thermal_zones(void)
 
 		if (!of_property_read_u32(child, "sustainable-power", &prop))
 			tzp->sustainable_power = prop;
+		if (!of_property_read_s32(child, "k-po", &sval))
+			tzp->k_po = sval;
+		if (!of_property_read_s32(child, "k-pu", &sval))
+			tzp->k_pu = sval;
+		if (!of_property_read_s32(child, "k-i", &sval))
+			tzp->k_i = sval;
 
 		for (i = 0; i < tz->ntrips; i++)
 			mask |= 1 << i;
-- 
2.11.0
