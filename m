From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 2/2] rockchip: make sure timer7 is enabled on rk3288 platforms
Date: Sat, 25 Apr 2015 02:13:51 +0200
Message-ID: <2736589.ZeP1xonuvf@diego>
References: <1612786.HeTW0LsLmg@diego> <5378157.9QgVi1hAmY@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5378157.9QgVi1hAmY@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arnd-r2nGTMty4D4@public.gmane.org, olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

timer7 supplies the architected timer and thus as has to run when
the system clocksource and clockevents drivers are registered.

While it should be the responsibility of the bootloader to do this,
and there exists a fix in a community u-boot, all u-boot based systems
that actually shipped have the mentioned issue.

Therefore to not require every developer to update their u-boot, add a
snippet for this, enabling the timer early in the kernel.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm/mach-rockchip/rockchip.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index d360ec0..b6cf3b4 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -30,11 +30,30 @@
 #include "pm.h"
 
 #define RK3288_GRF_SOC_CON0 0x244
+#define RK3288_TIMER6_7_PHYS 0xff810000
 
 static void __init rockchip_timer_init(void)
 {
 	if (of_machine_is_compatible("rockchip,rk3288")) {
 		struct regmap *grf;
+		void __iomem *reg_base;
+
+		/*
+		 * Most/all uboot versions for rk3288 don't enable timer7
+		 * which is needed for the architected timer to work.
+		 * So make sure it is running during early boot.
+		 */
+		reg_base = ioremap(RK3288_TIMER6_7_PHYS, SZ_16K);
+		if (reg_base) {
+			writel(0, reg_base + 0x30);
+			writel(0xffffffff, reg_base + 0x20);
+			writel(0xffffffff, reg_base + 0x24);
+			writel(1, reg_base + 0x30);
+			dsb();
+			iounmap(reg_base);
+		} else {
+			pr_err("rockchip: could not map timer7 registers\n");
+		}
 
 		/*
 		 * Disable auto jtag/sdmmc switching that causes issues
-- 
2.1.4
