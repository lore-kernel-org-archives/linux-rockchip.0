From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v9 1/5] drm/rockchip: dw-mipi-dsi: Fix connector and encoder
 cleanup.
Date: Fri,  2 Mar 2018 18:57:53 +0100
Message-ID: <20180302175757.28192-2-enric.balletbo@collabora.com>
References: <20180302175757.28192-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180302175757.28192-1-enric.balletbo@collabora.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Archit Taneja <architt@codeaurora.org>, Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>, Russell King <rmk+kernel@armlinux.org.uk>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

In bind()'s error handling path call destroy functions instead of
cleanup functions for encoder and connector and reorder to match how is
called in bind().

In unbind() call the connector and encoder destroy functions.

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v9:
- Removed the pm_runtime_disable call as is not really needed.

 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 591953cbdd18..d53d5a09547f 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -1302,8 +1302,8 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 err_mipi_dsi_host:
 	mipi_dsi_host_unregister(&dsi->dsi_host);
 err_cleanup:
-	drm_encoder_cleanup(&dsi->encoder);
-	drm_connector_cleanup(&dsi->connector);
+	dsi->connector.funcs->destroy(&dsi->connector);
+	dsi->encoder.funcs->destroy(&dsi->encoder);
 err_pllref:
 	clk_disable_unprepare(dsi->pllref_clk);
 	return ret;
@@ -1316,6 +1316,10 @@ static void dw_mipi_dsi_unbind(struct device *dev, struct device *master,
 
 	mipi_dsi_host_unregister(&dsi->dsi_host);
 	pm_runtime_disable(dev);
+
+	dsi->connector.funcs->destroy(&dsi->connector);
+	dsi->encoder.funcs->destroy(&dsi->encoder);
+
 	clk_disable_unprepare(dsi->pllref_clk);
 }
 
-- 
2.16.1
