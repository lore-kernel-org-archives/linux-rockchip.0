From: Stefan Schaeckeler <schaecsn@gmx.net>
Subject: [RESEND PATCH] thermal: rockchip: enable hwmon
Date: Wed, 11 Dec 2019 22:17:02 -0800 (PST)
Message-ID: <20191212061702.BFE2D6E85603@corona.crabdance.com>
Reply-To: schaecsn@gmx.net
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

By default, of-based thermal drivers do not enable hwmon.
Explicitly enable hwmon for both, the soc and gpu temperature
sensor.

Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>

=2D--
 drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip=
_thermal.c
index 343c2f5c5a25..e47c60010259 100644
=2D-- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -19,6 +19,8 @@
 #include <linux/mfd/syscon.h>
 #include <linux/pinctrl/consumer.h>

+#include "thermal_hwmon.h"
+
 /**
  * If the temperature over a period of time High,
  * the resulting TSHUT gave CRU module,let it reset the entire chip,
@@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform_d=
evice *pdev)

 	thermal->chip->control(thermal->regs, true);

-	for (i =3D 0; i < thermal->chip->chn_num; i++)
+	for (i =3D 0; i < thermal->chip->chn_num; i++) {
 		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
+		thermal->sensors[i].tzd->tzp->no_hwmon =3D false;
+		error =3D thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
+		if (error)
+			dev_warn(&pdev->dev,
+				 "failed to register sensor %d with hwmon: %d\n",
+				 i, error);
+	}

 	platform_set_drvdata(pdev, thermal);

@@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform_d=
evice *pdev)
 	for (i =3D 0; i < thermal->chip->chn_num; i++) {
 		struct rockchip_thermal_sensor *sensor =3D &thermal->sensors[i];

+		thermal_remove_hwmon_sysfs(sensor->tzd);
 		rockchip_thermal_toggle_sensor(sensor, false);
 	}

=2D-
2.24.0
