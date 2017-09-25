From: Arvind Yadav <arvind.yadav.cs-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 2/3] clocksource: owl: pr_err() strings should end with
 newlines
Date: Mon, 25 Sep 2017 13:46:40 +0530
Message-ID: <1506327401-30521-3-git-send-email-arvind.yadav.cs@gmail.com>
References: <1506327401-30521-1-git-send-email-arvind.yadav.cs@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1506327401-30521-1-git-send-email-arvind.yadav.cs-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, afaerber-l3A5Bk7waGM@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

pr_err() messages should terminated with a new-line to avoid
other messages being concatenated onto the end.

Signed-off-by: Arvind Yadav <arvind.yadav.cs-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 drivers/clocksource/owl-timer.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/owl-timer.c b/drivers/clocksource/owl-timer.c
index d19c53c..c686305 100644
--- a/drivers/clocksource/owl-timer.c
+++ b/drivers/clocksource/owl-timer.c
@@ -125,7 +125,7 @@ static int __init owl_timer_init(struct device_node *node)
 
 	owl_timer_base = of_io_request_and_map(node, 0, "owl-timer");
 	if (IS_ERR(owl_timer_base)) {
-		pr_err("Can't map timer registers");
+		pr_err("Can't map timer registers\n");
 		return PTR_ERR(owl_timer_base);
 	}
 
@@ -134,7 +134,7 @@ static int __init owl_timer_init(struct device_node *node)
 
 	timer1_irq = of_irq_get_byname(node, "timer1");
 	if (timer1_irq <= 0) {
-		pr_err("Can't parse timer1 IRQ");
+		pr_err("Can't parse timer1 IRQ\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1
