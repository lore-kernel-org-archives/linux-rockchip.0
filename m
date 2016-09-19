From: John Keeping <john@metanate.com>
Subject: [PATCH 11/26] drm/rockchip: dw-mipi-dsi: don't assume buffer is
 aligned
Date: Mon, 19 Sep 2016 18:17:21 +0100
Message-ID: <20160919171747.28512-12-john@metanate.com>
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

By dereferencing the MIPI command buffer as a u32* we rely on it being
correctly aligned on ARM, but this may not be the case.  Copy it into a
stack variable that will be correctly aligned.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index ed2da1bbada9..4c945cc4d31a 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -608,10 +608,10 @@ static int dw_mipi_dsi_dcs_short_write(struct dw_mipi_dsi *dsi,
 static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
 				      const struct mipi_dsi_msg *msg)
 {
-	const u32 *tx_buf = msg->tx_buf;
-	int len = msg->tx_len, pld_data_bytes = sizeof(*tx_buf), ret;
+	const u8 *tx_buf = msg->tx_buf;
+	int len = msg->tx_len, pld_data_bytes = sizeof(u32), ret;
 	u32 hdr_val = GEN_HDATA(msg->tx_len) | GEN_HTYPE(msg->type);
-	u32 remainder = 0;
+	u32 remainder;
 	u32 val;
 
 	if (msg->tx_len < 3) {
@@ -622,12 +622,14 @@ static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
 
 	while (DIV_ROUND_UP(len, pld_data_bytes)) {
 		if (len < pld_data_bytes) {
+			remainder = 0;
 			memcpy(&remainder, tx_buf, len);
 			dsi_write(dsi, DSI_GEN_PLD_DATA, remainder);
 			len = 0;
 		} else {
-			dsi_write(dsi, DSI_GEN_PLD_DATA, *tx_buf);
-			tx_buf++;
+			memcpy(&remainder, tx_buf, pld_data_bytes);
+			dsi_write(dsi, DSI_GEN_PLD_DATA, remainder);
+			tx_buf += pld_data_bytes;
 			len -= pld_data_bytes;
 		}
 
-- 
2.10.0.278.g4f427b1.dirty
