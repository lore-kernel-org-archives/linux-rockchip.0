From: Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Subject: [PATCH 03/22] clocksource/drivers/rockchip: Make the driver more
 compatible
Date: Mon,  2 Nov 2015 13:56:31 +0100
Message-ID: <1446469011-22710-3-git-send-email-daniel.lezcano@linaro.org>
References: <1446469011-22710-1-git-send-email-daniel.lezcano@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1446469011-22710-1-git-send-email-daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, arnd-r2nGTMty4D4@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, "moderated list:ARM/Rockchip SoC..." <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Build the arm64 SoCs (e.g.: RK3368) on Rockchip platform,
There are some failure with build up on timer driver for rockchip.

Says:
/tmp/ccdAnNy5.s:47: Error: missing immediate expression at  operand 1 --
`dsb`
...

The problem was different semantics of dsb on btw arm32 and arm64,
Here we can convert the dsb with insteading of dsb(sy).The "sy" param
is the default which you are allow to omit, so on arm32 dsb()and dsb(sy)
are the same.

Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
---
 drivers/clocksource/rockchip_timer.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/rockchip_timer.c b/drivers/clocksource/rockchip_timer.c
index d3c1742..724c321 100644
--- a/drivers/clocksource/rockchip_timer.c
+++ b/drivers/clocksource/rockchip_timer.c
@@ -49,14 +49,14 @@ static inline void __iomem *rk_base(struct clock_event_device *ce)
 static inline void rk_timer_disable(struct clock_event_device *ce)
 {
 	writel_relaxed(TIMER_DISABLE, rk_base(ce) + TIMER_CONTROL_REG);
-	dsb();
+	dsb(sy);
 }
 
 static inline void rk_timer_enable(struct clock_event_device *ce, u32 flags)
 {
 	writel_relaxed(TIMER_ENABLE | TIMER_INT_UNMASK | flags,
 		       rk_base(ce) + TIMER_CONTROL_REG);
-	dsb();
+	dsb(sy);
 }
 
 static void rk_timer_update_counter(unsigned long cycles,
@@ -64,13 +64,13 @@ static void rk_timer_update_counter(unsigned long cycles,
 {
 	writel_relaxed(cycles, rk_base(ce) + TIMER_LOAD_COUNT0);
 	writel_relaxed(0, rk_base(ce) + TIMER_LOAD_COUNT1);
-	dsb();
+	dsb(sy);
 }
 
 static void rk_timer_interrupt_clear(struct clock_event_device *ce)
 {
 	writel_relaxed(1, rk_base(ce) + TIMER_INT_STATUS);
-	dsb();
+	dsb(sy);
 }
 
 static inline int rk_timer_set_next_event(unsigned long cycles,
-- 
1.9.1
