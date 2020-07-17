From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 05/13] pinctrl: rockchip: create irq mapping in gpio_to_irq
Date: Fri, 17 Jul 2020 09:52:19 +0800
Message-ID: <20200717015219.14047-1-jay.xu@rock-chips.com>
References: <20200717014908.13914-1-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717014908.13914-1-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Remove totally irq mappings create in probe, the gpio irq mapping will
be created when do
    gpio_to_irq ->
        rockchip_gpio_to_irq ->
            irq_create_mapping

This patch can speed up system boot on, also abandon many unused irq
mappings' create.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index d34fada39227..1be4627f3877 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3196,7 +3196,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 
 		irq = __ffs(pend);
 		pend &= ~BIT(irq);
-		virq = irq_linear_revmap(bank->domain, irq);
+		virq = irq_find_mapping(bank->domain, irq);
 
 		if (!virq) {
 			dev_err(bank->drvdata->dev, "unmapped irq %d\n", irq);
@@ -3375,7 +3375,7 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 	unsigned int clr = IRQ_NOREQUEST | IRQ_NOPROBE | IRQ_NOAUTOEN;
 	struct irq_chip_generic *gc;
 	int ret;
-	int i, j;
+	int i;
 
 	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
 		if (!bank->valid) {
@@ -3402,7 +3402,7 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 
 		ret = irq_alloc_domain_generic_chips(bank->domain, 32, 1,
 					 "rockchip_gpio_irq", handle_level_irq,
-					 clr, 0, IRQ_GC_INIT_MASK_CACHE);
+					 clr, 0, 0);
 		if (ret) {
 			dev_err(&pdev->dev, "could not alloc generic chips for bank %s\n",
 				bank->name);
@@ -3411,14 +3411,6 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 			continue;
 		}
 
-		/*
-		 * Linux assumes that all interrupts start out disabled/masked.
-		 * Our driver only uses the concept of masked and always keeps
-		 * things enabled, so for us that's all masked and all enabled.
-		 */
-		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
-		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
-
 		gc = irq_get_domain_generic_chip(bank->domain, 0);
 		gc->reg_base = bank->reg_base;
 		gc->private = bank;
@@ -3435,13 +3427,17 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 		gc->chip_types[0].chip.irq_set_type = rockchip_irq_set_type;
 		gc->wake_enabled = IRQ_MSK(bank->nr_pins);
 
+		/*
+		 * Linux assumes that all interrupts start out disabled/masked.
+		 * Our driver only uses the concept of masked and always keeps
+		 * things enabled, so for us that's all masked and all enabled.
+		 */
+		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
+		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
+		gc->mask_cache = 0xffffffff;
+
 		irq_set_chained_handler_and_data(bank->irq,
 						 rockchip_irq_demux, bank);
-
-		/* map the gpio irqs here, when the clock is still running */
-		for (j = 0 ; j < 32 ; j++)
-			irq_create_mapping(bank->domain, j);
-
 		clk_disable(bank->clk);
 	}
 
-- 
2.17.1
