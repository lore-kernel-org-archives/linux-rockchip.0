From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 12/13] pinctrl: rockchip: define common codes without special chip name
Date: Fri, 17 Jul 2020 11:27:29 +0800
Message-ID: <20200717032729.18435-1-jay.xu@rock-chips.com>
References: <20200717032411.17654-1-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717032411.17654-1-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Modify RK3399_DRV_3BITS_PER_PIN to ROCKCHIP_DRV_3BITS_PER_PIN, and
modify RK3288_DRV_BITS_PER_PIN to ROCKCHIP_DRV_BITS_PER_PIN.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 3b74455dcdb2..71a367896297 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -75,6 +75,9 @@ enum rockchip_pinctrl_type {
 #define IOMUX_WIDTH_3BIT	BIT(4)
 #define IOMUX_WIDTH_2BIT	BIT(5)
 
+#define ROCKCHIP_DRV_3BITS_PER_PIN	(3)
+#define ROCKCHIP_DRV_BITS_PER_PIN	(2)
+
 /**
  * @type: iomux variant using IOMUX_* constants
  * @offset: if initialized to -1 it will be autocalculated, by specifying
@@ -2074,7 +2077,6 @@ static void rk3368_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 
 #define RK3399_PULL_GRF_OFFSET		0xe040
 #define RK3399_PULL_PMU_OFFSET		0x40
-#define RK3399_DRV_3BITS_PER_PIN	3
 #define RK3399_PULL_BITS_PER_PIN	2
 #define RK3399_PULL_PINS_PER_REG	8
 #define RK3399_PULL_BANK_STRIDE		16
@@ -2154,7 +2156,7 @@ static int rockchip_get_drive_perpin(struct rockchip_pin_bank *bank,
 	switch (drv_type) {
 	case DRV_TYPE_IO_1V8_3V0_AUTO:
 	case DRV_TYPE_IO_3V3_ONLY:
-		rmask_bits = RK3399_DRV_3BITS_PER_PIN;
+		rmask_bits = ROCKCHIP_DRV_3BITS_PER_PIN;
 		switch (bit) {
 		case 0 ... 12:
 			/* regular case, nothing to do */
@@ -2197,7 +2199,7 @@ static int rockchip_get_drive_perpin(struct rockchip_pin_bank *bank,
 	case DRV_TYPE_IO_DEFAULT:
 	case DRV_TYPE_IO_1V8_OR_3V0:
 	case DRV_TYPE_IO_1V8_ONLY:
-		rmask_bits = RK3288_DRV_BITS_PER_PIN;
+		rmask_bits = ROCKCHIP_DRV_BITS_PER_PIN;
 		break;
 	default:
 		dev_err(info->dev, "unsupported pinctrl drive type: %d\n",
@@ -2251,7 +2253,7 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 	switch (drv_type) {
 	case DRV_TYPE_IO_1V8_3V0_AUTO:
 	case DRV_TYPE_IO_3V3_ONLY:
-		rmask_bits = RK3399_DRV_3BITS_PER_PIN;
+		rmask_bits = ROCKCHIP_DRV_3BITS_PER_PIN;
 		switch (bit) {
 		case 0 ... 12:
 			/* regular case, nothing to do */
@@ -2291,7 +2293,7 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 	case DRV_TYPE_IO_DEFAULT:
 	case DRV_TYPE_IO_1V8_OR_3V0:
 	case DRV_TYPE_IO_1V8_ONLY:
-		rmask_bits = RK3288_DRV_BITS_PER_PIN;
+		rmask_bits = ROCKCHIP_DRV_BITS_PER_PIN;
 		break;
 	default:
 		dev_err(info->dev, "unsupported pinctrl drive type: %d\n",
-- 
2.17.1
