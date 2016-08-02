From: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
Subject: [RESEND PATCH] mfd: RK808: Fetch PMIC variant from chip id register
Date: Tue, 2 Aug 2016 08:40:01 +0200
Message-ID: <1470120001-34770-1-git-send-email-w.egorov@phytec.de>
Mime-Version: 1.0
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
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add and use the chip id registers to determine the PMIC variant.

Signed-off-by: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>
Tested-by: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

This patch is based on top of

[v6,1/5] mfd: RK808: Add RK818 support
(https://patchwork.kernel.org/patch/9172223/)

---
 drivers/mfd/rk808.c       | 17 +++++++++--------
 include/linux/mfd/rk808.h |  6 ++++--
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 66f7b08..fbec1d8 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -291,8 +291,8 @@ static void rk808_device_shutdown(void)
 }
 
 static const struct of_device_id rk808_of_match[] = {
-	{ .compatible = "rockchip,rk808", .data = (void *) RK808_ID },
-	{ .compatible = "rockchip,rk818", .data = (void *) RK818_ID },
+	{ .compatible = "rockchip,rk808" },
+	{ .compatible = "rockchip,rk818" },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, rk808_of_match);
@@ -302,7 +302,6 @@ static int rk808_probe(struct i2c_client *client,
 {
 	struct device_node *np = client->dev.of_node;
 	struct rk808 *rk808;
-	const struct of_device_id *match;
 	const struct rk808_reg_data *pre_init_reg;
 	const struct mfd_cell *cells;
 	int nr_pre_init_regs;
@@ -315,12 +314,14 @@ static int rk808_probe(struct i2c_client *client,
 	if (!rk808)
 		return -ENOMEM;
 
-	match = of_match_device(rk808_of_match, &client->dev);
-	if (!match) {
-		dev_err(&client->dev, "Unable to match OF ID\n");
-		return -ENODEV;
+	rk808->variant = i2c_smbus_read_word_data(client, RK808_ID_MSB);
+	if (rk808->variant < 0) {
+		dev_err(&client->dev, "Failed to read the chip id at 0x%02x\n",
+			RK808_ID_MSB);
+		return rk808->variant;
 	}
-	rk808->variant = (long)match->data;
+
+	dev_dbg(&client->dev, "Chip id: 0x%x\n", (unsigned int)rk808->variant);
 
 	switch (rk808->variant) {
 	case RK808_ID:
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index e5ae21d..fc5db6f 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -69,6 +69,8 @@ enum rk808_reg {
 #define RK808_RTC_INT_REG	0x12
 #define RK808_RTC_COMP_LSB_REG	0x13
 #define RK808_RTC_COMP_MSB_REG	0x14
+#define RK808_ID_MSB		0x17
+#define RK808_ID_LSB		0x18
 #define RK808_CLK32OUT_REG	0x20
 #define RK808_VB_MON_REG	0x21
 #define RK808_THERMAL_REG	0x22
@@ -318,8 +320,8 @@ enum {
 };
 
 enum {
-	RK808_ID,
-	RK818_ID,
+	RK808_ID = 0x0000,
+	RK818_ID = 0x8181,
 };
 
 struct rk808 {
-- 
1.9.1
