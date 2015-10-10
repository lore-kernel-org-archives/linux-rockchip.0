From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH 03/10] drm/dsi: Add a helper to get bits per pixel of MIPI DSI pixel format
Date: Sat, 10 Oct 2015 17:55:23 +0800
Message-ID: <1444470930-17150-4-git-send-email-zyw@rock-chips.com>
References: <1444470930-17150-1-git-send-email-zyw@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1444470930-17150-1-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: Liu Ying <Ying.liu@freescale.com>, Liu Ying <Ying.Liu@freescale.com>, Chris Zhong <zyw@rock-chips.com>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Liu Ying <Ying.liu@freescale.com>

Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
Acked-by: Thierry Reding <treding@nvidia.com>
Signed-off-by: Chris Zhong <zyw@rock-chips.com>
---

 include/drm/drm_mipi_dsi.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index f1d8d0d..3662021 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -163,6 +163,20 @@ static inline struct mipi_dsi_device *to_mipi_dsi_device(struct device *dev)
 	return container_of(dev, struct mipi_dsi_device, dev);
 }
 
+static inline int mipi_dsi_pixel_format_to_bpp(enum mipi_dsi_pixel_format fmt)
+{
+	switch (fmt) {
+	case MIPI_DSI_FMT_RGB888:
+	case MIPI_DSI_FMT_RGB666:
+		return 24;
+	case MIPI_DSI_FMT_RGB666_PACKED:
+		return 18;
+	case MIPI_DSI_FMT_RGB565:
+		return 16;
+	}
+	return -EINVAL;
+}
+
 struct mipi_dsi_device *of_find_mipi_dsi_device_by_node(struct device_node *np);
 int mipi_dsi_attach(struct mipi_dsi_device *dsi);
 int mipi_dsi_detach(struct mipi_dsi_device *dsi);
-- 
2.6.1
