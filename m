From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH 39/40] drm/rockchip: analogix_dp: Fix invalid implementation of unbind
Date: Mon, 15 Jan 2018 18:16:13 +0100
Message-ID: <20180115171614.14474-40-thierry.escande@collabora.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-1-thierry.escande@collabora.com>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>
Cc: Tomasz Figa <tfiga@chromium.org>, Haixia Shi <hshi@chromium.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>, zain wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

From: Tomasz Figa <tfiga@chromium.org>

Current implementation of unbind dereferences the drvdata pointer
assuming that it's its own data, however the ownership belongs to the
analogix code, which means that the pointer is dereferenced with wrong
type. Fix this by using the recently added platform data .cleanup()
callback to do Rockchip-specific things at unbind.

Cc: Kristian H. Kristensen <hoegsberg@chromium.org>
Cc: Brian Norris <briannorris@chromium.org>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
[seanpaul fixed conflict keeping rockchip_dp_unbind() preserving clk_unprepare]
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index a6a3d6f1f127..eaa025730c28 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -161,6 +161,13 @@ static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
 	return 0;
 }
 
+static void rockchip_dp_cleanup(struct analogix_dp_plat_data *plat_data)
+{
+	struct rockchip_dp_device *dp = to_dp(plat_data);
+
+	rockchip_drm_psr_unregister(&dp->encoder);
+}
+
 static bool
 rockchip_dp_drm_encoder_mode_fixup(struct drm_encoder *encoder,
 				   const struct drm_display_mode *mode,
@@ -333,6 +340,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 	dp->plat_data.power_on = rockchip_dp_poweron;
 	dp->plat_data.power_off = rockchip_dp_powerdown;
 	dp->plat_data.get_modes = rockchip_dp_get_modes;
+	dp->plat_data.cleanup = rockchip_dp_cleanup;
 
 	ret = rockchip_drm_psr_register(&dp->encoder, analogix_dp_psr_set);
 	if (ret < 0)
@@ -358,7 +366,6 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
 
 	analogix_dp_unbind(dp->adp);
-	rockchip_drm_psr_unregister(&dp->encoder);
 	dp->encoder.funcs->destroy(&dp->encoder);
 }
 
-- 
2.14.1
