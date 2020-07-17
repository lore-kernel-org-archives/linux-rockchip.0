From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 10/13] pinctrl: rockchip: do codingstyle
Date: Fri, 17 Jul 2020 09:53:32 +0800
Message-ID: <20200717015332.14383-1-jay.xu@rock-chips.com>
References: <20200717014908.13914-1-jay.xu@rock-chips.com>
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200717014908.13914-1-jay.xu@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add RK3288 definitons to separate from other SoCs.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index ec6a1a08f8b1..04e7027ec8e1 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -1855,6 +1855,11 @@ static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 }
 
 #define RK3288_PULL_OFFSET		0x140
+#define RK3288_PULL_PMU_OFFSET		0x64
+#define RK3288_PULL_BITS_PER_PIN	2
+#define RK3288_PULL_PINS_PER_REG	8
+#define RK3288_PULL_BANK_STRIDE		16
+
 static void rk3288_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 				    int pin_num, struct regmap **regmap,
 				    int *reg, u8 *bit)
@@ -1864,22 +1869,22 @@ static void rk3288_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 	/* The first 24 pins of the first bank are located in PMU */
 	if (bank->bank_num == 0) {
 		*regmap = info->regmap_pmu;
-		*reg = RK3188_PULL_PMU_OFFSET;
+		*reg = RK3288_PULL_PMU_OFFSET;
 
-		*reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
-		*bit = pin_num % RK3188_PULL_PINS_PER_REG;
-		*bit *= RK3188_PULL_BITS_PER_PIN;
+		*reg += ((pin_num / RK3288_PULL_PINS_PER_REG) * 4);
+		*bit = pin_num % RK3288_PULL_PINS_PER_REG;
+		*bit *= RK3288_PULL_BITS_PER_PIN;
 	} else {
 		*regmap = info->regmap_base;
 		*reg = RK3288_PULL_OFFSET;
 
 		/* correct the offset, as we're starting with the 2nd bank */
 		*reg -= 0x10;
-		*reg += bank->bank_num * RK3188_PULL_BANK_STRIDE;
-		*reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
+		*reg += bank->bank_num * RK3288_PULL_BANK_STRIDE;
+		*reg += ((pin_num / RK3288_PULL_PINS_PER_REG) * 4);
 
-		*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
-		*bit *= RK3188_PULL_BITS_PER_PIN;
+		*bit = (pin_num % RK3288_PULL_PINS_PER_REG);
+		*bit *= RK3288_PULL_BITS_PER_PIN;
 	}
 }
 
-- 
2.17.1
