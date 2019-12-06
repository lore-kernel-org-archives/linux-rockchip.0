From: Anand Moon <linux.amoon@gmail.com>
Subject: [RFCv1 1/8] mfd: rk808: Refactor shutdown functions
Date: Fri,  6 Dec 2019 18:45:29 +0000
Message-ID: <20191206184536.2507-2-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Daniel Schultz <d.schultz@phytec.de>

Since all shutdown functions have almost the same code, all logic
from the shutdown functions can be refactored to a new function
"rk808_update_bits", which can update a register by a given address
and bitmask and value.

link: https://lore.kernel.org/patchwork/patch/937404/
Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
[rebased on latest kernel]
Modified the API to set the value.
This changes were submited with below patch.
[0] https://lore.kernel.org/patchwork/patch/937404/
---
 drivers/mfd/rk808.c | 87 ++++++++++++++-------------------------------
 1 file changed, 26 insertions(+), 61 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index a69a6742ecdc..e637f5bcc8bb 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -449,81 +449,52 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 
 static struct i2c_client *rk808_i2c_client;
 
-static void rk805_device_shutdown(void)
+static void rk808_update_bits(unsigned int reg, unsigned int mask,
+		unsigned int value)
 {
-	int ret;
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	int ret;
 
-	if (!rk808)
+	if (!rk808) {
+		dev_warn(&rk808_i2c_client->dev,
+			"have no rk805/rk808/rk817/rk818, so do nothing here\n");
 		return;
+	}
 
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_DEV_CTRL_REG,
-				 DEV_OFF, DEV_OFF);
+	ret = regmap_update_bits(rk808->regmap,	reg, mask, value);
 	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+		dev_err(&rk808_i2c_client->dev,
+			"can't write to register 0x%x: %x!\n", reg, ret);
 }
 
-static void rk805_device_shutdown_prepare(void)
+static void rk805_device_shutdown(void)
 {
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
+	rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
+}
 
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_GPIO_IO_POL_REG,
-				 SLP_SD_MSK, SHUTDOWN_FUN);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+static void rk805_device_shutdown_prepare(void)
+{
+	rk808_update_bits(RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SHUTDOWN_FUN);
 }
 
 static void rk808_device_shutdown(void)
 {
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK808_DEVCTRL_REG,
-				 DEV_OFF_RST, DEV_OFF_RST);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+	rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
 }
 
 static void rk818_device_shutdown(void)
 {
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK818_DEVCTRL_REG,
-				 DEV_OFF, DEV_OFF);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+	rk808_update_bits(RK818_DEVCTRL_REG, DEV_OFF, DEV_OFF);
 }
 
 static void rk8xx_syscore_shutdown(void)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-	int ret;
 
 	if (system_state == SYSTEM_POWER_OFF &&
 	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
-		ret = regmap_update_bits(rk808->regmap,
-					 RK817_SYS_CFG(3),
-					 RK817_SLPPIN_FUNC_MSK,
-					 SLPPIN_DN_FUN);
-		if (ret) {
-			dev_warn(&rk808_i2c_client->dev,
-				 "Cannot switch to power down function\n");
-		}
+		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
+				SLPPIN_DN_FUN);
 	}
 }
 
@@ -720,41 +691,35 @@ static int rk808_remove(struct i2c_client *client)
 static int __maybe_unused rk8xx_suspend(struct device *dev)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-	int ret = 0;
 
 	switch (rk808->variant) {
 	case RK809_ID:
 	case RK817_ID:
-		ret = regmap_update_bits(rk808->regmap,
-					 RK817_SYS_CFG(3),
-					 RK817_SLPPIN_FUNC_MSK,
-					 SLPPIN_SLP_FUN);
+		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
+				SLPPIN_SLP_FUN);
 		break;
 	default:
 		break;
 	}
 
-	return ret;
+	return 0;
 }
 
 static int __maybe_unused rk8xx_resume(struct device *dev)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-	int ret = 0;
 
 	switch (rk808->variant) {
 	case RK809_ID:
 	case RK817_ID:
-		ret = regmap_update_bits(rk808->regmap,
-					 RK817_SYS_CFG(3),
-					 RK817_SLPPIN_FUNC_MSK,
-					 SLPPIN_NULL_FUN);
+		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
+				SLPPIN_NULL_FUN);
 		break;
 	default:
 		break;
 	}
 
-	return ret;
+	return 0;
 }
 static SIMPLE_DEV_PM_OPS(rk8xx_pm_ops, rk8xx_suspend, rk8xx_resume);
 
-- 
2.24.0
