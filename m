From: schaecsn <schaecsn@gmx.net>
Subject: [PATCH] thermal: rockchip: enable hwmon
Date: Sun, 17 Nov 2019 21:24:13 -0800 (PST)
Message-ID: <20191118052413.D729B6E85603@corona.crabdance.com>
Reply-To: schaecsn@gmx.net
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Enable hwmon for the soc and gpu temperature sensors.

Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>

---
 drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 343c2f5c5a25..e47c60010259 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -19,6 +19,8 @@
 #include <linux/mfd/syscon.h>
 #include <linux/pinctrl/consumer.h>

+#include "thermal_hwmon.h"
+
 /**
  * If the temperature over a period of time High,
  * the resulting TSHUT gave CRU module,let it reset the entire chip,
@@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform_device *pdev)

 	thermal->chip->control(thermal->regs, true);

-	for (i = 0; i < thermal->chip->chn_num; i++)
+	for (i = 0; i < thermal->chip->chn_num; i++) {
 		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
+		thermal->sensors[i].tzd->tzp->no_hwmon = false;
+		error = thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
+		if (error)
+			dev_warn(&pdev->dev,
+				 "failed to register sensor %d with hwmon: %d\n",
+				 i, error);
+	}

 	platform_set_drvdata(pdev, thermal);

@@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform_device *pdev)
 	for (i = 0; i < thermal->chip->chn_num; i++) {
 		struct rockchip_thermal_sensor *sensor = &thermal->sensors[i];

+		thermal_remove_hwmon_sysfs(sensor->tzd);
 		rockchip_thermal_toggle_sensor(sensor, false);
 	}

--
2.24.0
