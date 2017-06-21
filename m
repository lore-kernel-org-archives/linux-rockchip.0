From: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 1/2] drm/rockchip: add const to drm_encoder_helper_funcs structures
Date: Wed, 21 Jun 2017 12:01:10 +0530
Message-ID: <1498026670-10671-3-git-send-email-bhumirks@gmail.com>
References: <1498026670-10671-1-git-send-email-bhumirks@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1498026670-10671-1-git-send-email-bhumirks@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: julia.lawall@lip6.fr, maxime.ripard@free-electrons.com, airlied@linux.ie, wens@csie.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Add const to drm_encoder_helper_funcs structures as they are only passed
as an argument to the function drm_encoder_helper_add and this argument
is of type const. So, add const to these structures.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2 -
* Let the line exceed over 80 characters while adding const.

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
 drivers/gpu/drm/rockchip/inno_hdmi.c            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 9606121..b64cadc 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -252,7 +252,7 @@ rockchip_dp_drm_encoder_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
-static struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs = {
+static const struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs = {
 	.mode_fixup = rockchip_dp_drm_encoder_mode_fixup,
 	.mode_set = rockchip_dp_drm_encoder_mode_set,
 	.enable = rockchip_dp_drm_encoder_enable,
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 7d9b75e..4ab9fad 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -530,7 +530,7 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
-static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
+static const struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.enable     = inno_hdmi_encoder_enable,
 	.disable    = inno_hdmi_encoder_disable,
 	.mode_fixup = inno_hdmi_encoder_mode_fixup,
-- 
2.7.4
