From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v6 01/16] media: v4l2-common: Fix v4l2_fill_pixfmt[_mp]()
 prototypes
Date: Tue, 28 May 2019 14:02:17 -0300
Message-ID: <20190528170232.2091-2-ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190528170232.2091-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

Width/height and 4CC formats are expressed using u32 types everywhere,
let's fix the v4l2_fill_pixfmt[_mp]() prototypes to do the same.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes from v5:
* None

Changes from v4:
* New patch

 drivers/media/v4l2-core/v4l2-common.c | 5 +++--
 include/media/v4l2-common.h           | 8 ++++----
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index b5778b2ffa27..9417a883ebe3 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -542,7 +542,7 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
 }
 
 int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
-			 int pixelformat, int width, int height)
+			u32 pixelformat, u32 width, u32 height)
 {
 	const struct v4l2_format_info *info;
 	struct v4l2_plane_pix_format *plane;
@@ -596,7 +596,8 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 }
 EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt_mp);
 
-int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, int pixelformat, int width, int height)
+int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
+		     u32 width, u32 height)
 {
 	const struct v4l2_format_info *info;
 	int i;
diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
index 0a41bbecf3d3..3226bc8107cc 100644
--- a/include/media/v4l2-common.h
+++ b/include/media/v4l2-common.h
@@ -420,9 +420,9 @@ struct v4l2_format_info {
 
 const struct v4l2_format_info *v4l2_format_info(u32 format);
 
-int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, int pixelformat,
-		     int width, int height);
-int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, int pixelformat,
-			int width, int height);
+int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
+		     u32 width, u32 height);
+int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, u32 pixelformat,
+			u32 width, u32 height);
 
 #endif /* V4L2_COMMON_H_ */
-- 
2.20.1
