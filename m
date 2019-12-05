From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v4 2/4] media: hantro: Cleanup format negotiation helpers
Date: Thu,  5 Dec 2019 11:24:41 -0300
Message-ID: <20191205142443.1298-3-ezequiel@collabora.com>
References: <20191205142443.1298-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191205142443.1298-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Chris Healy <cphealy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Format negotiation helpers, hantro_find_format()
and hantro_get_default_fmt() can be simplified,
making the code a little bit clearer.

More importantly, this change is preparation work
for the post-processor usage.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Reviewed-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 53 ++++++++--------------
 1 file changed, 20 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 1dae76f20034..af27edd58a0b 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -47,23 +47,26 @@ hantro_get_formats(const struct hantro_ctx *ctx, unsigned int *num_fmts)
 }
 
 static const struct hantro_fmt *
-hantro_find_format(const struct hantro_fmt *formats, unsigned int num_fmts,
-		   u32 fourcc)
+hantro_find_format(const struct hantro_ctx *ctx, u32 fourcc)
 {
-	unsigned int i;
+	const struct hantro_fmt *formats;
+	unsigned int i, num_fmts;
 
+	formats = hantro_get_formats(ctx, &num_fmts);
 	for (i = 0; i < num_fmts; i++)
 		if (formats[i].fourcc == fourcc)
 			return &formats[i];
+
 	return NULL;
 }
 
 static const struct hantro_fmt *
-hantro_get_default_fmt(const struct hantro_fmt *formats, unsigned int num_fmts,
-		       bool bitstream)
+hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
 {
-	unsigned int i;
+	const struct hantro_fmt *formats;
+	unsigned int i, num_fmts;
 
+	formats = hantro_get_formats(ctx, &num_fmts);
 	for (i = 0; i < num_fmts; i++) {
 		if (bitstream == (formats[i].codec_mode !=
 				  HANTRO_MODE_NONE))
@@ -89,8 +92,7 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 				  struct v4l2_frmsizeenum *fsize)
 {
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
-	const struct hantro_fmt *formats, *fmt;
-	unsigned int num_fmts;
+	const struct hantro_fmt *fmt;
 
 	if (fsize->index != 0) {
 		vpu_debug(0, "invalid frame size index (expected 0, got %d)\n",
@@ -98,8 +100,7 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 		return -EINVAL;
 	}
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	fmt = hantro_find_format(formats, num_fmts, fsize->pixel_format);
+	fmt = hantro_find_format(ctx, fsize->pixel_format);
 	if (!fmt) {
 		vpu_debug(0, "unsupported bitstream format (%08x)\n",
 			  fsize->pixel_format);
@@ -196,8 +197,7 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 {
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	const struct hantro_fmt *formats, *fmt, *vpu_fmt;
-	unsigned int num_fmts;
+	const struct hantro_fmt *fmt, *vpu_fmt;
 	bool coded;
 
 	coded = capture == hantro_is_encoder_ctx(ctx);
@@ -208,10 +208,9 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 		  (pix_mp->pixelformat >> 16) & 0x7f,
 		  (pix_mp->pixelformat >> 24) & 0x7f);
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	fmt = hantro_find_format(formats, num_fmts, pix_mp->pixelformat);
+	fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	if (!fmt) {
-		fmt = hantro_get_default_fmt(formats, num_fmts, coded);
+		fmt = hantro_get_default_fmt(ctx, coded);
 		f->fmt.pix_mp.pixelformat = fmt->fourcc;
 	}
 
@@ -306,12 +305,10 @@ hantro_reset_fmt(struct v4l2_pix_format_mplane *fmt,
 static void
 hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 {
-	const struct hantro_fmt *vpu_fmt, *formats;
+	const struct hantro_fmt *vpu_fmt;
 	struct v4l2_pix_format_mplane *fmt;
-	unsigned int num_fmts;
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	vpu_fmt = hantro_get_default_fmt(formats, num_fmts, true);
+	vpu_fmt = hantro_get_default_fmt(ctx, true);
 
 	if (hantro_is_encoder_ctx(ctx)) {
 		ctx->vpu_dst_fmt = vpu_fmt;
@@ -332,12 +329,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 static void
 hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 {
-	const struct hantro_fmt *raw_vpu_fmt, *formats;
+	const struct hantro_fmt *raw_vpu_fmt;
 	struct v4l2_pix_format_mplane *raw_fmt, *encoded_fmt;
-	unsigned int num_fmts;
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	raw_vpu_fmt = hantro_get_default_fmt(formats, num_fmts, false);
+	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
 
 	if (hantro_is_encoder_ctx(ctx)) {
 		ctx->vpu_src_fmt = raw_vpu_fmt;
@@ -384,8 +379,6 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
-	const struct hantro_fmt *formats;
-	unsigned int num_fmts;
 	int ret;
 
 	ret = vidioc_try_fmt_out_mplane(file, priv, f);
@@ -421,9 +414,7 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 			return -EBUSY;
 	}
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	ctx->vpu_src_fmt = hantro_find_format(formats, num_fmts,
-					      pix_mp->pixelformat);
+	ctx->vpu_src_fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	ctx->src_fmt = *pix_mp;
 
 	/*
@@ -457,9 +448,7 @@ static int vidioc_s_fmt_cap_mplane(struct file *file, void *priv,
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
-	const struct hantro_fmt *formats;
 	struct vb2_queue *vq;
-	unsigned int num_fmts;
 	int ret;
 
 	/* Change not allowed if queue is busy. */
@@ -488,9 +477,7 @@ static int vidioc_s_fmt_cap_mplane(struct file *file, void *priv,
 	if (ret)
 		return ret;
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	ctx->vpu_dst_fmt = hantro_find_format(formats, num_fmts,
-					      pix_mp->pixelformat);
+	ctx->vpu_dst_fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	ctx->dst_fmt = *pix_mp;
 
 	/*
-- 
2.22.0
