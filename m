From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 04/13] pinctrl: rockchip: enable gpio pclk for rockchip_gpio_to_irq
Date: Fri, 17 Jul 2020 11:24:02 +0800
Message-ID: <20200717032411.17654-5-jay.xu@rock-chips.com>
References: <20200717032411.17654-1-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717032411.17654-1-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

There need to enable pclk_gpio when do irq_create_mapping, since it will
do access to gpio controller.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index ec509ef8bd8d..d34fada39227 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3155,7 +3155,9 @@ static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
 	if (!bank->domain)
 		return -ENXIO;
 
+	clk_enable(bank->clk);
 	virq = irq_create_mapping(bank->domain, offset);
+	clk_disable(bank->clk);
 
 	return (virq) ? : -ENXIO;
 }
-- 
2.17.1
