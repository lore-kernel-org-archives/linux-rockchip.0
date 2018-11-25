From: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH 03/13] net: stmmac: dwmac-rk: Allow the driver to probe when phy-supply is not present
Date: Sun, 25 Nov 2018 19:18:57 -0200
Message-ID: <20181125211907.9895-3-otavio@ossystems.com.br>
References: <20181125211907.9895-1-otavio@ossystems.com.br>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181125211907.9895-1-otavio@ossystems.com.br>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Otavio Salvador <otavio@ossystems.com.br>, Jose Abreu <joabreu@synopsys.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-stm32@st-md-mailman.stormreply.com, "David S. Miller" <davem@davemloft.net>
List-Id: linux-rockchip.vger.kernel.org

The phy-supply is an optional regulator, so we should not treat
as an error when phy-supply is not passed in the device tree.

This allows the dwmac-rk driver to probe when phy-supply is not
present in the dts.

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---

 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 7b923362ee55..73855622445b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1205,7 +1205,7 @@ static int phy_power_on(struct rk_priv_data *bsp_priv, bool enable)
 
 	if (!ldo) {
 		dev_err(dev, "no regulator found\n");
-		return -1;
+		return 0;
 	}
 
 	if (enable) {
-- 
2.19.1
