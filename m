From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/3] phy: add PHY_MODE_LVDS
Date: Thu, 24 Oct 2019 00:38:49 +0200
Message-ID: <20191023223851.3030-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: robh+dt@kernel.org, mark.rutland@arm.com, bivvy.bi@rock-chips.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

There are combo phys out there that can be switched between doing
dsi and lvds. So add a mode definition for it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/linux/phy/phy.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 15032f145063..56d3a100006a 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -38,7 +38,8 @@ enum phy_mode {
 	PHY_MODE_PCIE,
 	PHY_MODE_ETHERNET,
 	PHY_MODE_MIPI_DPHY,
-	PHY_MODE_SATA
+	PHY_MODE_SATA,
+	PHY_MODE_LVDS,
 };
 
 /**
-- 
2.23.0
