From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 09/13] pinctrl: rockchip: do codingstyle
Date: Fri, 17 Jul 2020 09:53:23 +0800
Message-ID: <20200717015323.14323-1-jay.xu@rock-chips.com>
References: <20200717014908.13914-1-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717014908.13914-1-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add RK3228 definitions to separate from other SoCs.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 44f051af97c6..ec6a1a08f8b1 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -1918,6 +1918,9 @@ static void rk3288_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 }
 
 #define RK3228_PULL_OFFSET		0x100
+#define RK3228_PULL_BITS_PER_PIN	2
+#define RK3228_PULL_PINS_PER_REG	8
+#define RK3228_PULL_BANK_STRIDE		16
 
 static void rk3228_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 				    int pin_num, struct regmap **regmap,
@@ -1927,14 +1930,17 @@ static void rk3228_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	*regmap = info->regmap_base;
 	*reg = RK3228_PULL_OFFSET;
-	*reg += bank->bank_num * RK3188_PULL_BANK_STRIDE;
-	*reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
+	*reg += bank->bank_num * RK3228_PULL_BANK_STRIDE;
+	*reg += ((pin_num / RK3228_PULL_PINS_PER_REG) * 4);
 
-	*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
-	*bit *= RK3188_PULL_BITS_PER_PIN;
+	*bit = (pin_num % RK3228_PULL_PINS_PER_REG);
+	*bit *= RK3228_PULL_BITS_PER_PIN;
 }
 
 #define RK3228_DRV_GRF_OFFSET		0x200
+#define RK3228_DRV_BITS_PER_PIN		2
+#define RK3228_DRV_PINS_PER_REG		8
+#define RK3228_DRV_BANK_STRIDE		16
 
 static void rk3228_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 				    int pin_num, struct regmap **regmap,
@@ -1944,11 +1950,11 @@ static void rk3228_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	*regmap = info->regmap_base;
 	*reg = RK3228_DRV_GRF_OFFSET;
-	*reg += bank->bank_num * RK3288_DRV_BANK_STRIDE;
-	*reg += ((pin_num / RK3288_DRV_PINS_PER_REG) * 4);
+	*reg += bank->bank_num * RK3228_DRV_BANK_STRIDE;
+	*reg += ((pin_num / RK3228_DRV_PINS_PER_REG) * 4);
 
-	*bit = (pin_num % RK3288_DRV_PINS_PER_REG);
-	*bit *= RK3288_DRV_BITS_PER_PIN;
+	*bit = (pin_num % RK3228_DRV_PINS_PER_REG);
+	*bit *= RK3228_DRV_BITS_PER_PIN;
 }
 
 #define RK3308_PULL_OFFSET		0xa0
-- 
2.17.1
