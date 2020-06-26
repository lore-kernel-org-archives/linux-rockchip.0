From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 1/2] net: stmmac: change Kconfig menu entry to STMMAC/DWMAC
Date: Fri, 26 Jun 2020 14:05:26 +0200
Message-ID: <20200626120527.10562-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: peppe.cavallaro@st.com
Cc: alexandre.torgue@st.com, joabreu@synopsys.com, davem@davemloft.net, kuba@kernel.org, mcoquelin.stm32@gmail.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

When a Rockchip user wants to enable support for
the ethernet controller one has to search for
something with STMicroelectronics.
Change the Kconfig menu entry to STMMAC/DWMAC,
so that it better reflects the options it enables.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 36bd2e18f..8f7625cc8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config STMMAC_ETH
-	tristate "STMicroelectronics Multi-Gigabit Ethernet driver"
+	tristate "STMMAC/DWMAC Multi-Gigabit Ethernet driver"
 	depends on HAS_IOMEM && HAS_DMA
 	select MII
 	select MDIO_XPCS
@@ -26,7 +26,7 @@ config STMMAC_SELFTESTS
 	  results to the netdev Mailing List.
 
 config STMMAC_PLATFORM
-	tristate "STMMAC Platform bus support"
+	tristate "STMMAC/DWMAC Platform bus support"
 	depends on STMMAC_ETH
 	select MFD_SYSCON
 	default y
-- 
2.11.0
