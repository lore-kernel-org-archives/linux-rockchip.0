From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH v2 1/5] mfd: rk808: Always use poweroff when requested
Date: Sun, 12 Jan 2020 01:55:00 +0000
Message-ID: <233bf172a5310658d703b11be6e637d6c4d46338.1578789410.git.robin.murphy@arm.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

From: Soeren Moch <smoch@web.de>

With the device tree property "rockchip,system-power-controller" we
explicitly request to use this PMIC to power off the system. So always
register our poweroff function, even if some other handler (probably
PSCI poweroff) was registered before.

This does tend to reveal a warning on shutdown due to the Rockchip I2C
driver not implementing an atomic transfer method, however since the
write to DEV_OFF takes effect immediately the I2C completion interrupt
is moot anyway, and as the very last thing written to the console it is
only visible to users going out of their way to capture serial output.

Signed-off-by: Soeren Moch <smoch@web.de>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
[ rm: note potential warning in commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index a69a6742ecdc..616e44e7ef98 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
 	const struct mfd_cell *cells;
 	int nr_pre_init_regs;
 	int nr_cells;
-	int pm_off = 0, msb, lsb;
+	int msb, lsb;
 	unsigned char pmic_id_msb, pmic_id_lsb;
 	int ret;
 	int i;
@@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
 		goto err_irq;
 	}
 
-	pm_off = of_property_read_bool(np,
-				"rockchip,system-power-controller");
-	if (pm_off && !pm_power_off) {
+	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		rk808_i2c_client = client;
 		pm_power_off = rk808->pm_pwroff_fn;
-	}
-
-	if (pm_off && !pm_power_off_prepare) {
-		if (!rk808_i2c_client)
-			rk808_i2c_client = client;
 		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}
 
-- 
2.17.1
