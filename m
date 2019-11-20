From: Amit Kucheria <amit.kucheria@linaro.org>
Subject: [PATCH v2 07/11] thermal: rockchip: Appease the kernel-doc deity
Date: Wed, 20 Nov 2019 21:15:16 +0530
Message-ID: <c3cbdb0619fec602668ba7ae703ba49d67e30b33.1574242756.git.amit.kucheria@linaro.org>
References: <cover.1574242756.git.amit.kucheria@linaro.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1574242756.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1574242756.git.amit.kucheria@linaro.org>
References: <cover.1574242756.git.amit.kucheria@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, edubezval@gmail.com, Amit Daniel Kachhap <amit.kachhap@gmail.com>, Amit Kucheria <amit.kucheria@verdurent.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Guillaume La Roque <glaroque@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Javi Merino <javi.merino@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, Jun Nie <jun.nie@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Shawn Guo <shawnguo@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Replace a comment starting with /** by simply /* to avoid having it
interpreted as a kernel-doc comment. Describe missing function
parameters where needed.

Fixes up the following warnings when compiled with make W=1:

linux.git/drivers/thermal/rockchip_thermal.c:27: warning: cannot
understand function prototype: 'enum tshut_mode '
linux.git/drivers/thermal/rockchip_thermal.c:37: warning: cannot
understand function prototype: 'enum tshut_polarity '
linux.git/drivers/thermal/rockchip_thermal.c:46: warning: cannot
understand function prototype: 'enum sensor_id '
linux.git/drivers/thermal/rockchip_thermal.c:56: warning: cannot
understand function prototype: 'enum adc_sort_mode '
linux.git/drivers/thermal/rockchip_thermal.c:123: warning: Function
parameter or member 'chn_id' not described in 'rockchip_tsadc_chip'
linux.git/drivers/thermal/rockchip_thermal.c:123: warning: Function
parameter or member 'control' not described in 'rockchip_tsadc_chip'
linux.git/drivers/thermal/rockchip_thermal.c:167: warning: Function
parameter or member 'sensors' not described in 'rockchip_thermal_data'
linux.git/drivers/thermal/rockchip_thermal.c:608: warning: Function
parameter or member 'grf' not described in 'rk_tsadcv2_initialize'
linux.git/drivers/thermal/rockchip_thermal.c:608: warning: Function
parameter or member 'regs' not described in 'rk_tsadcv2_initialize'
linux.git/drivers/thermal/rockchip_thermal.c:608: warning: Function
parameter or member 'tshut_polarity' not described in
'rk_tsadcv2_initialize'
linux.git/drivers/thermal/rockchip_thermal.c:644: warning: Function
parameter or member 'grf' not described in 'rk_tsadcv3_initialize'
linux.git/drivers/thermal/rockchip_thermal.c:644: warning: Function
parameter or member 'regs' not described in 'rk_tsadcv3_initialize'
linux.git/drivers/thermal/rockchip_thermal.c:644: warning: Function
parameter or member 'tshut_polarity' not described in
'rk_tsadcv3_initialize'
linux.git/drivers/thermal/rockchip_thermal.c:732: warning: Function
parameter or member 'regs' not described in 'rk_tsadcv3_control'
linux.git/drivers/thermal/rockchip_thermal.c:732: warning: Function
parameter or member 'enable' not described in 'rk_tsadcv3_control'
linux.git/drivers/thermal/rockchip_thermal.c:1211: warning: Function
parameter or member 'reset' not described in
'rockchip_thermal_reset_controller'

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/thermal/rockchip_thermal.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 343c2f5c5a25..9ed8085bb792 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -19,7 +19,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/pinctrl/consumer.h>
 
-/**
+/*
  * If the temperature over a period of time High,
  * the resulting TSHUT gave CRU module,let it reset the entire chip,
  * or via GPIO give PMIC.
@@ -29,7 +29,7 @@ enum tshut_mode {
 	TSHUT_MODE_GPIO,
 };
 
-/**
+/*
  * The system Temperature Sensors tshut(tshut) polarity
  * the bit 8 is tshut polarity.
  * 0: low active, 1: high active
@@ -39,7 +39,7 @@ enum tshut_polarity {
 	TSHUT_HIGH_ACTIVE,
 };
 
-/**
+/*
  * The system has two Temperature Sensors.
  * sensor0 is for CPU, and sensor1 is for GPU.
  */
