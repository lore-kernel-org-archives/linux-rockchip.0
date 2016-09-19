From: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Subject: [PATCH 02/26] drm/rockchip: dw-mipi-dsi: pass new mode into MIPI mode
 set
Date: Mon, 19 Sep 2016 18:17:12 +0100
Message-ID: <20160919171747.28512-3-john@metanate.com>
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

In the atomic world the new connector state is not set when mode_set is
called and we should use the adjusted_mode parameter.

Signed-off-by: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index a87037556f5c..fa90bb615fd0 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -459,9 +459,9 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
 	return ret;
 }
 
-static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi)
+static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
+				    struct drm_display_mode *mode)
 {
-	struct drm_display_mode *mode = &dsi->connector.state->crtc->state->adjusted_mode;
 	unsigned int i, pre;
 	unsigned long mpclk, pllref, tmp;
 	unsigned int m = 1, n = 1, target_mbps = 1000;
@@ -824,7 +824,7 @@ static void dw_mipi_dsi_encoder_mode_set(struct drm_encoder *encoder,
 	struct dw_mipi_dsi *dsi = encoder_to_dsi(encoder);
 	int ret;
 
-	ret = dw_mipi_dsi_get_lane_bps(dsi);
+	ret = dw_mipi_dsi_get_lane_bps(dsi, adjusted_mode);
 	if (ret < 0)
 		return;
 
-- 
2.10.0.278.g4f427b1.dirty
