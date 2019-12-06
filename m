From: Anand Moon <linux.amoon@gmail.com>
Subject: [RFCv1 5/8] mfd: rk808: cleanup unused function pointer
Date: Fri,  6 Dec 2019 18:45:33 +0000
Message-ID: <20191206184536.2507-6-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Cleanup unused pm_poweroff_fn and pm_pwroff_prep_fn function,
drop the unused rockchip,system-power-controller dts binding.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c       | 28 ++--------------------------
 include/linux/mfd/rk808.h |  2 --
 2 files changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 4b3b90dad4f8..9a7be379946a 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -521,7 +521,7 @@ static int rk808_probe(struct i2c_client *client,
 	const struct mfd_cell *cells;
 	int nr_pre_init_regs;
 	int nr_cells;
-	int pm_off = 0, msb, lsb;
+	int msb, lsb;
 	unsigned char pmic_id_msb, pmic_id_lsb;
 	int ret;
 	int i;
@@ -641,18 +641,8 @@ static int rk808_probe(struct i2c_client *client,
 		goto err_irq;
 	}
 
-	pm_off = of_property_read_bool(np,
-				"rockchip,system-power-controller");
-	if (pm_off && !pm_power_off) {
+	if (!rk808_i2c_client)
 		rk808_i2c_client = client;
-		pm_power_off = rk808->pm_pwroff_fn;
-	}
-
-	if (pm_off && !pm_power_off_prepare) {
-		if (!rk808_i2c_client)
-			rk808_i2c_client = client;
-		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
-	}
 
 	return 0;
 
@@ -667,20 +657,6 @@ static int rk808_remove(struct i2c_client *client)
 
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 
-	/**
-	 * pm_power_off may points to a function from another module.
-	 * Check if the pointer is set by us and only then overwrite it.
-	 */
-	if (rk808->pm_pwroff_fn && pm_power_off == rk808->pm_pwroff_fn)
-		pm_power_off = NULL;
-
-	/**
-	 * As above, check if the pointer is set by us before overwrite.
-	 */
-	if (rk808->pm_pwroff_prep_fn &&
-	    pm_power_off_prepare == rk808->pm_pwroff_prep_fn)
-		pm_power_off_prepare = NULL;
-
 	return 0;
 }
 
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index a59bf323f713..e07f6e61cd38 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -620,7 +620,5 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
-	void				(*pm_pwroff_fn)(void);
-	void				(*pm_pwroff_prep_fn)(void);
 };
 #endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.24.0
