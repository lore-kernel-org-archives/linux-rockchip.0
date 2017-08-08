From: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 3/3] drm/rockchip: make drm_connector_funcs structures const
Date: Tue,  8 Aug 2017 16:58:32 +0530
Message-ID: <1502191712-11231-4-git-send-email-bhumirks@gmail.com>
References: <1502191712-11231-1-git-send-email-bhumirks@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1502191712-11231-1-git-send-email-bhumirks@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: julia.lawall@lip6.fr, architt@codeaurora.org, a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, maxime.ripard@free-electrons.com, wens@csie.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Make these const as they are only passed to the function
drm_connector_init and the corresponding argument is of type const.
Done using Coccinelle

@match disable optional_qualifier@
identifier s;
@@
static struct drm_connector_funcs s = {...};

@ref@
position p;
identifier match.s;
@@
s@p

@good1@
identifier match.s;
expression e1,e2;
position ref.p;
@@
drm_connector_init(e1,e2,&s@p,...)

@bad depends on  !good1@
position ref.p;
identifier match.s;
@@
s@p

@depends on forall !bad disable optional_qualifier@
identifier match.s;
@@
static
+ const
struct drm_connector_funcs s;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 7149968..1a1a3dd 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -592,7 +592,7 @@ static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 	drm_connector_cleanup(connector);
 }
 
-static struct drm_connector_funcs inno_hdmi_connector_funcs = {
+static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
 	.dpms = drm_atomic_helper_connector_dpms,
 	.fill_modes = inno_hdmi_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
-- 
1.9.1
