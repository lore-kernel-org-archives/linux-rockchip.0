From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v2] clk-divider: make sure read-only dividers do not write to
 their register
Date: Wed, 20 Jan 2016 20:51:06 +0100
Message-ID: <3578615.iBrKplh45Q@phil>
References: <8710207.gKyLbM2bKY@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <8710207.gKyLbM2bKY@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, James Hogan <james.hogan-1AXoQHu6uovQT0dZR+AlfA@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Zhang Qing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Commit e6d5e7d90be9 ("clk-divider: Fix READ_ONLY when divider > 1") removed
the special ops struct for read-only clocks and instead opted to handle
them regularly.

On the rk3368 this results in breakage as aclkm now gets set a value.
While it is the same divider value, the A53 core still doesn't like it,
which can result in the cpu ending up in a hang.
The reason being that "ACLKENMasserts one clock cycle before the rising
edge of ACLKM" and the clock should only be touched when STANDBYWFIL2
is asserted.

So make sure read-only clocks don't touch the clock-register at all
even if only writing the same value, as even writing the same value
may not be safe in all cases.

Fixes: e6d5e7d90be9 ("clk-divider: Fix READ_ONLY when divider > 1")
Reported-by: Zhang Qing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Reviewed-by: James Hogan <james.hogan-1AXoQHu6uovQT0dZR+AlfA@public.gmane.org>
---
changes in v2:
- emphasize that even setting the same divider may be unsafe

 drivers/clk/clk-divider.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index ded3ff4..6dfe261 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -391,6 +391,10 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	unsigned long flags = 0;
 	u32 val;
 
+	/* don't do writes in read-only case, as it may be unsafe */
+	if (divider->flags & CLK_DIVIDER_READ_ONLY)
+		return 0;
+
 	value = divider_get_val(rate, parent_rate, divider->table,
 				divider->width, divider->flags);
 
-- 
2.6.4
