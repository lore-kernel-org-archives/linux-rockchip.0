From: =?iso-8859-1?Q?Michael_Niew=F6hner?= <mniewoeh-0BV18Q16miHGpFsiFCTsGXqWYbMAw+HU@public.gmane.org>
Subject: [PATCH 1/2] regulator: act8865: add restart handler for act8846
Date: Mon, 11 May 2015 22:54:11 +0200
Message-ID: <A1C80CFB-CDCA-4F88-BA5F-371918CECD97@stud.hs-offenburg.de>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Rebooting radxa rock which uses act8846 results in kernel panic because the
bootloader doesn't readjust frequency or voltage for cpu correctly. This
workaround power cycles the act8846 at restart to reset the board.

Signed-off-by: Michael Niewoehner <mniewoeh-0BV18Q16miHGpFsiFCTsGXqWYbMAw+HU@public.gmane.org>
---
 drivers/regulator/act8865-regulator.c | 43 +++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/regulator/act8865-regulator.c b/drivers/regulator/act8865-regulator.c
index 2ff73d7..f8cdff3 100644
--- a/drivers/regulator/act8865-regulator.c
+++ b/drivers/regulator/act8865-regulator.c
@@ -27,6 +27,7 @@
 #include <linux/of_device.h>
 #include <linux/regulator/of_regulator.h>
 #include <linux/regmap.h>
+#include <linux/reboot.h>
 
 /*
  * ACT8600 Global Register Map.
@@ -133,10 +134,14 @@
 #define	ACT8865_VOLTAGE_NUM	64
 #define ACT8600_SUDCDC_VOLTAGE_NUM	255
 
+#define ACT8846_SIPC_MASK 0x01
+
 struct act8865 {
 	struct regmap *regmap;
 	int off_reg;
 	int off_mask;
+	int sipc_reg;
+	int sipc_mask;
 };
 
 static const struct regmap_config act8865_regmap_config = {
@@ -402,6 +407,17 @@ static void act8865_power_off(void)
 	while (1);
 }
 
+static int act8846_power_cycle(struct notifier_block *this,
+	unsigned long code, void *unused)
+{
+	struct act8865 *act8846;
+
+	act8846 = i2c_get_clientdata(act8865_i2c_client);
+	regmap_write(act8846->regmap, act8846->sipc_reg, act8846->sipc_mask);
+
+	return NOTIFY_DONE;
+}
+
 static int act8865_pmic_probe(struct i2c_client *client,
 			      const struct i2c_device_id *i2c_id)
 {
@@ -413,6 +429,7 @@ static int act8865_pmic_probe(struct i2c_client *client,
 	struct act8865 *act8865;
 	unsigned long type;
 	int off_reg, off_mask;
+	int sipc_reg, sipc_mask;
 
 	pdata = dev_get_platdata(dev);
 
@@ -434,18 +451,24 @@ static int act8865_pmic_probe(struct i2c_client *client,
 		num_regulators = ARRAY_SIZE(act8600_regulators);
 		off_reg = -1;
 		off_mask = -1;
+		sipc_reg = -1;
+		sipc_mask = -1;
 		break;
 	case ACT8846:
 		regulators = act8846_regulators;
 		num_regulators = ARRAY_SIZE(act8846_regulators);
 		off_reg = ACT8846_GLB_OFF_CTRL;
 		off_mask = ACT8846_OFF_SYSMASK;
+		sipc_reg = ACT8846_GLB_OFF_CTRL;
+		sipc_mask = ACT8846_SIPC_MASK;
 		break;
 	case ACT8865:
 		regulators = act8865_regulators;
 		num_regulators = ARRAY_SIZE(act8865_regulators);
 		off_reg = ACT8865_SYS_CTRL;
 		off_mask = ACT8865_MSTROFF;
+		sipc_reg = -1;
+		sipc_mask = -1;
 		break;
 	default:
 		dev_err(dev, "invalid device id %lu\n", type);
@@ -494,6 +517,26 @@ static int act8865_pmic_probe(struct i2c_client *client,
 		}
 	}
 
+	/* Register restart handler */
+	if (of_device_is_system_power_controller(dev->of_node)
+				&& sipc_reg > 0) {
+		static struct notifier_block rockchip_restart_handler = {
+			.notifier_call = act8846_power_cycle,
+			.priority = 129,
+		};
+
+		int ret;
+
+		act8865_i2c_client = client;
+		act8865->sipc_reg = sipc_reg;
+		act8865->sipc_mask = sipc_mask;
+
+		ret = register_restart_handler(&rockchip_restart_handler);
+		if (ret)
+			pr_err("%s: cannot register restart handler, %d\n",
+			       __func__, ret);
+	}
+
 	/* Finally register devices */
 	for (i = 0; i < num_regulators; i++) {
 		const struct regulator_desc *desc = &regulators[i];
-- 
2.3.5
