From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 2/2] phy: rockchip-emmc: use regmap_read_poll_timeout to poll
 dllrdy
Date: Tue,  2 Jan 2018 10:22:00 +0800
Message-ID: <1514859720-151161-2-git-send-email-shawn.lin@rock-chips.com>
References: <1514859720-151161-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1514859720-151161-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Ziyuan Xu <xzy.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Just use the API instead of open-coding it, no functional change
intended.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/phy/rockchip/phy-rockchip-emmc.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 512a6ef..c65979b 100644
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
 
 	/*
 	 * Keep phyctrl_pdb and phyctrl_endll low to allow
@@ -222,19 +224,10 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
 	 *   only at boot / resume.  In both cases, eMMC is probably on the
 	 *   critical path so busy waiting a little extra time should be OK.
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
+	if (regmap_read_poll_timeout(rk_phy->reg_base,
+				     rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
+				     dllrdy, PHYCTRL_IS_DLLRDY(dllrdy),
+				     1, 50 * USEC_PER_MSEC)) {
 		pr_err("rockchip_emmc_phy_power: dllrdy timeout.\n");
 		return -ETIMEDOUT;
 	}
-- 
1.9.1
