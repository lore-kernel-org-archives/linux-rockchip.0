From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] thermal: rockchip: disable thermal->clk in err case
Date: Mon, 15 Feb 2016 10:27:22 +0800
Message-ID: <1455503242-19907-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pm-owner@vger.kernel.org>
Sender: linux-pm-owner@vger.kernel.org
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>
Cc: Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Disable thermal->clk when enabling pclk fails in
resume routine.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/thermal/rockchip_thermal.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 9787e8a..b54f6db 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -656,8 +656,10 @@ static int __maybe_unused rockchip_thermal_resume(struct device *dev)
 		return error;
 
 	error = clk_enable(thermal->pclk);
-	if (error)
+	if (error) {
+		clk_disable(thermal->clk);
 		return error;
+	}
 
 	rockchip_thermal_reset_controller(thermal->reset);
 
-- 
2.3.7


