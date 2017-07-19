From: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Subject: [PATCH 059/102] phy: rockchip-typec: explicitly request exclusive
 reset control
Date: Wed, 19 Jul 2017 17:26:03 +0200
Message-ID: <20170719152646.25903-60-p.zabel@pengutronix.de>
References: <20170719152646.25903-1-p.zabel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170719152646.25903-1-p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Commit a53e35db70d1 ("reset: Ensure drivers are explicit when requesting
reset lines") started to transition the reset control request API calls
to explicitly state whether the driver needs exclusive or shared reset
control behavior. Convert all drivers requesting exclusive resets to the
explicit API call so the temporary transition helpers can be removed.

No functional changes.

Cc: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Signed-off-by: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 7cfb0f8995de8..caf046e1348d1 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -888,19 +888,19 @@ static int tcphy_parse_dt(struct rockchip_typec_phy *tcphy,
 		return PTR_ERR(tcphy->clk_ref);
 	}
 
-	tcphy->uphy_rst = devm_reset_control_get(dev, "uphy");
+	tcphy->uphy_rst = devm_reset_control_get_exclusive(dev, "uphy");
 	if (IS_ERR(tcphy->uphy_rst)) {
 		dev_err(dev, "no uphy_rst reset control found\n");
 		return PTR_ERR(tcphy->uphy_rst);
 	}
 
-	tcphy->pipe_rst = devm_reset_control_get(dev, "uphy-pipe");
+	tcphy->pipe_rst = devm_reset_control_get_exclusive(dev, "uphy-pipe");
 	if (IS_ERR(tcphy->pipe_rst)) {
 		dev_err(dev, "no pipe_rst reset control found\n");
 		return PTR_ERR(tcphy->pipe_rst);
 	}
 
-	tcphy->tcphy_rst = devm_reset_control_get(dev, "uphy-tcphy");
+	tcphy->tcphy_rst = devm_reset_control_get_exclusive(dev, "uphy-tcphy");
 	if (IS_ERR(tcphy->tcphy_rst)) {
 		dev_err(dev, "no tcphy_rst reset control found\n");
 		return PTR_ERR(tcphy->tcphy_rst);
-- 
2.11.0
