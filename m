From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 11/13] pinctrl: rockchip: do codingstyle
Date: Fri, 17 Jul 2020 09:53:39 +0800
Message-ID: <20200717015339.14440-1-jay.xu@rock-chips.com>
References: <20200717014908.13914-1-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717014908.13914-1-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add RK3128 definitions to separate from other SoCs.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 04e7027ec8e1..3b74455dcdb2 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -1799,6 +1799,8 @@ static void rk2928_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 };
 
 #define RK3128_PULL_OFFSET	0x118
+#define RK3128_PULL_PINS_PER_REG	16
+#define RK3128_PULL_BANK_STRIDE		8
 
 static void rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 					 int pin_num, struct regmap **regmap,
@@ -1808,10 +1810,10 @@ static void rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	*regmap = info->regmap_base;
 	*reg = RK3128_PULL_OFFSET;
-	*reg += bank->bank_num * RK2928_PULL_BANK_STRIDE;
-	*reg += ((pin_num / RK2928_PULL_PINS_PER_REG) * 4);
+	*reg += bank->bank_num * RK3128_PULL_BANK_STRIDE;
+	*reg += ((pin_num / RK3128_PULL_PINS_PER_REG) * 4);
 
-	*bit = pin_num % RK2928_PULL_PINS_PER_REG;
+	*bit = pin_num % RK3128_PULL_PINS_PER_REG;
 }
 
 #define RK3188_PULL_OFFSET		0x164
-- 
2.17.1
