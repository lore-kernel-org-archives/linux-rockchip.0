From: Wen Yang <wen.yang99@zte.com.cn>
Subject: [PATCH v3] ARM: rockchip: fix a leaked reference by adding missing of_node_put
Date: Fri, 26 Apr 2019 15:08:08 +0800
Message-ID: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: wang.yi59@zte.com.cn, Wen Yang <wen.yang99@zte.com.cn>, Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The call to of_get_next_child returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
./arch/arm/mach-rockchip/pm.c:269:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 259, but without a corresponding object release within this function.
./arch/arm/mach-rockchip/pm.c:275:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 259, but without a corresponding object release within this function
./arch/arm/mach-rockchip/platsmp.c:281:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
./arch/arm/mach-rockchip/platsmp.c:285:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
./arch/arm/mach-rockchip/platsmp.c:289:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
./arch/arm/mach-rockchip/platsmp.c:303:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 294, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Suggested-by: Heiko Stuebner <heiko@sntech.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
v2: add a missing space between "adding" and "missing"
v3: just add a regular of_node_put 

 arch/arm/mach-rockchip/platsmp.c | 12 ++++++++++--
 arch/arm/mach-rockchip/pm.c      |  2 ++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 4675d92..afd1514 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -278,19 +278,25 @@ static void __init rockchip_smp_prepare_cpus(unsigned int max_cpus)
 	sram_base_addr = of_iomap(node, 0);
 	if (!sram_base_addr) {
 		pr_err("%s: could not map sram registers\n", __func__);
+		of_node_put(node);
 		return;
 	}
 
-	if (has_pmu && rockchip_smp_prepare_pmu())
+	if (has_pmu && rockchip_smp_prepare_pmu()) {
+		of_node_put(node);
 		return;
+	}
 
 	if (read_cpuid_part() == ARM_CPU_PART_CORTEX_A9) {
-		if (rockchip_smp_prepare_sram(node))
+		if (rockchip_smp_prepare_sram(node)) {
+			of_node_put(node);
 			return;
+		}
 
 		/* enable the SCU power domain */
 		pmu_set_power_domain(PMU_PWRDN_SCU, true);
 
+		of_node_put(node);
 		node = of_find_compatible_node(NULL, NULL, "arm,cortex-a9-scu");
 		if (!node) {
 			pr_err("%s: missing scu\n", __func__);
@@ -300,6 +306,7 @@ static void __init rockchip_smp_prepare_cpus(unsigned int max_cpus)
 		scu_base_addr = of_iomap(node, 0);
 		if (!scu_base_addr) {
 			pr_err("%s: could not map scu registers\n", __func__);
+			of_node_put(node);
 			return;
 		}
 
@@ -318,6 +325,7 @@ static void __init rockchip_smp_prepare_cpus(unsigned int max_cpus)
 		asm ("mrc p15, 1, %0, c9, c0, 2\n" : "=r" (l2ctlr));
 		ncores = ((l2ctlr >> 24) & 0x3) + 1;
 	}
+	of_node_put(node);
 
 	/* Make sure that all cores except the first are really off */
 	for (i = 1; i < ncores; i++)
diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
index 065b09e..4a4f914 100644
--- a/arch/arm/mach-rockchip/pm.c
+++ b/arch/arm/mach-rockchip/pm.c
@@ -266,12 +266,14 @@ static int __init rk3288_suspend_init(struct device_node *np)
 	rk3288_bootram_base = of_iomap(sram_np, 0);
 	if (!rk3288_bootram_base) {
 		pr_err("%s: could not map bootram base\n", __func__);
+		of_node_put(sram_np);
 		return -ENOMEM;
 	}
 
 	ret = of_address_to_resource(sram_np, 0, &res);
 	if (ret) {
 		pr_err("%s: could not get bootram phy addr\n", __func__);
+		of_node_put(sram_np);
 		return ret;
 	}
 	rk3288_bootram_phy = res.start;
-- 
2.9.5
