From: zhangqing <zhangqing@rock-chips.com>
Subject: [PATCH] regulator: fan53555: fill set_suspend_enable/disable callback
Date: Tue, 12 Jan 2016 03:05:56 -0800
Message-ID: <1452596756-16617-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: lgirdwood@gmail.com, broonie@kernel.org, huangtao@rock-chips.com, zyw@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, zhangqing <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Setting the set_suspend_enable/disable callback to support
enable and disable the dcdc when system is suspend.

Signed-off-by: zhangqing <zhangqing@rock-chips.com>
---
 drivers/regulator/fan53555.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 4940e82..2cb5cc3 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -114,6 +114,22 @@ static int fan53555_set_suspend_voltage(struct regulator_dev *rdev, int uV)
 	return 0;
 }
 
+static int fan53555_set_suspend_enable(struct regulator_dev *rdev)
+{
+	struct fan53555_device_info *di = rdev_get_drvdata(rdev);
+
+	return regmap_update_bits(di->regmap, di->sleep_reg,
+				  VSEL_BUCK_EN, VSEL_BUCK_EN);
+}
+
+static int fan53555_set_suspend_disable(struct regulator_dev *rdev)
+{
+	struct fan53555_device_info *di = rdev_get_drvdata(rdev);
+
+	return regmap_update_bits(di->regmap, di->sleep_reg,
+				  VSEL_BUCK_EN, 0);
+}
+
 static int fan53555_set_mode(struct regulator_dev *rdev, unsigned int mode)
 {
 	struct fan53555_device_info *di = rdev_get_drvdata(rdev);
@@ -192,6 +208,8 @@ static struct regulator_ops fan53555_regulator_ops = {
 	.set_mode = fan53555_set_mode,
 	.get_mode = fan53555_get_mode,
 	.set_ramp_delay = fan53555_set_ramp,
+	.set_suspend_enable = fan53555_set_suspend_enable,
+	.set_suspend_disable = fan53555_set_suspend_disable,
 };
 
 static int fan53555_voltages_setup_fairchild(struct fan53555_device_info *di)
-- 
1.9.1
