From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 2/3] thermal: rockchip: Support the RK3308 SoC in thermal
 driver
Date: Tue,  5 Nov 2019 11:17:25 +0800
Message-ID: <1572923846-23310-3-git-send-email-zhangqing@rock-chips.com>
References: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, amit.kucheria@verdurent.com, Elaine Zhang <zhangqing@rock-chips.com>, huangtao@rock-chips.com, linux-pm@vger.kernel.org, xxx@rock-chips.com, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, xf@rock-chips.com, edubezval@gmail.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, andy.yan@rock-chips.com, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

RK3308 SOC has two Temperature Sensors for CPU and GPU.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/thermal/rockchip_thermal.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 343c2f5c5a25..c50ff6314389 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -918,6 +918,30 @@ static void rk_tsadcv2_tshut_mode(int chn, void __iomem *regs,
 	},
 };
 
+static const struct rockchip_tsadc_chip rk3308_tsadc_data = {
+	.chn_id[SENSOR_CPU] = 0, /* cpu sensor is channel 0 */
+	.chn_id[SENSOR_GPU] = 1, /* gpu sensor is channel 1 */
+	.chn_num = 2, /* 2 channels for tsadc */
+
+	.tshut_mode = TSHUT_MODE_CRU, /* default TSHUT via CRU */
+	.tshut_temp = 95000,
+
+	.initialize = rk_tsadcv4_initialize,
+	.irq_ack = rk_tsadcv3_irq_ack,
+	.control = rk_tsadcv3_control,
+	.get_temp = rk_tsadcv2_get_temp,
+	.set_alarm_temp = rk_tsadcv2_alarm_temp,
+	.set_tshut_temp = rk_tsadcv2_tshut_temp,
+	.set_tshut_mode = rk_tsadcv2_tshut_mode,
+
+	.table = {
+		.id = rk3328_code_table,
+		.length = ARRAY_SIZE(rk3328_code_table),
+		.data_mask = TSADCV2_DATA_MASK,
+		.mode = ADC_INCREMENT,
+	},
+};
+
 static const struct rockchip_tsadc_chip rk3328_tsadc_data = {
 	.chn_id[SENSOR_CPU] = 0, /* cpu sensor is channel 0 */
 	.chn_num = 1, /* one channels for tsadc */
@@ -1033,6 +1057,10 @@ static void rk_tsadcv2_tshut_mode(int chn, void __iomem *regs,
 		.data = (void *)&rk3288_tsadc_data,
 	},
 	{
+		.compatible = "rockchip,rk3308-tsadc",
+		.data = (void *)&rk3308_tsadc_data,
+	},
+	{
 		.compatible = "rockchip,rk3328-tsadc",
 		.data = (void *)&rk3328_tsadc_data,
 	},
-- 
1.9.1
