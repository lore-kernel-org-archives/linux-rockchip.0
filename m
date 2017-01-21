From: John Keeping <john@metanate.com>
Subject: [PATCH v2 02/26] drm/rockchip: dw-mipi-dsi: rename commit hook to
 enable
Date: Sat, 21 Jan 2017 16:31:04 +0000
Message-ID: <20170121163128.22240-3-john@metanate.com>
References: <20170121163128.22240-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170121163128.22240-1-john@metanate.com>
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, John Keeping <john@metanate.com>, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Rockchip DRM is fully atomic and commit is deprecated for atomic
drivers.  No changed are needed beyond renaming the function.

Signed-off-by: John Keeping <john@metanate.com>
---
Unchanged in v2
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 8b83ae50c8f3..bbd992299f73 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -849,7 +849,7 @@ static void dw_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
 	clk_disable_unprepare(dsi->pclk);
 }
 
-static void dw_mipi_dsi_encoder_commit(struct drm_encoder *encoder)
+static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 {
 	struct dw_mipi_dsi *dsi = encoder_to_dsi(encoder);
 	int mux = drm_of_encoder_active_endpoint_id(dsi->dev->of_node, encoder);
@@ -926,7 +926,7 @@ dw_mipi_dsi_encoder_atomic_check(struct drm_encoder *encoder,
 
 static struct drm_encoder_helper_funcs
 dw_mipi_dsi_encoder_helper_funcs = {
-	.commit = dw_mipi_dsi_encoder_commit,
+	.enable = dw_mipi_dsi_encoder_enable,
 	.mode_set = dw_mipi_dsi_encoder_mode_set,
 	.disable = dw_mipi_dsi_encoder_disable,
 	.atomic_check = dw_mipi_dsi_encoder_atomic_check,
-- 
2.11.0.197.gb556de5.dirty
