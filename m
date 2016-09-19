From: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Subject: [PATCH 18/26] drm/rockchip: dw-mipi-dsi: properly configure PHY timing
Date: Mon, 19 Sep 2016 18:17:33 +0100
Message-ID: <20160919171747.28512-24-john@metanate.com>
References: <20160919171747.28512-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160919171747.28512-1-john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

These values are specified as constant time periods but the PHY
configuration is in terms of the current lane byte clock so using
constant values guarantees that the timings will be outside the
specification with some display configurations.

Derive the necessary configuration from the byte clock in order to
ensure that the PHY configuration is correct.

Signed-off-by: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 36 ++++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 463e469fd1b8..55237d72f3f9 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -384,6 +384,26 @@ static void dw_mipi_dsi_phy_write(struct dw_mipi_dsi *dsi, u8 test_code,
 	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
 }
 
+/**
+ * ns2bc - Nanoseconds to byte clock cycles
+ */
+static inline unsigned int ns2bc(struct dw_mipi_dsi *dsi, int ns)
+{
+	unsigned long byte_clk_khz = dsi->lane_mbps * MSEC_PER_SEC / 8;
+
+	return (ns * (byte_clk_khz / 1000) + 999) / 1000;
+}
+
+/**
+ * ns2ui - Nanoseconds to UI time periods
+ */
+static inline unsigned int ns2ui(struct dw_mipi_dsi *dsi, int ns)
+{
+	unsigned long byte_clk_khz = dsi->lane_mbps * MSEC_PER_SEC;
+
+	return (ns * (byte_clk_khz / 1000) + 999) / 1000;
+}
+
 static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 {
 	int ret, testdin, vco, val;
@@ -435,10 +455,18 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 					 SETRD_MAX | POWER_MANAGE |
 					 TER_RESISTORS_ON);
 
-
-	dw_mipi_dsi_phy_write(dsi, 0x70, TLP_PROGRAM_EN | 0xf);
-	dw_mipi_dsi_phy_write(dsi, 0x71, THS_PRE_PROGRAM_EN | 0x55);
-	dw_mipi_dsi_phy_write(dsi, 0x72, THS_ZERO_PROGRAM_EN | 0xa);
+	dw_mipi_dsi_phy_write(dsi, 0x60, TLP_PROGRAM_EN | ns2bc(dsi, 500));
+	dw_mipi_dsi_phy_write(dsi, 0x61, THS_PRE_PROGRAM_EN | ns2ui(dsi, 40));
+	dw_mipi_dsi_phy_write(dsi, 0x62, THS_ZERO_PROGRAM_EN | ns2bc(dsi, 300));
+	dw_mipi_dsi_phy_write(dsi, 0x63, THS_PRE_PROGRAM_EN | ns2ui(dsi, 100));
+	dw_mipi_dsi_phy_write(dsi, 0x64, BIT(5) | ns2bc(dsi, 100));
+	dw_mipi_dsi_phy_write(dsi, 0x65, BIT(5) | (ns2bc(dsi, 60) + 7));
+
+	dw_mipi_dsi_phy_write(dsi, 0x70, TLP_PROGRAM_EN | ns2bc(dsi, 500));
+	dw_mipi_dsi_phy_write(dsi, 0x71, THS_PRE_PROGRAM_EN | (ns2ui(dsi, 50) + 5));
+	dw_mipi_dsi_phy_write(dsi, 0x72, THS_ZERO_PROGRAM_EN | (ns2bc(dsi, 140) + 2));
+	dw_mipi_dsi_phy_write(dsi, 0x73, THS_PRE_PROGRAM_EN | (ns2ui(dsi, 60) + 8));
+	dw_mipi_dsi_phy_write(dsi, 0x74, BIT(5) | ns2bc(dsi, 100));
 
 	dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
 				     PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
-- 
2.10.0.278.g4f427b1.dirty
