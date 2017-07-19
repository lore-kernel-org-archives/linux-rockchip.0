From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 001/102] ARM: rockchip: explicitly request exclusive reset control
Date: Wed, 19 Jul 2017 17:25:05 +0200
Message-ID: <20170719152646.25903-2-p.zabel@pengutronix.de>
References: <20170719152646.25903-1-p.zabel@pengutronix.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170719152646.25903-1-p.zabel@pengutronix.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Commit a53e35db70d1 ("reset: Ensure drivers are explicit when requesting
reset lines") started to transition the reset control request API calls
to explicitly state whether the driver needs exclusive or shared reset
control behavior. Convert all drivers requesting exclusive resets to the
explicit API call so the temporary transition helpers can be removed.

No functional changes.

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/mach-rockchip/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 3abafdbdd7f4a..420ba67652230 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -67,7 +67,7 @@ static struct reset_control *rockchip_get_core_reset(int cpu)
 	else
 		np = of_get_cpu_node(cpu, NULL);
 
-	return of_reset_control_get(np, NULL);
+	return of_reset_control_get_exclusive(np, NULL);
 }
 
 static int pmu_set_power_domain(int pd, bool on)
-- 
2.11.0
