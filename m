From: John Keeping <john@metanate.com>
Subject: [PATCH 14/27] drm/rockchip: dw-mipi-dsi: use specific poll helper
Date: Mon, 19 Sep 2016 18:17:25 +0100
Message-ID: <20160919171747.28512-16-john@metanate.com>
References: <20160919171747.28512-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20160919171747.28512-1-john@metanate.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, John Keeping <john@metanate.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

As the documentation for readx_poll_timeout says, we want to use the
specialized macro for readl rather than using the generic version
directly.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 5e343b54f0d0..097b3b0af78f 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -440,14 +440,14 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
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
@@ -563,7 +563,7 @@ static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
 	int ret;
 	u32 val, mask;
 
-	ret = readx_poll_timeout(readl, dsi->base + DSI_CMD_PKT_STATUS,
+	ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
 				 val, !(val & GEN_CMD_FULL), 1000,
 				 CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret < 0) {
@@ -574,7 +574,7 @@ static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
 	dsi_write(dsi, DSI_GEN_HDR, hdr_val);
 
 	mask = GEN_CMD_EMPTY | GEN_PLD_W_EMPTY;
-	ret = readx_poll_timeout(readl, dsi->base + DSI_CMD_PKT_STATUS,
+	ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
 				 val, (val & mask) == mask,
 				 1000, CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret < 0) {
@@ -633,7 +633,7 @@ static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
 			len -= pld_data_bytes;
 		}
 
-		ret = readx_poll_timeout(readl, dsi->base + DSI_CMD_PKT_STATUS,
+		ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
 					 val, !(val & GEN_PLD_W_FULL), 1000,
 					 CMD_PKT_STATUS_TIMEOUT_US);
 		if (ret < 0) {
-- 
2.10.0.278.g4f427b1.dirty