@@ -48,7 +48,7 @@ enum sensor_id {
 	SENSOR_GPU,
 };
 
-/**
+/*
  * The conversion table has the adc value and temperature.
  * ADC_DECREMENT: the adc value is of diminishing.(e.g. rk3288_code_table)
  * ADC_INCREMENT: the adc value is incremental.(e.g. rk3368_code_table)
@@ -80,13 +80,14 @@ struct chip_tsadc_table {
 
 /**
  * struct rockchip_tsadc_chip - hold the private data of tsadc chip
- * @chn_id[SOC_MAX_SENSORS]: the sensor id of chip correspond to the channel
+ * @chn_id: array of sensor ids of chip corresponding to the channel
  * @chn_num: the channel number of tsadc chip
  * @tshut_temp: the hardware-controlled shutdown temperature value
  * @tshut_mode: the hardware-controlled shutdown mode (0:CRU 1:GPIO)
  * @tshut_polarity: the hardware-controlled active polarity (0:LOW 1:HIGH)
  * @initialize: SoC special initialize tsadc controller method
  * @irq_ack: clear the interrupt
+ * @control: enable/disable method for the tsadc controller
  * @get_temp: get the temperature
  * @set_alarm_temp: set the high temperature interrupt
  * @set_tshut_temp: set the hardware-controlled shutdown temperature
@@ -139,7 +140,7 @@ struct rockchip_thermal_sensor {
  * @chip: pointer to the platform/configuration data
  * @pdev: platform device of thermal
  * @reset: the reset controller of tsadc
- * @sensors[SOC_MAX_SENSORS]: the thermal sensor
+ * @sensors: array of thermal sensors
  * @clk: the controller clock is divided by the exteral 24MHz
  * @pclk: the advanced peripherals bus clock
  * @grf: the general register file will be used to do static set by software
@@ -590,6 +591,9 @@ static int rk_tsadcv2_code_to_temp(const struct chip_tsadc_table *table,
 
 /**
  * rk_tsadcv2_initialize - initialize TASDC Controller.
+ * @grf: the general register file will be used to do static set by software
+ * @regs: the base address of tsadc controller
+ * @tshut_polarity: the hardware-controlled active polarity (0:LOW 1:HIGH)
  *
  * (1) Set TSADC_V2_AUTO_PERIOD:
  *     Configure the interleave between every two accessing of
@@ -624,6 +628,9 @@ static void rk_tsadcv2_initialize(struct regmap *grf, void __iomem *regs,
 
 /**
  * rk_tsadcv3_initialize - initialize TASDC Controller.
+ * @grf: the general register file will be used to do static set by software
+ * @regs: the base address of tsadc controller
+ * @tshut_polarity: the hardware-controlled active polarity (0:LOW 1:HIGH)
  *
  * (1) The tsadc control power sequence.
  *
@@ -723,6 +730,8 @@ static void rk_tsadcv2_control(void __iomem *regs, bool enable)
 
 /**
  * rk_tsadcv3_control - the tsadc controller is enabled or disabled.
+ * @regs: the base address of tsadc controller
+ * @enable: boolean flag to enable the controller
  *
  * NOTE: TSADC controller works at auto mode, and some SoCs need set the
  * tsadc_q_sel bit on TSADCV2_AUTO_CON[1]. The (1024 - tsadc_q) as output
@@ -1206,6 +1215,7 @@ rockchip_thermal_register_sensor(struct platform_device *pdev,
 
 /**
  * Reset TSADC Controller, reset all tsadc registers.
+ * @reset: the reset controller of tsadc
  */
 static void rockchip_thermal_reset_controller(struct reset_control *reset)
 {
-- 
2.20.1
