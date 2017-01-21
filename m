From: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Subject: [PATCH v2 11/26] drm/rockchip: dw-mipi-dsi: don't assume buffer is
 aligned
Date: Sat, 21 Jan 2017 16:31:13 +0000
Message-ID: <20170121163128.22240-12-john@metanate.com>
References: <20170121163128.22240-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170121163128.22240-1-john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
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
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

By dereferencing the MIPI command buffer as a u32* we rely on it being
correctly aligned on ARM, but this may not be the case.  Copy it into a
stack variable that will be correctly aligned.

Signed-off-by: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
---
Unchanged in v2
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 03fc096fe1bd..ddbc037e7ced 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -607,10 +607,10 @@ static int dw_mipi_dsi_dcs_short_write(struct dw_mipi_dsi *dsi,
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
@@ -621,12 +621,14 @@ static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
 
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
2.11.0.197.gb556de5.dirty
