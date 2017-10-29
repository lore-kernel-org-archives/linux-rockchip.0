From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH 10/17] clocksource/drivers/rockchip: pr_err() strings should end with newlines
Date: Sun, 29 Oct 2017 22:20:27 +0100
Message-ID: <1509312035-17368-10-git-send-email-daniel.lezcano@linaro.org>
References: <c4d8b83b-b884-415b-8c92-b195de1dae7f@linaro.org>
 <1509312035-17368-1-git-send-email-daniel.lezcano@linaro.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1509312035-17368-1-git-send-email-daniel.lezcano@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: tglx@linutronix.de, daniel.lezcano@linaro.org
Cc: linux-kernel@vger.kernel.org, Arvind Yadav <arvind.yadav.cs@gmail.com>, Heiko Stuebner <heiko@sntech.de>, "moderated list:ARM/Rockchip SoC
        support" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

From: Arvind Yadav <arvind.yadav.cs@gmail.com>

pr_err() messages should end with a new-line to avoid other messages being
concatenated.

Signed-off-by: Arvind Yadav <arvind.yadav.cs@gmail.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/rockchip_timer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/rockchip_timer.c b/drivers/clocksource/rockchip_timer.c
index c27f4c8..33f370d 100644
--- a/drivers/clocksource/rockchip_timer.c
+++ b/drivers/clocksource/rockchip_timer.c
@@ -274,7 +274,7 @@ static int __init rk_clksrc_init(struct device_node *np)
 		TIMER_NAME, rk_clksrc->freq, 250, 32,
 		clocksource_mmio_readl_down);
 	if (ret) {
-		pr_err("Failed to register clocksource");
+		pr_err("Failed to register clocksource\n");
 		goto out_clocksource;
 	}
 
-- 
2.7.4
