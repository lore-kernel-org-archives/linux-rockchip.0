From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v9 3/5] drm/rockchip: inno_hdmi: reorder clk_disable_unprepare call in unbind
Date: Fri,  2 Mar 2018 18:57:55 +0100
Message-ID: <20180302175757.28192-4-enric.balletbo@collabora.com>
References: <20180302175757.28192-1-enric.balletbo@collabora.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180302175757.28192-1-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Andrzej Hajda <a.hajda@samsung.com>, linux-rockchip@lists.infradead.org, Archit Taneja <architt@codeaurora.org>, linux-kernel@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>, Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org, Jose Abreu <Jose.Abreu@synopsys.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jernej Skrabec <jernej.skrabec@siol.net>, linux-arm-kernel@lists.infradead.org, David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>, kernel@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

In bind the clk_prepare_enable of the HDMI pclk is called before adding the
i2c_adapter. So it should be the other way around in unbind, first remove
the i2c_adapter and then call the clk_disable_unprepare.

Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v9:
- Added new patch to reorder clk_disable_unprepare call in inno_hdmi
  unbind()

 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index a5c661930250..88d0774c97bd 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -906,8 +906,8 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->connector.funcs->destroy(&hdmi->connector);
 	hdmi->encoder.funcs->destroy(&hdmi->encoder);
 
-	clk_disable_unprepare(hdmi->pclk);
 	i2c_put_adapter(hdmi->ddc);
+	clk_disable_unprepare(hdmi->pclk);
 }
 
 static const struct component_ops inno_hdmi_ops = {
-- 
2.16.1
