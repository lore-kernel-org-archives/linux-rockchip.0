From: Chuhong Yuan <hslester96@gmail.com>
Subject: [PATCH] net: ethernet: arc: add the missed clk_disable_unprepare
Date: Fri,  1 Nov 2019 20:17:25 +0800
Message-ID: <20191101121725.13349-1-hslester96@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <netdev-owner@vger.kernel.org>
Sender: netdev-owner@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>, Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

The remove misses to disable and unprepare priv->macclk like what is done
when probe fails.
Add the missed call in remove.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/net/ethernet/arc/emac_rockchip.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/arc/emac_rockchip.c b/drivers/net/ethernet/arc/emac_rockchip.c
index 42d2e1b02c44..664d664e0925 100644
--- a/drivers/net/ethernet/arc/emac_rockchip.c
+++ b/drivers/net/ethernet/arc/emac_rockchip.c
@@ -256,6 +256,9 @@ static int emac_rockchip_remove(struct platform_device *pdev)
 	if (priv->regulator)
 		regulator_disable(priv->regulator);
 
+	if (priv->soc_data->need_div_macclk)
+		clk_disable_unprepare(priv->macclk);
+
 	free_netdev(ndev);
 	return err;
 }
-- 
2.23.0
