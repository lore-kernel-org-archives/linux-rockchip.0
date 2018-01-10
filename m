From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 2/2] phy: rockchip-emmc: use regmap_read_poll_timeout to
 poll dllrdy
Date: Wed, 10 Jan 2018 18:49:22 +0800
Message-ID: <1515581362-181200-2-git-send-email-shawn.lin@rock-chips.com>
References: <1515581362-181200-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1515581362-181200-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Cc: Ziyuan Xu <xzy.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Just use the API instead of open-coding it, no functional change
intended.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Tested-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Tested-by: Ziyuan Xu <xzy.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v2:
- propagate the error and print it
- avoid using busy wait

 drivers/phy/rockchip/phy-rockchip-emmc.c | 32 +++++++++++++-------------------
 1 file changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 547b746..e54e78f 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -79,6 +79,9 @@
 #define PHYCTRL_IS_CALDONE(x) \
 	((((x) >> PHYCTRL_CALDONE_SHIFT) & \
 	  PHYCTRL_CALDONE_MASK) == PHYCTRL_CALDONE_DONE)
+#define PHYCTRL_IS_DLLRDY(x) \
+	((((x) >> PHYCTRL_DLLRDY_SHIFT) & \
+	  PHYCTRL_DLLRDY_MASK) == PHYCTRL_DLLRDY_DONE)
 
 struct rockchip_emmc_phy {
 	unsigned int	reg_offset;
@@ -93,7 +96,6 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
 	unsigned int dllrdy;
 	unsigned int freqsel = PHYCTRL_FREQSEL_200M;
 	unsigned long rate;
-	unsigned long timeout;
 	int ret;
 
 	/*
@@ -217,28 +219,20 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
 	 * NOTE: There appear to be corner cases where the DLL seems to take
 	 * extra long to lock for reasons that aren't understood.  In some
 	 * extreme cases we've seen it take up to over 10ms (!).  We'll be
-	 * generous and give it 50ms.  We still busy wait here because:
+	 * generous and give it 50ms.  We still wait here because:
 	 * - In most cases it should be super fast.
 	 * - This is not called lots during normal operation so it shouldn't
-	 *   be a power or performance problem to busy wait.  We expect it
+	 *   be a power or performance problem to wait.  We expect it
 	 *   only at boot / resume.  In both cases, eMMC is probably on the
-	 *   critical path so busy waiting a little extra time should be OK.
+	 *   critical path so waiting a little extra time should be OK.
 	 */
-	timeout = jiffies + msecs_to_jiffies(50);
-	do {
-		udelay(1);
-
-		regmap_read(rk_phy->reg_base,
-			rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
-			&dllrdy);
-		dllrdy = (dllrdy >> PHYCTRL_DLLRDY_SHIFT) & PHYCTRL_DLLRDY_MASK;
-		if (dllrdy == PHYCTRL_DLLRDY_DONE)
-			break;
-	} while (!time_after(jiffies, timeout));
-
-	if (dllrdy != PHYCTRL_DLLRDY_DONE) {
-		pr_err("rockchip_emmc_phy_power: dllrdy timeout.\n");
-		return -ETIMEDOUT;
+	ret = regmap_read_poll_timeout(rk_phy->reg_base,
+				       rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
+				       dllrdy, PHYCTRL_IS_DLLRDY(dllrdy),
+				       1, 50 * USEC_PER_MSEC);
+	if (ret) {
+		pr_err("%s: dllrdy failed %d.\n", __func__, ret);
+		return ret;
 	}
 
 	return 0;
-- 
1.9.1
