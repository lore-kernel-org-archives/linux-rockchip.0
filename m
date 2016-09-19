From: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Subject: [PATCH 20/26] drm/rockchip: dw-mipi-dsi: use specific poll helper
Date: Mon, 19 Sep 2016 18:17:37 +0100
Message-ID: <20160919171747.28512-28-john@metanate.com>
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

As the documentation for readx_poll_timeout says, we want to use the
specialized macro for readl rather than using the generic version
directly.

Signed-off-by: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 7983b2749518..ae7c330cb7ac 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -472,14 +472,14 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 				     PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
 
 
-	ret = readx_poll_timeout(readl, dsi->base + DSI_PHY_STATUS,
+	ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS,
 				 val, val & LOCK, 1000, PHY_STATUS_TIMEOUT_US);
 	if (ret < 0) {
 		dev_err(dsi->dev, "failed to wait for phy lock state\n");
 		return ret;
 	}
 
-	ret = readx_poll_timeout(readl, dsi->base + DSI_PHY_STATUS,
+	ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS,
 				 val, val & STOP_STATE_CLK_LANE, 1000,
 				 PHY_STATUS_TIMEOUT_US);
 	if (ret < 0) {
@@ -595,7 +595,7 @@ static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
 	int ret;
 	u32 val, mask;
 
-	ret = readx_poll_timeout(readl, dsi->base + DSI_CMD_PKT_STATUS,
+	ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
 				 val, !(val & GEN_CMD_FULL), 1000,
 				 CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret < 0) {
@@ -606,7 +606,7 @@ static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
 	dsi_write(dsi, DSI_GEN_HDR, hdr_val);
 
 	mask = GEN_CMD_EMPTY | GEN_PLD_W_EMPTY;
-	ret = readx_poll_timeout(readl, dsi->base + DSI_CMD_PKT_STATUS,
+	ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
 				 val, (val & mask) == mask,
 				 1000, CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret < 0) {
@@ -665,7 +665,7 @@ static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
 			len -= pld_data_bytes;
 		}
 
-		ret = readx_poll_timeout(readl, dsi->base + DSI_CMD_PKT_STATUS,
+		ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
 					 val, !(val & GEN_PLD_W_FULL), 1000,
 					 CMD_PKT_STATUS_TIMEOUT_US);
 		if (ret < 0) {
-- 
2.10.0.278.g4f427b1.dirty
