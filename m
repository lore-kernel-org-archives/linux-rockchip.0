From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: [PATCH 3/9] clocksource/drivers/rockchip_timer: drop unused rk_base()
 and rk_ctrl()
Date: Wed, 23 Nov 2016 20:29:31 +0300
Message-ID: <1479922177-20136-3-git-send-email-al.kochet@gmail.com>
References: <1479922177-20136-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1479922177-20136-1-git-send-email-al.kochet@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: daniel.lezcano@linaro.org, tglx@linutronix.de, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Alexander Kochetkov <al.kochet@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Alexander Kochetkov <al.kochet@gmail.com>
---
 drivers/clocksource/rockchip_timer.c |   10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/clocksource/rockchip_timer.c b/drivers/clocksource/rockchip_timer.c
index f84f67c..2f18166 100644
--- a/drivers/clocksource/rockchip_timer.c
+++ b/drivers/clocksource/rockchip_timer.c
@@ -53,16 +53,6 @@ static inline struct rk_timer *rk_timer(struct clock_event_device *ce)
 	return &rk_clock_event_device(ce)->timer;
 }
 
-static inline void __iomem *rk_base(struct clock_event_device *ce)
-{
-	return rk_timer(ce)->base;
-}
-
-static inline void __iomem *rk_ctrl(struct clock_event_device *ce)
-{
-	return rk_timer(ce)->ctrl;
-}
-
 static inline void rk_timer_disable(struct rk_timer *timer)
 {
 	writel_relaxed(TIMER_DISABLE, timer->ctrl);
-- 
1.7.9.5
