From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 06/13] pinctrl: rockchip: do codingstyle
Date: Fri, 17 Jul 2020 09:52:43 +0800
Message-ID: <20200717015243.14149-1-jay.xu@rock-chips.com>
References: <20200717014908.13914-1-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717014908.13914-1-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add RK3399 definitions to separate from other SoCs.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 1be4627f3877..71335ed003b3 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2050,6 +2050,9 @@ static void rk3368_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RK3399_PULL_GRF_OFFSET		0xe040
 #define RK3399_PULL_PMU_OFFSET		0x40
 #define RK3399_DRV_3BITS_PER_PIN	3
+#define RK3399_PULL_BITS_PER_PIN	2
+#define RK3399_PULL_PINS_PER_REG	8
+#define RK3399_PULL_BANK_STRIDE		16
 
 static void rk3399_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 					 int pin_num, struct regmap **regmap,
@@ -2062,22 +2065,22 @@ static void rk3399_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 		*regmap = info->regmap_pmu;
 		*reg = RK3399_PULL_PMU_OFFSET;
 
-		*reg += bank->bank_num * RK3188_PULL_BANK_STRIDE;
+		*reg += bank->bank_num * RK3399_PULL_BANK_STRIDE;
 
-		*reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
-		*bit = pin_num % RK3188_PULL_PINS_PER_REG;
-		*bit *= RK3188_PULL_BITS_PER_PIN;
+		*reg += ((pin_num / RK3399_PULL_PINS_PER_REG) * 4);
+		*bit = pin_num % RK3399_PULL_PINS_PER_REG;
+		*bit *= RK3399_PULL_BITS_PER_PIN;
 	} else {
 		*regmap = info->regmap_base;
 		*reg = RK3399_PULL_GRF_OFFSET;
 
 		/* correct the offset, as we're starting with the 3rd bank */
 		*reg -= 0x20;
-		*reg += bank->bank_num * RK3188_PULL_BANK_STRIDE;
-		*reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
+		*reg += bank->bank_num * RK3399_PULL_BANK_STRIDE;
+		*reg += ((pin_num / RK3399_PULL_PINS_PER_REG) * 4);
 
-		*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
-		*bit *= RK3188_PULL_BITS_PER_PIN;
+		*bit = (pin_num % RK3399_PULL_PINS_PER_REG);
+		*bit *= RK3399_PULL_BITS_PER_PIN;
 	}
 }
 
-- 
2.17.1
