From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: [PATCH v2 3/5] mfd: rk808: Stop using syscore ops
Date: Sun, 12 Jan 2020 01:55:02 +0000
Message-ID: <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
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

Setting the SLEEP pin to its shutdown function for appropriate PMICs
doesn't need to happen in single-CPU context, so there's really no point
involving the syscore machinery. Hook it up to the standard driver model
shutdown method instead. This also obviates the issue that the syscore
ops weren't being unregistered on probe failure or module removal.

Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
---
 drivers/mfd/rk808.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index ac798053c26a..8116ed6cf2e7 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -19,7 +19,6 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/regmap.h>
-#include <linux/syscore_ops.h>
 
 struct rk808_reg_data {
 	int addr;
@@ -509,28 +508,27 @@ static void rk818_device_shutdown(void)
 		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
 }
 
-static void rk8xx_syscore_shutdown(void)
+static void rk8xx_shutdown(struct i2c_client *client)
 {
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	struct rk808 *rk808 = i2c_get_clientdata(client);
 	int ret;
 
-	if (system_state == SYSTEM_POWER_OFF &&
-	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
+	switch (rk808->variant) {
+	case RK809_ID:
+	case RK817_ID:
 		ret = regmap_update_bits(rk808->regmap,
 					 RK817_SYS_CFG(3),
 					 RK817_SLPPIN_FUNC_MSK,
 					 SLPPIN_DN_FUN);
-		if (ret) {
-			dev_warn(&rk808_i2c_client->dev,
-				 "Cannot switch to power down function\n");
-		}
+		break;
+	default:
+		return;
 	}
+	if (ret)
+		dev_warn(&client->dev,
+			 "Cannot switch to power down function\n");
 }
 
-static struct syscore_ops rk808_syscore_ops = {
-	.shutdown = rk8xx_syscore_shutdown,
-};
-
 static const struct of_device_id rk808_of_match[] = {
 	{ .compatible = "rockchip,rk805" },
 	{ .compatible = "rockchip,rk808" },
@@ -623,7 +621,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
 		cells = rk817s;
 		nr_cells = ARRAY_SIZE(rk817s);
-		register_syscore_ops(&rk808_syscore_ops);
 		break;
 	default:
 		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
@@ -759,6 +756,7 @@ static struct i2c_driver rk808_i2c_driver = {
 	},
 	.probe    = rk808_probe,
 	.remove   = rk808_remove,
+	.shutdown = rk8xx_shutdown,
 };
 
 module_i2c_driver(rk808_i2c_driver);
-- 
2.17.1
