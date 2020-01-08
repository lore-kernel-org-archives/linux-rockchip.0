From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 06/14] drm/rockchip: dw-hdmi: allow high tmds bit rates
Date: Wed, 08 Jan 2020 21:07:49 +0000 (UTC)
Message-ID: <20200108210740.28769-7-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Kishon Vijay Abraham I <kishon@ti.com>, Zheng Yang <zhengyang@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Prepare support for High TMDS Bit Rates used by HDMI2.0 display modes.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 7f56d8c3491d..fae38b323a0c 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -318,6 +318,8 @@ static int dw_hdmi_rockchip_genphy_init(struct dw_hdmi *dw_hdmi, void *data,
 {
 	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
 
+	dw_hdmi_set_high_tmds_clock_ratio(dw_hdmi);
+
 	return phy_power_on(hdmi->phy);
 }
 
-- 
2.17.1
