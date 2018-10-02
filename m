From: Stefan Mavrodiev <stefan-kyXcfZUBQGPQT0dZR+AlfA@public.gmane.org>
Subject: [PATCH 1/1] mfd: rk808: Prepare rk805 for poweroff
Date: Tue,  2 Oct 2018 10:38:29 +0300
Message-ID: <1538465910-27233-1-git-send-email-stefan@olimex.com>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, open list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Stefan Mavrodiev <stefan-kyXcfZUBQGPQT0dZR+AlfA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

RK805 has SLEEP signal, which can put the device into SLEEP or OFF
mode. The default is SLEEP mode.

However, when the kernel performs power-off (actually the ATF) the
device will not go fully off and this will result in higher power
consumption and inability to wake the device with RTC alarm.

The solution is to enable pm_power_off_prepare function, which will
configure SLEEP pin for OFF function.

Signed-off-by: Stefan Mavrodiev <stefan-kyXcfZUBQGPQT0dZR+AlfA@public.gmane.org>
---
 drivers/mfd/rk808.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 216fbf6..50f3f78 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -387,6 +387,25 @@ static void rk805_device_shutdown(void)
 		dev_err(&rk808_i2c_client->dev, "power off error!\n");
 }
 
+static void rk805_device_shutdown_prepare(void)
+{
+	int ret;
+	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+
+	if (!rk808) {
+		dev_warn(&rk808_i2c_client->dev,
+			 "have no rk805, so do nothing here\n");
+
+		return;
+	}
+
+	ret = regmap_update_bits(rk808->regmap,
+				 RK805_GPIO_IO_POL_REG,
+				 SLP_SD_MSK, SHUTDOWN_FUN);
+	if (ret)
+		dev_err(&rk808_i2c_client->dev, "power off error!\n");
+}
+
 static void rk808_device_shutdown(void)
 {
 	int ret;
@@ -549,6 +568,10 @@ static int rk808_probe(struct i2c_client *client,
 	if (pm_off && !pm_power_off) {
 		rk808_i2c_client = client;
 		pm_power_off = pm_pwroff_fn;
+	} else if (pm_off && !pm_power_off_prepare &&
+		   rk808->variant == RK805_ID) {
+		rk808_i2c_client = client;
+		pm_power_off_prepare = rk805_device_shutdown_prepare;
 	}
 
 	return 0;
@@ -564,6 +587,7 @@ static int rk808_remove(struct i2c_client *client)
 
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 	pm_power_off = NULL;
+	pm_power_off_prepare = NULL;
 
 	return 0;
 }
-- 
2.7.4
