From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: [PATCH v2 5/5] mfd: rk808: Convert RK805 to shutdown/suspend hooks
Date: Sun, 12 Jan 2020 01:55:04 +0000
Message-ID: <02639ae880b9d945c4134a28b1eef3db2ed9353f.1578789410.git.robin.murphy@arm.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <cover.1578789410.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, smoch-S0/GAf8tV78@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK817,
so it makes little sense for the driver to have to have two completely
different mechanisms to handle essentially the same thing. Move RK805
over to the shutdown/suspend flow to clean things up.

Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
---
 drivers/mfd/rk808.c       | 37 ++++++++++++-------------------------
 include/linux/mfd/rk808.h |  1 -
 2 files changed, 12 insertions(+), 26 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index b2265c6e94ae..d109b9f14407 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -185,7 +185,6 @@ static const struct rk808_reg_data rk805_pre_init_reg[] = {
 	{RK805_BUCK4_CONFIG_REG, RK805_BUCK3_4_ILMAX_MASK,
 				 RK805_BUCK4_ILMAX_3500MA},
 	{RK805_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK, BUCK_ILMIN_400MA},
-	{RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SLEEP_FUN},
 	{RK805_THERMAL_REG, TEMP_HOTDIE_MSK, TEMP115C},
 };
 
@@ -448,21 +447,6 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 
 static struct i2c_client *rk808_i2c_client;
 
-static void rk805_device_shutdown_prepare(void)
-{
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_GPIO_IO_POL_REG,
-				 SLP_SD_MSK, SHUTDOWN_FUN);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
-}
-
 static void rk808_pm_power_off(void)
 {
 	int ret;
@@ -496,6 +480,12 @@ static void rk8xx_shutdown(struct i2c_client *client)
 	int ret;
 
 	switch (rk808->variant) {
+	case RK805_ID:
+		ret = regmap_update_bits(rk808->regmap,
+					 RK805_GPIO_IO_POL_REG,
+					 SLP_SD_MSK,
+					 SHUTDOWN_FUN);
+		break;
 	case RK809_ID:
 	case RK817_ID:
 		ret = regmap_update_bits(rk808->regmap,
@@ -574,7 +564,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
-		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
 		break;
 	case RK808_ID:
 		rk808->regmap_cfg = &rk808_regmap_config;
@@ -653,7 +642,6 @@ static int rk808_probe(struct i2c_client *client,
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		rk808_i2c_client = client;
 		pm_power_off = rk808_pm_power_off;
-		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}
 
 	return 0;
@@ -676,13 +664,6 @@ static int rk808_remove(struct i2c_client *client)
 	if (pm_power_off == rk808_pm_power_off)
 		pm_power_off = NULL;
 
-	/**
-	 * As above, check if the pointer is set by us before overwrite.
-	 */
-	if (rk808->pm_pwroff_prep_fn &&
-	    pm_power_off_prepare == rk808->pm_pwroff_prep_fn)
-		pm_power_off_prepare = NULL;
-
 	return 0;
 }
 
@@ -692,6 +673,12 @@ static int __maybe_unused rk8xx_suspend(struct device *dev)
 	int ret = 0;
 
 	switch (rk808->variant) {
+	case RK805_ID:
+		ret = regmap_update_bits(rk808->regmap,
+					 RK805_GPIO_IO_POL_REG,
+					 SLP_SD_MSK,
+					 SLEEP_FUN);
+		break;
 	case RK809_ID:
 	case RK817_ID:
 		ret = regmap_update_bits(rk808->regmap,
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index b038653fa87e..e07f6e61cd38 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -620,6 +620,5 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
-	void				(*pm_pwroff_prep_fn)(void);
 };
 #endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.17.1
