From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY power on
Date: Tue,  7 May 2019 16:48:56 -0700
Message-ID: <20190507234857.81414-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
Cc: hl@rock-chips.com, linux-rockchip@lists.infradead.org, dbasehore@chromium.org, mka@chromium.org, ryandcase@chromium.org, groeck@chromium.org, Elaine Zhang <zhangqing@rock-chips.com>, wxt@rock-chips.com, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

While testing a newer kernel on rk3288-based Chromebooks I found that
the power draw in suspend was higher on newer kernels compared to the
downstream Chrome OS 3.14 kernel.  Specifically the power of an
rk3288-veyron-jerry board that I tested (as measured by the smart
battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.

I tracked the regression down to the fact that the "DP PHY" driver
didn't exist in our downstream 3.14.  We relied on the eDP driver to
turn on the clock and relied on the fact that the power for the PHY
was default turned on.

Specifically the thing that caused the power regression was turning
the eDP PHY _off_.  Presumably there is some sort of power leak in the
system and when we turn the PHY off something is leaching power from
something else and causing excessive power draw.

Doing a search through device trees shows that this PHY is only ever
used on rk3288.  Presumably this power leak is present on all
rk3288-SoCs running upstream Linux so let's just whack the driver to
make sure we never turn off power.  We'll still leave the parts that
turn _on_ the power and grab the clock, though.

NOTES:
A) If someone can identify what this power leak is and fix it in some
   other way we can revert this patch.
B) If someone can show that their particular board doesn't have this
   power leak (maybe they have rails hooked up differently?) we can
   perhaps add a device tree property indicating that for some boards
   it's OK to turn this rail off.  I don't want to add this property
   until I know of a board that needs it.

Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
As far as I know Yakir (the original author) is no longer at Rockchip.
I've added a few other Rockchip people and hopefully one of them can
help direct even if they're not directly responsible.

 drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-dp.c b/drivers/phy/rockchip/phy-rockchip-dp.c
index 8b267a746576..10bbcd69d6f5 100644
--- a/drivers/phy/rockchip/phy-rockchip-dp.c
+++ b/drivers/phy/rockchip/phy-rockchip-dp.c
@@ -35,7 +35,7 @@ struct rockchip_dp_phy {
 static int rockchip_set_phy_state(struct phy *phy, bool enable)
 {
 	struct rockchip_dp_phy *dp = phy_get_drvdata(phy);
-	int ret;
+	int ret = 0;
 
 	if (enable) {
 		ret = regmap_write(dp->grf, GRF_SOC_CON12,
@@ -50,9 +50,12 @@ static int rockchip_set_phy_state(struct phy *phy, bool enable)
 	} else {
 		clk_disable_unprepare(dp->phy_24m);
 
-		ret = regmap_write(dp->grf, GRF_SOC_CON12,
-				   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
-				   GRF_EDP_PHY_SIDDQ_OFF);
+		/*
+		 * Intentionally don't turn SIDDQ off when disabling
+		 * the PHY.  There is a power leak on rk3288 and
+		 * suspend power _increases_ by 5 mA if you turn this
+		 * off.
+		 */
 	}
 
 	return ret;
-- 
2.21.0.1020.gf2820cf01a-goog
