From: Emil Renner Berthing <kernel@esmil.dk>
Subject: [PATCH] net: stmmac: dwmac-rk: fix error path in rk_gmac_probe
Date: Sat, 21 Mar 2020 15:36:19 +0100
Message-ID: <20200321143619.91533-1-kernel@esmil.dk>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: netdev@vger.kernel.org
Cc: David Wu <david.wu@rock-chips.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, Jose Abreu <joabreu@synopsys.com>, "David S . Miller" <davem@davemloft.net>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>
List-Id: linux-rockchip.vger.kernel.org

Make sure we clean up devicetree related configuration
also when clock init fails.

Fixes: fecd4d7eef8b ("net: stmmac: dwmac-rk: Add integrated PHY support")
Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index dc50ba13a746..2d5573b3dee1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1406,17 +1406,17 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
 	if (IS_ERR(plat_dat->bsp_priv)) {
 		ret = PTR_ERR(plat_dat->bsp_priv);
 		goto err_remove_config_dt;
 	}
 
 	ret = rk_gmac_clk_init(plat_dat);
 	if (ret)
-		return ret;
+		goto err_remove_config_dt;
 
 	ret = rk_gmac_powerup(plat_dat->bsp_priv);
 	if (ret)
 		goto err_remove_config_dt;
 
 	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 	if (ret)
 		goto err_gmac_powerdown;
-- 
2.25.2
