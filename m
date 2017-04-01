From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v2 8/9] drm/rockchip: gem: Don't alloc/free gem buf before drm dev registered
Date: Sat,  1 Apr 2017 19:35:28 +0800
Message-ID: <1491046529-4310-9-git-send-email-jeffy.chen@rock-chips.com>
References: <1491046529-4310-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491046529-4310-1-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

Changes in v2: None

 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index df9e570..2bf8024 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -184,6 +184,9 @@ static int rockchip_gem_alloc_buf(struct rockchip_gem_object *rk_obj,
 	struct drm_device *drm = obj->dev;
 	struct rockchip_drm_private *private = drm->dev_private;
 
+	if (!drm->registered)
+		return -ENODEV;
+
 	if (private->domain)
 		return rockchip_gem_alloc_iommu(rk_obj, alloc_kmap);
 	else
@@ -208,6 +211,11 @@ static void rockchip_gem_free_dma(struct rockchip_gem_object *rk_obj)
 
 static void rockchip_gem_free_buf(struct rockchip_gem_object *rk_obj)
 {
+	struct drm_device *drm = rk_obj->base.dev;
+
+	if (!drm->registered)
+		return;
+
 	if (rk_obj->pages)
 		rockchip_gem_free_iommu(rk_obj);
 	else
-- 
2.1.4
