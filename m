From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2] ARM: rockchip: Fix use of plain integer as NULL pointer
Date: Thu, 17 Mar 2016 13:43:11 +0000
Message-ID: <1458222191-26023-1-git-send-email-peter.griffin@linaro.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de
Cc: peter.griffin@linaro.org, patches@linaro.org, lee.jones@linaro.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This fixes the following sparse build warning:

     mach-rockchip/platsmp.c:68:43: Using plain integer as NULL pointer

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm/mach-rockchip/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index d42a07e..4d827a0 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -65,7 +65,7 @@ static struct reset_control *rockchip_get_core_reset(int cpu)
 	if (dev)
 		np = dev->of_node;
 	else
-		np = of_get_cpu_node(cpu, 0);
+		np = of_get_cpu_node(cpu, NULL);
 
 	return of_reset_control_get(np, NULL);
 }
-- 
1.9.1
