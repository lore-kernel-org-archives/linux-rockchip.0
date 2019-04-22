From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 07/15] rockchip/vpu: Rename rockchip_vpu_common.h into
 rockchip_vpu_v4l2.h
Date: Mon, 22 Apr 2019 10:08:10 +0200
Message-ID: <20190422080818.29130-8-boris.brezillon@collabora.com>
References: <20190422080818.29130-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190422080818.29130-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

We're about to add prototypes for the vb2/v4l2 helpers shared by the
encoder/decoder logic in this file, so let's pick a name that reflects
that (rockchip_vpu_common.h was a bit to generic).

Suggested-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes from v2:
* New patch
---
 drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 2 +-
 drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c | 2 +-
 drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c       | 2 +-
 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c       | 2 +-
 .../vpu/{rockchip_vpu_common.h => rockchip_vpu_v4l2.h}      | 6 +++---
 5 files changed, 7 insertions(+), 7 deletions(-)
 rename drivers/staging/media/rockchip/vpu/{rockchip_vpu_common.h => rockchip_vpu_v4l2.h} (88%)

diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
index 791353ae01e7..68176e91330a 100644
--- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
@@ -9,7 +9,7 @@
 #include <media/v4l2-mem2mem.h>
 #include "rockchip_vpu_jpeg.h"
 #include "rockchip_vpu.h"
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 #include "rockchip_vpu_hw.h"
 #include "rk3288_vpu_regs.h"
 
diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
index 74823d25cd8d..460edc5ebe4d 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
@@ -27,7 +27,7 @@
 #include <media/v4l2-mem2mem.h>
 #include "rockchip_vpu_jpeg.h"
 #include "rockchip_vpu.h"
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 #include "rockchip_vpu_hw.h"
 #include "rk3399_vpu_regs.h"
 
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 86a34df16b58..a0d25bbbfa49 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -24,7 +24,7 @@
 #include <media/videobuf2-core.h>
 #include <media/videobuf2-vmalloc.h>
 
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 #include "rockchip_vpu.h"
 #include "rockchip_vpu_hw.h"
 
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index 7ca3025f64f9..09ebc3934389 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -28,7 +28,7 @@
 
 #include "rockchip_vpu.h"
 #include "rockchip_vpu_hw.h"
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 
 static const struct rockchip_vpu_fmt *
 rockchip_vpu_find_format(struct rockchip_vpu_ctx *ctx, u32 fourcc)
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_common.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
similarity index 88%
rename from drivers/staging/media/rockchip/vpu/rockchip_vpu_common.h
rename to drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
index ca77668d9579..50ad40dfb4f4 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_common.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
@@ -13,8 +13,8 @@
  * Copyright (C) 2011 Samsung Electronics Co., Ltd.
  */
 
-#ifndef ROCKCHIP_VPU_COMMON_H_
-#define ROCKCHIP_VPU_COMMON_H_
+#ifndef ROCKCHIP_VPU_V4L2_H_
+#define ROCKCHIP_VPU_V4L2_H_
 
 #include "rockchip_vpu.h"
 
@@ -26,4 +26,4 @@ void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
 void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 				    struct rockchip_vpu_ctx *ctx);
 
-#endif /* ROCKCHIP_VPU_COMMON_H_ */
+#endif /* ROCKCHIP_VPU_V4L2_H_ */
-- 
2.20.1
