From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 1/3] ARM: rockchip: fix the CPU soft reset
Date: Fri, 05 Jun 2015 17:52:48 +0200
Message-ID: <1744325.yNd0r8SV4R@diego>
References: <1433517104-7595-1-git-send-email-wxt@rock-chips.com>
 <1433517104-7595-2-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1433517104-7595-2-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Russell King <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Am Freitag, 5. Juni 2015, 23:11:42 schrieb Caesar Wang:
> We need different orderings when turning a core on and turning a core
> off.  In one case we need to assert reset before turning power off.
> In ther other case we need to turn power on and the deassert reset.
> 
> In general, the correct flow is:
> 
> CPU off:
>     reset_control_assert
>     regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), BIT(pd))
> CPU on:
>     regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), 0)
>     reset_control_deassert
> 
> This is needed for stressing CPU up/down, as per:
>     cd /sys/devices/system/cpu/
>     for i in $(seq 1000); do
>         echo "================= $i ============"
>         for j in $(seq 100); do
>             while [[ "$(cat cpu1/online)$(cat cpu2/online)$(cat
> cpu3/online)" != "000"" ]] echo 0 > cpu1/online
>                 echo 0 > cpu2/online
>                 echo 0 > cpu3/online
>             done
>             while [[ "$(cat cpu1/online)$(cat cpu2/online)$(cat
> cpu3/online)" != "111" ]]; do echo 1 > cpu1/online
>                 echo 1 > cpu2/online
>                 echo 1 > cpu3/online
>             done
>         done
>     done
> 
> The following is reproducile log:
>     [34466.186812] PM: noirq suspend of devices complete after 0.669 msecs
>     [34466.186824] Disabling non-boot CPUs ...
>     [34466.187509] CPU1: shutdown
>     [34466.188672] CPU2: shutdown
>     [34473.736627] Kernel panic - not syncing:Watchdog detected hard LOCKUP
> on cpu 0 .......
> 
> Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---

could we do this something like the shown below instead?
Here the deassertion of the reset really happens after we are sure the
power-domain is on


-------------- 8< ---------------
diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 5b4ca3c..ee5dbad6 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -72,6 +72,7 @@ static struct reset_control *rockchip_get_core_reset(int cpu)
 static int pmu_set_power_domain(int pd, bool on)
 {
 	u32 val = (on) ? 0 : BIT(pd);
+	struct reset_control *rstc = rockchip_get_core_reset(pd);
 	int ret;
 
 	/*
@@ -80,20 +81,16 @@ static int pmu_set_power_domain(int pd, bool on)
 	 * processor is powered down.
 	 */
 	if (read_cpuid_part() != ARM_CPU_PART_CORTEX_A9) {
-		struct reset_control *rstc = rockchip_get_core_reset(pd);
-
+		/* We only require the reset on the RK3288 at the moment */
 		if (IS_ERR(rstc)) {
 			pr_err("%s: could not get reset control for core %d\n",
 			       __func__, pd);
 			return PTR_ERR(rstc);
 		}
 
-		if (on)
-			reset_control_deassert(rstc);
-		else
+		if (!on)
 			reset_control_assert(rstc);
 
-		reset_control_put(rstc);
 	}
 
 	ret = regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), val);
@@ -112,6 +109,12 @@ static int pmu_set_power_domain(int pd, bool on)
 		}
 	}
 
+	if (read_cpuid_part() != ARM_CPU_PART_CORTEX_A9 && on)
+			reset_control_deassert(rstc);
+
+	if (!IS_ERR(rstc))
+		reset_control_put(rstc);
+
 	return 0;
 }
 
-------------- 8< ---------------
