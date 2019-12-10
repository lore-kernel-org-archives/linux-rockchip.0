From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 3/4] mfd: rk808: Reduce shutdown duplication
Date: Tue, 10 Dec 2019 13:24:32 +0000
Message-ID: <2376f722b917f55cbf49c5f3da0c341457900dee.1575932654.git.robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, smoch@web.de, linux.amoon@gmail.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Rather than having 3 almost-identical functions plus the machinery to
keep track of them, it's far simpler to just dynamically select the
appropriate register field per variant.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c       | 56 +++++++++++++--------------------------
 include/linux/mfd/rk808.h |  1 -
 2 files changed, 19 insertions(+), 38 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 387105830736..657b8baa3b8a 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -449,21 +449,6 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 
 static struct i2c_client *rk808_i2c_client;
 
-static void rk805_device_shutdown(void)
-{
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_DEV_CTRL_REG,
-				 DEV_OFF, DEV_OFF);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
-}
-
 static void rk805_device_shutdown_prepare(void)
 {
 	int ret;
@@ -482,29 +467,29 @@ static void rk805_device_shutdown_prepare(void)
 static void rk808_device_shutdown(void)
 {
 	int ret;
+	unsigned int reg, bit;
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
 
 	if (!rk808)
 		return;
 
-	ret = regmap_update_bits(rk808->regmap,
-				 RK808_DEVCTRL_REG,
-				 DEV_OFF_RST, DEV_OFF_RST);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
-}
-
-static void rk818_device_shutdown(void)
-{
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
+	switch (rk808->variant) {
+	case RK805_ID:
+		reg = RK805_DEV_CTRL_REG;
+		bit = DEV_OFF;
+		break;
+	case RK808_ID:
+		reg = RK808_DEVCTRL_REG,
+		bit = DEV_OFF_RST;
+		break;
+	case RK818_ID:
+		reg = RK818_DEVCTRL_REG;
+		bit = DEV_OFF;
+		break;
+	default:
 		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK818_DEVCTRL_REG,
-				 DEV_OFF, DEV_OFF);
+	}
+	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
 		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
 }
@@ -594,7 +579,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
-		rk808->pm_pwroff_fn = rk805_device_shutdown;
 		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
 		break;
 	case RK808_ID:
@@ -604,7 +588,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
 		cells = rk808s;
 		nr_cells = ARRAY_SIZE(rk808s);
-		rk808->pm_pwroff_fn = rk808_device_shutdown;
 		break;
 	case RK818_ID:
 		rk808->regmap_cfg = &rk818_regmap_config;
@@ -613,7 +596,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk818_pre_init_reg);
 		cells = rk818s;
 		nr_cells = ARRAY_SIZE(rk818s);
-		rk808->pm_pwroff_fn = rk818_device_shutdown;
 		break;
 	case RK809_ID:
 	case RK817_ID:
@@ -677,7 +659,7 @@ static int rk808_probe(struct i2c_client *client,
 	}
 
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
-		pm_power_off = rk808->pm_pwroff_fn;
+		pm_power_off = rk808_device_shutdown;
 		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}
 
@@ -701,7 +683,7 @@ static int rk808_remove(struct i2c_client *client)
 	 * pm_power_off may points to a function from another module.
 	 * Check if the pointer is set by us and only then overwrite it.
 	 */
-	if (rk808->pm_pwroff_fn && pm_power_off == rk808->pm_pwroff_fn)
+	if (pm_power_off == rk808_device_shutdown)
 		pm_power_off = NULL;
 
 	/**
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index a59bf323f713..b038653fa87e 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -620,7 +620,6 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
-	void				(*pm_pwroff_fn)(void);
 	void				(*pm_pwroff_prep_fn)(void);
 };
 #endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.17.1
