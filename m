From: zain wang <wzz@rock-chips.com>
Subject: [PATCH] drm/panel: simple: add 8bit-bps for Sharp lq123p1jx31
Date: Sat, 19 Nov 2016 10:27:16 +0800
Message-ID: <1479522436-7752-1-git-send-email-wzz@rock-chips.com>
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
Sender: linux-samsung-soc-owner@vger.kernel.org
To: Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>, Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, Mika Kahola <mika.kahola@intel.com>, =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>, Tomasz Figa <tfiga@chromium.org>, dianders@chromium.org, Thierry Reding <treding@nvidia.com>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>, Javier Martinez Canillas <javier@osg.samsung.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, zain wang <wzz@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Sharp lq123p1jx31 support 8bit bps.

Signed-off-by: zain wang <wzz@rock-chips.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 113db3c..6b0c026 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1409,6 +1409,7 @@ static const struct drm_display_mode sharp_lq123p1jx31_mode = {
 static const struct panel_desc sharp_lq123p1jx31 = {
 	.modes = &sharp_lq123p1jx31_mode,
 	.num_modes = 1,
+	.bpc = 8,
 	.size = {
 		.width = 259,
 		.height = 173,
-- 
1.9.1
