From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH v2 2/5] mfd: rk808: Ensure suspend/resume hooks always work
Date: Sun, 12 Jan 2020 01:55:01 +0000
Message-ID: <e2cd9aa88c96f69fd931d606e0e70784c3020551.1578789410.git.robin.murphy@arm.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

The RK809/RK817 suspend/resume hooks should not have to depend on
whether this driver owns the pm_power_off hook, and thus the global
rk808_i2c_client is set - indeed, the GPIO-based control is really
only relevant when PSCI firmware is in charge of power rather than
the kernel. As driver model callbacks, they have an appropriate
device argument to hand, so can just always use that.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 616e44e7ef98..ac798053c26a 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -712,7 +712,7 @@ static int rk808_remove(struct i2c_client *client)
 
 static int __maybe_unused rk8xx_suspend(struct device *dev)
 {
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	struct rk808 *rk808 = i2c_get_clientdata(to_i2c_client(dev));
 	int ret = 0;
 
 	switch (rk808->variant) {
@@ -732,7 +732,7 @@ static int __maybe_unused rk8xx_suspend(struct device *dev)
 
 static int __maybe_unused rk8xx_resume(struct device *dev)
 {
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	struct rk808 *rk808 = i2c_get_clientdata(to_i2c_client(dev));
 	int ret = 0;
 
 	switch (rk808->variant) {
-- 
2.17.1
