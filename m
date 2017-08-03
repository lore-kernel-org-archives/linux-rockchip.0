From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] phy: rockchip-typec: remove unused dfp variable
Date: Thu,  3 Aug 2017 09:26:19 +0800
Message-ID: <1501723579-127373-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

In order to silent the 'W=1' compile warning:

drivers/phy/rockchip/phy-rockchip-typec.c: In function 'tcphy_get_mode':
drivers/phy/rockchip/phy-rockchip-typec.c:625:7: warning: variable 'dfp'
set but not used [-Wunused-but-set-variable]

Cc: Chris Zhong <zyw@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-typec.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 7cfb0f8..4d2c57f 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -622,12 +622,11 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
 	struct extcon_dev *edev = tcphy->extcon;
 	union extcon_property_value property;
 	unsigned int id;
-	bool dfp, ufp, dp;
+	bool ufp, dp;
 	u8 mode;
 	int ret;
 
 	ufp = extcon_get_state(edev, EXTCON_USB);
-	dfp = extcon_get_state(edev, EXTCON_USB_HOST);
 	dp = extcon_get_state(edev, EXTCON_DISP_DP);
 
 	mode = MODE_DFP_USB;
-- 
1.9.1
