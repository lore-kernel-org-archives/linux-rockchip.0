From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 1/3] ARM: rockchip: fix the CPU soft reset
Date: Fri,  5 Jun 2015 19:39:20 +0800
Message-ID: <1433504362-7549-2-git-send-email-wxt@rock-chips.com>
References: <1433504362-7549-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1433504362-7549-1-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Russell King <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

We need different orderings when turning a core on and turning a core
off.  In one case we need to assert reset before turning power off.
In ther other case we need to turn power on and the deassert reset.

In general, the correct flow is:

CPU off:
    reset_control_assert
    regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), BIT(pd))
    wait_for_power_domain_to_turn_off
CPU on:
    regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), 0)
    wait_for_power_domain_to_turn_on
    reset_control_deassert

This is needed for stressing CPU up/down, as per:

    cd /sys/devices/system/cpu/
    for i in $(seq 1000); do
      echo "================= $i ============"
        for j in $(seq 100); do
            while [[ "$(cat cpu1/online)$(cat cpu2/online)$(cat cpu3/online)" != "000" ]]; do
                echo 0 > cpu1/online
                echo 0 > cpu2/online
                echo 0 > cpu3/online
            done
            while [[ "$(cat cpu1/online)$(cat cpu2/online)$(cat cpu3/online)" != "111" ]]; do
                echo 1 > cpu1/online
                echo 1 > cpu2/online
                echo 1 > cpu3/online
            done
        done
    done

The following is reproducile log:
    [34466.186812] PM: noirq suspend of devices complete after 0.669
    msecs
    [34466.186824] Disabling non-boot CPUs ...
    [34466.187509] CPU1: shutdown
    [34466.188672] CPU2: shutdown
    [34473.736627] Kernel panic - not syncing: Watchdog detected hard
    LOCKUP on cpu 0
    .......

Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 arch/arm/mach-rockchip/platsmp.c | 46 +++++++++++++++++++++++++++-------------
 1 file changed, 31 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 5b4ca3c..1d4659e 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -88,28 +88,44 @@ static int pmu_set_power_domain(int pd, bool on)
 			return PTR_ERR(rstc);
 		}
 
-		if (on)
-			reset_control_deassert(rstc);
-		else
+		if (!on)
 			reset_control_assert(rstc);
 
-		reset_control_put(rstc);
-	}
+		ret = regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), val);
+		if (ret < 0) {
+			pr_err("%s: could not update power domain\n", __func__);
+			reset_control_put(rstc);
+			return ret;
+		}
 
-	ret = regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), val);
-	if (ret < 0) {
-		pr_err("%s: could not update power domain\n", __func__);
-		return ret;
-	}
+		ret = -1;
+		while (ret != on) {
+			ret = pmu_power_domain_is_on(pd);
+			if (ret < 0) {
+				pr_err("%s: could not read power domain state\n",
+				       __func__);
+				return ret;
+			}
+		}
 
-	ret = -1;
-	while (ret != on) {
-		ret = pmu_power_domain_is_on(pd);
+		if (on)
+			reset_control_deassert(rstc);
+	} else {
+		ret = regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), val);
 		if (ret < 0) {
-			pr_err("%s: could not read power domain state\n",
-				 __func__);
+			pr_err("%s: could not update power domain\n", __func__);
 			return ret;
 		}
+
+		ret = -1;
+		while (ret != on) {
+			ret = pmu_power_domain_is_on(pd);
+			if (ret < 0) {
+				pr_err("%s: could not read power domain state\n",
+				       __func__);
+				return ret;
+			}
+		}
 	}
 
 	return 0;
-- 
1.9.1
