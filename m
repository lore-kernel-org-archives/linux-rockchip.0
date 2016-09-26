From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH] power-domain: rockchip: fix up the PMU_GPU_PWRDW/UP_CNT for RK3399
Date: Mon, 26 Sep 2016 15:25:30 +0800
Message-ID: <1474874730-12802-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, wxt@rock-chips.com
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

According to the advice of the IC,
setting the PMU_GPU_PWRDW/PWRUP_CNT regs 6 cycel(250ns) for RK3399 SOC.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/soc/rockchip/pm_domains.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 7acd1517dd37..247dd6f6994a 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -722,11 +722,11 @@ static const struct rockchip_pmu_info rk3399_pmu = {
 	.idle_offset = 0x64,
 	.ack_offset = 0x68,
 
-	.core_pwrcnt_offset = 0x9c,
-	.gpu_pwrcnt_offset = 0xa4,
+	.core_pwrcnt_offset = 0xac,
+	.gpu_pwrcnt_offset = 0xac,
 
-	.core_power_transition_time = 24,
-	.gpu_power_transition_time = 24,
+	.core_power_transition_time = 6, /* 0.25us */
+	.gpu_power_transition_time = 6, /* 0.25us */
 
 	.num_domains = ARRAY_SIZE(rk3399_pm_domains),
 	.domain_info = rk3399_pm_domains,
-- 
1.9.1
