From: Yizhuo <yzhai003@ucr.edu>
Subject: [PATCH] phy: rockchip-typec: Variable "val" of function rockchip_usb3_phy_power_on() could be uninitialized
Date: Tue,  5 Feb 2019 18:18:10 -0800
Message-ID: <20190206021810.21596-1-yzhai003@ucr.edu>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
Cc: csong@cs.ucr.edu, zhiyunq@cs.ucr.edu, Yizhuo <yzhai003@ucr.edu>, Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

In function rockchip_usb3_phy_power_on(), local variable
"val" could be uninitialized if function regmap_read()
returns -EINVAL. However, this value is directly used in
later context. This is potentially unsafe.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index a958c9bced01..b1e24418cb2d 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -716,7 +716,10 @@ static int rockchip_usb3_phy_power_on(struct phy *phy)
 
 	/* wait TCPHY for pipe ready */
 	for (timeout = 0; timeout < 100; timeout++) {
-		regmap_read(tcphy->grf_regs, reg->offset, &val);
+		ret = regmap_read(tcphy->grf_regs, reg->offset, &val);
+		if (ret)
+			goto unlock_ret;
+
 		if (!(val & BIT(reg->enable_bit))) {
 			tcphy->mode |= new_mode & (MODE_DFP_USB | MODE_UFP_USB);
 			goto unlock_ret;
-- 
2.17.1
