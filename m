From: Pankaj Dubey <pankaj.dubey@samsung.com>
Subject: [PATCH 11/16] ARM: rockchip: use generic API for enabling SCU
Date: Mon, 14 Nov 2016 10:32:06 +0530
Message-ID: <1479099731-28108-12-git-send-email-pankaj.dubey@samsung.com>
References: <1479099731-28108-1-git-send-email-pankaj.dubey@samsung.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <1479099731-28108-1-git-send-email-pankaj.dubey@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: rmk+kernel@armlinux.org.uk, arnd@arndb.de, horms@verge.net.au, magnus.damm@gmail.com, geert+renesas@glider.be, vireshk@kernel.org, shiraz.linux.kernel@gmail.com, krzk@kernel.org, thomas.ab@samsung.com, Pankaj Dubey <pankaj.dubey@samsung.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Now as we have of_scu_enable which takes care of mapping
scu base from DT, lets use it.

CC: Heiko Stuebner <heiko@sntech.de>
CC: linux-rockchip@lists.infradead.org
Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
---
 arch/arm/mach-rockchip/platsmp.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 4d827a0..31169cf 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -282,21 +282,15 @@ static void __init rockchip_smp_prepare_cpus(unsigned int max_cpus)
 	if (has_pmu && rockchip_smp_prepare_pmu())
 		return;
 
-	if (read_cpuid_part() == ARM_CPU_PART_CORTEX_A9) {
+	if (scu_a9_has_base()) {
 		if (rockchip_smp_prepare_sram(node))
 			return;
 
 		/* enable the SCU power domain */
 		pmu_set_power_domain(PMU_PWRDN_SCU, true);
 
-		node = of_find_compatible_node(NULL, NULL, "arm,cortex-a9-scu");
-		if (!node) {
-			pr_err("%s: missing scu\n", __func__);
-			return;
-		}
-
-		scu_base_addr = of_iomap(node, 0);
-		if (!scu_base_addr) {
+		scu_base_addr = of_scu_get_base();
+		if (IS_ERR(scu_base_addr)) {
 			pr_err("%s: could not map scu registers\n", __func__);
 			return;
 		}
-- 
2.7.4
