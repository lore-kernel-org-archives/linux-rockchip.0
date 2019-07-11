From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v6 3/3] drm/panel: simple: Use display_timing for AUO b101ean01
Date: Thu, 11 Jul 2019 13:34:55 -0700
Message-ID: <20190711203455.125667-4-dianders@chromium.org>
References: <20190711203455.125667-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190711203455.125667-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Reding <thierry.reding@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Boris Brezillon <boris.brezillon@collabora.com>, mka@chromium.org, Rob Herring <robh+dt@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

Convert the AUO b101ean01 from using a fixed mode to specifying a
display timing with min/typ/max values.

The AUO b101ean01's datasheet says:
* Vertical blanking min is 12
* Horizontal blanking min is 60
* Pixel clock is between 65.3 MHz and 75 MHz

The goal here is to be able to specify the proper timing in device
tree to use on rk3288-veyron-minnie to match what the downstream
kernel is using so that it can used the fixed PLL.

Changes in v4:
 - display_timing for AUO b101ean01 new for v4.
Changes in v6:
 - Rebased to drm-misc next
 - Added tags

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
---

 drivers/gpu/drm/panel/panel-simple.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 602809f6da6a..226f068fb679 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -595,22 +595,21 @@ static const struct panel_desc auo_b101aw03 = {
 	},
 };
 
-static const struct drm_display_mode auo_b101ean01_mode = {
-	.clock = 72500,
-	.hdisplay = 1280,
-	.hsync_start = 1280 + 119,
-	.hsync_end = 1280 + 119 + 32,
-	.htotal = 1280 + 119 + 32 + 21,
-	.vdisplay = 800,
-	.vsync_start = 800 + 4,
-	.vsync_end = 800 + 4 + 20,
-	.vtotal = 800 + 4 + 20 + 8,
-	.vrefresh = 60,
+static const struct display_timing auo_b101ean01_timing = {
+	.pixelclock = { 65300000, 72500000, 75000000 },
+	.hactive = { 1280, 1280, 1280 },
+	.hfront_porch = { 18, 119, 119 },
+	.hback_porch = { 21, 21, 21 },
+	.hsync_len = { 32, 32, 32 },
+	.vactive = { 800, 800, 800 },
+	.vfront_porch = { 4, 4, 4 },
+	.vback_porch = { 8, 8, 8 },
+	.vsync_len = { 18, 20, 20 },
 };
 
 static const struct panel_desc auo_b101ean01 = {
-	.modes = &auo_b101ean01_mode,
-	.num_modes = 1,
+	.timings = &auo_b101ean01_timing,
+	.num_timings = 1,
 	.bpc = 6,
 	.size = {
 		.width = 217,
-- 
2.22.0.410.gd8fdbe21b5-goog
