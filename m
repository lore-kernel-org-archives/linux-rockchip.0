From: Brian Norris <briannorris@chromium.org>
Subject: [PATCH 1/3] thermal: handle get_temp() errors properly
Date: Fri, 18 Nov 2016 15:52:55 -0800
Message-ID: <1479513177-81504-1-git-send-email-briannorris@chromium.org>
Return-path: <linux-pm-owner@vger.kernel.org>
Sender: linux-pm-owner@vger.kernel.org
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Caesar Wang <wxt@rock-chips.com>, Stephen Barber <smbarber@chromium.org>, Brian Norris <briannorris@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

If using CONFIG_THERMAL_EMULATION, there's a corner case where we might
get an error from the zone's get_temp() callback, but we'll ignore that
and keep using its value. Let's just error out properly instead.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
 drivers/thermal/thermal_core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index 911fd964c742..0fa497f10d25 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -494,6 +494,8 @@ int thermal_zone_get_temp(struct thermal_zone_device *tz, int *temp)
 	mutex_lock(&tz->lock);
 
 	ret = tz->ops->get_temp(tz, temp);
+	if (ret)
+		goto exit_unlock;
 
 	if (IS_ENABLED(CONFIG_THERMAL_EMULATION) && tz->emul_temperature) {
 		for (count = 0; count < tz->trips; count++) {
@@ -514,6 +516,7 @@ int thermal_zone_get_temp(struct thermal_zone_device *tz, int *temp)
 			*temp = tz->emul_temperature;
 	}
  
+exit_unlock:
 	mutex_unlock(&tz->lock);
 exit:
 	return ret;
-- 
2.8.0.rc3.226.g39d4020

