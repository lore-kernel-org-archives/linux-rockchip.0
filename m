From: Anand Moon <linux.amoon@gmail.com>
Subject: [RFCv1 3/8] mfd: rk808: use syscore for RK808 PMIC shutdown
Date: Fri,  6 Dec 2019 18:45:31 +0000
Message-ID: <20191206184536.2507-4-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Use common syscore_shutdown for RK808 PMIC to do
clean I2C shutdown, drop the unused pm_pwroff_fn
function pointers.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 713d989064ba..0a098fbdf112 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -467,11 +467,6 @@ static void rk808_update_bits(unsigned int reg, unsigned int mask,
 			"can't write to register 0x%x: %x!\n", reg, ret);
 }
 
-static void rk808_device_shutdown(void)
-{
-	rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
-}
-
 static void rk818_device_shutdown(void)
 {
 	rk808_update_bits(RK818_DEVCTRL_REG, DEV_OFF, DEV_OFF);
@@ -490,6 +485,10 @@ static void rk8xx_syscore_shutdown(void)
 					SLP_SD_MSK, SHUTDOWN_FUN);
 			rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
 			break;
+		case RK808_ID:
+			rk808_update_bits(RK808_DEVCTRL_REG,
+					DEV_OFF_RST, DEV_OFF_RST);
+			break;
 		case RK809_ID:
 		case RK817_ID:
 			rk808_update_bits(RK817_SYS_CFG(3),
@@ -576,7 +575,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
 		cells = rk808s;
 		nr_cells = ARRAY_SIZE(rk808s);
-		rk808->pm_pwroff_fn = rk808_device_shutdown;
 		break;
 	case RK818_ID:
 		rk808->regmap_cfg = &rk818_regmap_config;
-- 
2.24.0
