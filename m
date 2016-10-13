From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] phy-rockchip-pcie: remove deassert of phy_rst from exit
 callback
Date: Thu, 13 Oct 2016 12:42:13 +0800
Message-ID: <1476333733-9696-1-git-send-email-shawn.lin@rock-chips.com>
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
Cc: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The deassert of phy_rst from exit callback is incorrect as when
doing phy_exit, we expect the phy_rst is on asserted state which was
done by power_off callback, but not deasserted state. Meanwhile when
disabling clk_pciephy_ref, the assert/deassert signal can't actually
take effect on the phy. So let's fix it anyway.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/phy/phy-rockchip-pcie.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/phy/phy-rockchip-pcie.c b/drivers/phy/phy-rockchip-pcie.c
index a2b4c6b..6904633 100644
--- a/drivers/phy/phy-rockchip-pcie.c
+++ b/drivers/phy/phy-rockchip-pcie.c
@@ -249,21 +249,10 @@ static int rockchip_pcie_phy_init(struct phy *phy)
 static int rockchip_pcie_phy_exit(struct phy *phy)
 {
 	struct rockchip_pcie_phy *rk_phy = phy_get_drvdata(phy);
-	int err = 0;
 
 	clk_disable_unprepare(rk_phy->clk_pciephy_ref);
 
-	err = reset_control_deassert(rk_phy->phy_rst);
-	if (err) {
-		dev_err(&phy->dev, "deassert phy_rst err %d\n", err);
-		goto err_reset;
-	}
-
-	return err;
-
-err_reset:
-	clk_prepare_enable(rk_phy->clk_pciephy_ref);
-	return err;
+	return 0;
 }
 
 static const struct phy_ops ops = {
-- 
2.3.7
