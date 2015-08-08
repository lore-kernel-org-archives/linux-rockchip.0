From: Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [PATCH 02/12] drm: bridge/dw_hdmi: don't support any pixel doubled
 modes
Date: Sat, 08 Aug 2015 17:03:29 +0100
Message-ID: <E1ZO6an-0002qT-Ue@rmk-PC.arm.linux.org.uk>
References: <20150808160251.GM7557@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20150808160251.GM7557@n2100.arm.linux.org.uk>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Fabio Estevam <fabio.estevam@freescale.com>, Sascha Hauer <s.hauer@pengutronix.de>, Jon Nettleton <jon.nettleton@gmail.com>, David Airlie <airlied@linux.ie>
List-Id: linux-rockchip.vger.kernel.org

As mentioned in the previous commit, the dw-hdmi driver does not support
pixel doubled modes at present; it does not configure the PLL correctly
for these modes.  Therefore, filter out the double-clocked modes as we
presently are unable to support them.

Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
---
 drivers/gpu/drm/bridge/dw_hdmi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
index 1c0ee3476138..8edf4c31f55c 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -1448,6 +1448,10 @@ dw_hdmi_connector_mode_valid(struct drm_connector *connector,
 					   struct dw_hdmi, connector);
 	enum drm_mode_status mode_status = MODE_OK;
 
+	/* We don't support double-clocked modes */
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		return MODE_BAD;
+
 	if (hdmi->plat_data->mode_valid)
 		mode_status = hdmi->plat_data->mode_valid(connector, mode);
 
-- 
2.1.0
