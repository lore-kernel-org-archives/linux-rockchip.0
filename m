From: John Keeping <john@metanate.com>
Subject: [PATCH] i2c: rk3x: support master_xfer_atomic
Date: Tue, 23 Jun 2020 13:06:46 +0100
Message-ID: <20200623120646.2175569-1-john@metanate.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: John Keeping <john@metanate.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Enable i2c transactions in irq disabled contexts like poweroff where the
PMIC is connected via i2c.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/i2c/busses/i2c-rk3x.c | 39 +++++++++++++++++++++++++++++++----
 1 file changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 15324bfbc6cb..8e3cc85d1921 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
+#include <linux/iopoll.h>
 #include <linux/errno.h>
 #include <linux/err.h>
 #include <linux/platform_device.h>
@@ -1040,8 +1041,21 @@ static int rk3x_i2c_setup(struct rk3x_i2c *i2c, struct i2c_msg *msgs, int num)
 	return ret;
 }
 
-static int rk3x_i2c_xfer(struct i2c_adapter *adap,
-			 struct i2c_msg *msgs, int num)
+static int rk3x_i2c_wait_xfer_poll(struct rk3x_i2c *i2c)
+{
+	ktime_t timeout = ktime_add_ms(ktime_get(), WAIT_TIMEOUT);
+
+	while (READ_ONCE(i2c->busy) &&
+	       ktime_compare(ktime_get(), timeout) < 0) {
+		udelay(5);
+		rk3x_i2c_irq(0, i2c);
+	}
+
+	return !i2c->busy;
+}
+
+static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
+				struct i2c_msg *msgs, int num, bool polling)
 {
 	struct rk3x_i2c *i2c = (struct rk3x_i2c *)adap->algo_data;
 	unsigned long timeout, flags;
@@ -1075,8 +1089,12 @@ static int rk3x_i2c_xfer(struct i2c_adapter *adap,
 
 		rk3x_i2c_start(i2c);
 
-		timeout = wait_event_timeout(i2c->wait, !i2c->busy,
-					     msecs_to_jiffies(WAIT_TIMEOUT));
+		if (!polling) {
+			timeout = wait_event_timeout(i2c->wait, !i2c->busy,
+						     msecs_to_jiffies(WAIT_TIMEOUT));
+		} else {
+			timeout = rk3x_i2c_wait_xfer_poll(i2c);
+		}
 
 		spin_lock_irqsave(&i2c->lock, flags);
 
@@ -1110,6 +1128,18 @@ static int rk3x_i2c_xfer(struct i2c_adapter *adap,
 	return ret < 0 ? ret : num;
 }
 
+static int rk3x_i2c_xfer(struct i2c_adapter *adap,
+			 struct i2c_msg *msgs, int num)
+{
+	return rk3x_i2c_xfer_common(adap, msgs, num, false);
+}
+
+static int rk3x_i2c_xfer_polling(struct i2c_adapter *adap,
+				 struct i2c_msg *msgs, int num)
+{
+	return rk3x_i2c_xfer_common(adap, msgs, num, true);
+}
+
 static __maybe_unused int rk3x_i2c_resume(struct device *dev)
 {
 	struct rk3x_i2c *i2c = dev_get_drvdata(dev);
@@ -1126,6 +1156,7 @@ static u32 rk3x_i2c_func(struct i2c_adapter *adap)
 
 static const struct i2c_algorithm rk3x_i2c_algorithm = {
 	.master_xfer		= rk3x_i2c_xfer,
+	.master_xfer_atomic	= rk3x_i2c_xfer_polling,
 	.functionality		= rk3x_i2c_func,
 };
 
-- 
2.27.0
