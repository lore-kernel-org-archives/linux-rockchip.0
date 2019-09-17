From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/4] mfd: rk808: set rk817 interrupt polarity to low
Date: Tue, 17 Sep 2019 10:12:55 +0200
Message-ID: <20190917081256.24919-3-heiko@sntech.de>
References: <20190917081256.24919-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190917081256.24919-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, d.schultz@phytec.de, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, tony.xie@rock-chips.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

All other rk8xx operate with the polarity on low and even the old
submitted devicetree snippet for the px30-evb declared the irq as low.
So bring the rk817 preset in line with this, as there is really no
reason for it to be the only with with a high polarity.

The rk809/rk817 hasn't been added to any devicetrees so far, so this
won't break anything.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/rk808.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 966841744ee6..c0e5e921766d 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -207,7 +207,7 @@ static const struct rk808_reg_data rk808_pre_init_reg[] = {
 
 static const struct rk808_reg_data rk817_pre_init_reg[] = {
 	{RK817_RTC_CTRL_REG, RTC_STOP, RTC_STOP},
-	{RK817_GPIO_INT_CFG, RK817_INT_POL_MSK, RK817_INT_POL_H},
+	{RK817_GPIO_INT_CFG, RK817_INT_POL_MSK, RK817_INT_POL_L},
 	{RK817_SYS_CFG(1), RK817_HOTDIE_TEMP_MSK | RK817_TSD_TEMP_MSK,
 					   RK817_HOTDIE_105 | RK817_TSD_140},
 };
-- 
2.20.1
