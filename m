From: Chen-Yu Tsai <wens@kernel.org>
Subject: [PATCH] thermal: rockchip: enable hwmon
Date: Tue, 17 Dec 2019 13:23:28 +0800
Message-ID: <20191217052328.25633-1-wens@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

By default of-based thermal driver do not have hwmon entries registered.

Do this explicitly so users can use standard hwmon interfaces and tools
to read the temperature.

This is based on similar changes for bcm2835_thermal in commit
d56c19d07e0b ("thermal: bcm2835: enable hwmon explicitly").

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/thermal/rockchip_thermal.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 9ed8085bb792..d53ba7dabf16 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -19,6 +19,8 @@
 #include <linux/mfd/syscon.h>
 #include <linux/pinctrl/consumer.h>
 
+#include "thermal_hwmon.h"
+
 /*
  * If the temperature over a period of time High,
  * the resulting TSHUT gave CRU module,let it reset the entire chip,
@@ -1210,7 +1212,11 @@ rockchip_thermal_register_sensor(struct platform_device *pdev,
 		return error;
 	}
 
-	return 0;
+	/* thermal_zone doesn't enable hwmon as default, enable it here */
+	sensor->tzd->tzp->no_hwmon = false;
+	error = thermal_add_hwmon_sysfs(sensor->tzd);
+
+	return error;
 }
 
 /**
-- 
2.24.0
