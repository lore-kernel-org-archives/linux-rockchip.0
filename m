From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v5 02/15] media: v4l2-common: Add an helper to apply frmsize
 constraints
Date: Fri,  3 May 2019 13:47:06 +0200
Message-ID: <20190503114719.28784-3-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190503114719.28784-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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

The rockchip VPU driver is open-coding this logic which seems pretty
generic. Let's provide an helper to apply the min/max and alignment
constraints on width/height.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
Changes in v5:
* New patch
---
 drivers/media/v4l2-core/v4l2-common.c | 27 +++++++++++++++++++++++++++
 include/media/v4l2-common.h           |  2 ++
 2 files changed, 29 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 6ae84aa1f7a9..3c6f5c115fc5 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -331,6 +331,16 @@ static unsigned int clamp_align(unsigned int x, unsigned int min,
 	return x;
 }
 
+static unsigned int clamp_roundup(unsigned int x, unsigned int min,
+				   unsigned int max, unsigned int alignment)
+{
+	x = clamp(x, min, max);
+	if (alignment)
+		x = round_up(x, alignment);
+
+	return x;
+}
+
 void v4l_bound_align_image(u32 *w, unsigned int wmin, unsigned int wmax,
 			   unsigned int walign,
 			   u32 *h, unsigned int hmin, unsigned int hmax,
@@ -519,6 +529,23 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
 	return info->block_h[plane];
 }
 
+void v4l2_apply_frmsize_constraints(u32 *width, u32 *height,
+				    const struct v4l2_frmsize_stepwise *frmsize)
+{
+	if (!frmsize)
+		return;
+
+	/*
+	 * Clamp width/height to meet min/max constraints and round it up to
+	 * macroblock alignment.
+	 */
+	*width = clamp_roundup(*width, frmsize->min_width, frmsize->max_width,
+			       frmsize->step_width);
+        *height = clamp_roundup(*height, frmsize->min_height, frmsize->max_height,
+				frmsize->step_height);
+}
+EXPORT_SYMBOL_GPL(v4l2_apply_frmsize_constraints);
+
 int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 			u32 pixelformat, u32 width, u32 height)
 {
diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
index 3226bc8107cc..e826b154bc35 100644
--- a/include/media/v4l2-common.h
+++ b/include/media/v4l2-common.h
@@ -420,6 +420,8 @@ struct v4l2_format_info {
 
 const struct v4l2_format_info *v4l2_format_info(u32 format);
 
+void v4l2_apply_frmsize_constraints(u32 *width, u32 *height,
+				    const struct v4l2_frmsize_stepwise *frmsize);
 int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
 		     u32 width, u32 height);
 int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, u32 pixelformat,
-- 
2.20.1
