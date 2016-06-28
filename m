From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH 06/92] clocksource/drivers/rockchip: Add the dynamic irq flag
 to the timer
Date: Tue, 28 Jun 2016 12:30:25 +0200
Message-ID: <1467109911-11060-6-git-send-email-daniel.lezcano@linaro.org>
References: <577251A4.7030508@linaro.org>
 <1467109911-11060-1-git-send-email-daniel.lezcano@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1467109911-11060-1-git-send-email-daniel.lezcano@linaro.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: daniel.lezcano@linaro.org, tglx@linutronix.de
Cc: "Huang, Tao" <huangtao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Jianqun Xu <jay.xu@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: "Huang, Tao" <huangtao@rock-chips.com>

The rockchip timer is a broadcast timer. Add the CLOCK_EVT_FEAT_DYNIRQ flag
and set the cpumask to all possible cpus to save power by avoiding
unnecessary wakeups and IPIs.

Signed-off-by: Huang Tao <huangtao@rock-chips.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>
Tested-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/rockchip_timer.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/rockchip_timer.c b/drivers/clocksource/rockchip_timer.c
index b991b28..b510863 100644
--- a/drivers/clocksource/rockchip_timer.c
+++ b/drivers/clocksource/rockchip_timer.c
@@ -150,12 +150,13 @@ static void __init rk_timer_init(struct device_node *np)
 	}
 
 	ce->name = TIMER_NAME;
-	ce->features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
+	ce->features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT |
+		       CLOCK_EVT_FEAT_DYNIRQ;
 	ce->set_next_event = rk_timer_set_next_event;
 	ce->set_state_shutdown = rk_timer_shutdown;
 	ce->set_state_periodic = rk_timer_set_periodic;
 	ce->irq = irq;
-	ce->cpumask = cpumask_of(0);
+	ce->cpumask = cpu_possible_mask;
 	ce->rating = 250;
 
 	rk_timer_interrupt_clear(ce);
-- 
1.9.1
