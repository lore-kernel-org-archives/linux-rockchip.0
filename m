From: Yakir Yang <ykk@rock-chips.com>
Subject: [PATCH v4 1/3] drm: bridge/dw_hdmi: fixed codec style
Date: Tue, 31 Mar 2015 23:55:59 -0400
Message-ID: <1427860559-13409-1-git-send-email-ykk@rock-chips.com>
References: <1427860227-12042-1-git-send-email-ykk@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1427860227-12042-1-git-send-email-ykk@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King <rmk+kernel@arm.linux.org.uk>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Fabio Estevam <fabio.estevam@freescale.com>, Yakir Yang <ykk@rock-chips.com>, djkurtz@chromium.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Using a local struct pointer to reduce one level of indirection
makes the code slightly more readable.

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
---
Changes in v4: None
Changes in v3:
- make commit message more readable

Changes in v2: None

 drivers/gpu/drm/bridge/dw_hdmi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
index cd6a706..7b61ae8 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -753,10 +753,10 @@ static int hdmi_phy_configure(struct dw_hdmi *hdmi, unsigned char prep,
 {
 	unsigned res_idx, i;
 	u8 val, msec;
-	const struct dw_hdmi_mpll_config *mpll_config =
-						hdmi->plat_data->mpll_cfg;
-	const struct dw_hdmi_curr_ctrl *curr_ctrl = hdmi->plat_data->cur_ctr;
-	const struct dw_hdmi_sym_term *sym_term =  hdmi->plat_data->sym_term;
+	const struct dw_hdmi_plat_data *plat_data = hdmi->plat_data;
+	const struct dw_hdmi_mpll_config *mpll_config = plat_data->mpll_cfg;
+	const struct dw_hdmi_curr_ctrl *curr_ctrl = plat_data->cur_ctr;
+	const struct dw_hdmi_sym_term *sym_term = plat_data->sym_term;
 
 	if (prep)
 		return -EINVAL;
-- 
2.1.2
