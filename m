From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH] drm/rockchip: fix compile warnings for 64-bit
Date: Thu,  9 Jun 2016 10:46:32 -0700
Message-ID: <1465494392-92489-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Brian Norris <computersforpeace-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Rockchip DRM does not yet build properly for ARM64, but we might as well
get the printf formatting correct now, to avoid the following warnings:

drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c: In function 'rockchip_drm_fbdev_create':
drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c:111:2: warning: format '%d' expects argument of type 'int', but argument 8 has type 'size_t' [-Wformat=]
  DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=%p offset=%ld size=%d\n",
  ^

drivers/gpu/drm/rockchip/rockchip_drm_gem.c: In function 'rockchip_gem_alloc_buf':
drivers/gpu/drm/rockchip/rockchip_drm_gem.c:41:3: warning: format '%x' expects argument of type 'unsigned int', but argument 2 has type 'size_t' [-Wformat=]
   DRM_ERROR("failed to allocate %#x byte dma buffer", obj->size);
   ^

Signed-off-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
index f261512bb4a0..bab4cd18b6b0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
@@ -108,7 +108,7 @@ static int rockchip_drm_fbdev_create(struct drm_fb_helper *helper,
 	fbi->screen_size = rk_obj->base.size;
 	fbi->fix.smem_len = rk_obj->base.size;
 
-	DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=%p offset=%ld size=%d\n",
+	DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=%p offset=%ld size=%zu\n",
 		      fb->width, fb->height, fb->depth, rk_obj->kvaddr,
 		      offset, size);
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 9c2d8a894093..059e902f872d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -38,7 +38,7 @@ static int rockchip_gem_alloc_buf(struct rockchip_gem_object *rk_obj,
 					 &rk_obj->dma_addr, GFP_KERNEL,
 					 &rk_obj->dma_attrs);
 	if (!rk_obj->kvaddr) {
-		DRM_ERROR("failed to allocate %#x byte dma buffer", obj->size);
+		DRM_ERROR("failed to allocate %zu byte dma buffer", obj->size);
 		return -ENOMEM;
 	}
 
-- 
2.8.0.rc3.226.g39d4020
