From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/2] phy: rockchip-emmc: retry calpad busy trimming
Date: Tue,  2 Jan 2018 10:21:59 +0800
Message-ID: <1514859720-151161-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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

It turns out that 5us isn't enough for all cases, so let's
retry some more times to wait for caldone.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/phy/rockchip/phy-rockchip-emmc.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index f1b24f1..512a6ef 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -76,6 +76,10 @@
 #define PHYCTRL_OTAPDLYSEL_MASK		0xf
 #define PHYCTRL_OTAPDLYSEL_SHIFT	0x7
 
+#define PHYCTRL_IS_CALDONE(x) \
+	((((x) >> PHYCTRL_CALDONE_SHIFT) & \
+	  PHYCTRL_CALDONE_MASK) == PHYCTRL_CALDONE_DONE)
+
 struct rockchip_emmc_phy {
 	unsigned int	reg_offset;
 	struct regmap	*reg_base;
@@ -160,15 +164,16 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
 				   PHYCTRL_PDB_SHIFT));
 
 	/*
-	 * According to the user manual, it asks driver to
-	 * wait 5us for calpad busy trimming
+	 * According to the user manual, it asks driver to wait 5us for
+	 * calpad busy trimming. However it is documented that this value is
+	 * PVT(A.K.A process,voltage and temperature) relevant, so some
+	 * failure cases are found which indicates we should be more tolerant
+	 * to calpad busy trimming.
 	 */
-	udelay(5);
-	regmap_read(rk_phy->reg_base,
-		    rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
-		    &caldone);
-	caldone = (caldone >> PHYCTRL_CALDONE_SHIFT) & PHYCTRL_CALDONE_MASK;
-	if (caldone != PHYCTRL_CALDONE_DONE) {
+	if (regmap_read_poll_timeout(rk_phy->reg_base,
+				     rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
+				     caldone, PHYCTRL_IS_CALDONE(caldone),
+				     5, 50)) {
 		pr_err("rockchip_emmc_phy_power: caldone timeout.\n");
 		return -ETIMEDOUT;
 	}
-- 
1.9.1
