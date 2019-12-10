From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 1/4] mfd: rk808: Set global instance unconditionally
Date: Tue, 10 Dec 2019 13:24:30 +0000
Message-ID: <f55d95c36ac21c4eeef38f5a17035574049a5f03.1575932654.git.robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, smoch@web.de, linux.amoon@gmail.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The RK817 syscore ops rely on the global rk808_i2c_client being set,
but are essentially independent of whether this driver has authority
over system power control - indeed, setting the SLEEP pin functionality
is most likely wanted when firmware is in charge of power via PSCI.
There's also no harm in setting it unconditionally anyway, so do it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 616e44e7ef98..f2f2f98552a0 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -666,6 +666,8 @@ static int rk808_probe(struct i2c_client *client,
 		}
 	}
 
+	rk808_i2c_client = client;
+
 	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
 			      cells, nr_cells, NULL, 0,
 			      regmap_irq_get_domain(rk808->irq_data));
@@ -675,7 +677,6 @@ static int rk808_probe(struct i2c_client *client,
 	}
 
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
-		rk808_i2c_client = client;
 		pm_power_off = rk808->pm_pwroff_fn;
 		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}
-- 
2.17.1
