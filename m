From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/2] net: stmmac: add Rockchip as supported platform in STMMAC_PLATFORM help text
Date: Fri, 26 Jun 2020 14:05:27 +0200
Message-ID: <20200626120527.10562-2-jbx6244@gmail.com>
References: <20200626120527.10562-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200626120527.10562-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: peppe.cavallaro@st.com
Cc: alexandre.torgue@st.com, joabreu@synopsys.com, davem@davemloft.net, kuba@kernel.org, mcoquelin.stm32@gmail.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The Kconfig menu has an option for DWMAC_ROCKCHIP.
Then add Rockchip also as supported platform in the help text
of STMMAC_PLATFORM.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 8f7625cc8..8309e05b4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -33,7 +33,7 @@ config STMMAC_PLATFORM
 	---help---
 	  This selects the platform specific bus support for the stmmac driver.
 	  This is the driver used on several SoCs:
-	  STi, Allwinner, Amlogic Meson, Altera SOCFPGA.
+	  STi, Allwinner, Amlogic Meson, Altera SOCFPGA, Rockchip.
 
 	  If you have a controller with this interface, say Y or M here.
 
-- 
2.11.0
