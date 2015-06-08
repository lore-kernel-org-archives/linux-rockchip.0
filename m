From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v5 3/3] ARM: rockchip: fix the SMP code style
Date: Mon,  8 Jun 2015 15:11:36 +0800
Message-ID: <1433747496-7642-4-git-send-email-wxt@rock-chips.com>
References: <1433747496-7642-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433747496-7642-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>, Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Use the below scripts to check:
scripts/checkpatch.pl -f --subject arch/arm/mach-rockchip/platsmp.c

Signed-off-by: Caesar Wang <wxt@rock-chips.com>

Changes in v5:
    - Add the changelog.

Changes in v4: None

Changes in v3: None

Changes in v2:
    - Use the checkpatch.pl -f --subjective to check.

---

 arch/arm/mach-rockchip/platsmp.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 5bc2a89..e538b13 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -103,7 +103,7 @@ static int pmu_set_power_domain(int pd, bool on)
 		ret = pmu_power_domain_is_on(pd);
 		if (ret < 0) {
 			pr_err("%s: could not read power domain state\n",
-				 __func__);
+			       __func__);
 			return ret;
 		}
 	}
@@ -133,7 +133,7 @@ static int __cpuinit rockchip_boot_secondary(unsigned int cpu,
 
 	if (cpu >= ncores) {
 		pr_err("%s: cpu %d outside maximum number of cpus %d\n",
-							__func__, cpu, ncores);
+		       __func__, cpu, ncores);
 		return -ENXIO;
 	}
 
@@ -152,7 +152,7 @@ static int __cpuinit rockchip_boot_secondary(unsigned int cpu,
 		 * */
 		mdelay(1);
 		writel(virt_to_phys(rockchip_secondary_startup),
-			sram_base_addr + 8);
+		       sram_base_addr + 8);
 		writel(0xDEADBEAF, sram_base_addr + 4);
 		dsb_sev();
 	}
@@ -331,7 +331,7 @@ static int rockchip_cpu_kill(unsigned int cpu)
 static void rockchip_cpu_die(unsigned int cpu)
 {
 	v7_exit_coherency_flush(louis);
-	while(1)
+	while (1)
 		cpu_do_idle();
 }
 #endif
@@ -344,4 +344,5 @@ static struct smp_operations rockchip_smp_ops __initdata = {
 	.cpu_die		= rockchip_cpu_die,
 #endif
 };
+
 CPU_METHOD_OF_DECLARE(rk3066_smp, "rockchip,rk3066-smp", &rockchip_smp_ops);
-- 
1.9.1
