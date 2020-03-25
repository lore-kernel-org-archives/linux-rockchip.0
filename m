From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 4/7] hantro: Remove unneeded hantro_dec_buf_finish
Date: Wed, 25 Mar 2020 18:34:35 -0300
Message-ID: <20200325213439.16509-5-ezequiel@collabora.com>
References: <20200325213439.16509-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200325213439.16509-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jeffrey Kardatzke <jkardatzke-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Since now .buf_prepare takes care of setting the
buffer payload size, we can get rid of this,
at least for decoders.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index d0097c5fe7d9..0db8ad455160 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -80,15 +80,6 @@ hantro_enc_buf_finish(struct hantro_ctx *ctx, struct vb2_buffer *buf,
 	return 0;
 }
 
-static int
-hantro_dec_buf_finish(struct hantro_ctx *ctx, struct vb2_buffer *buf,
-		      unsigned int bytesused)
-{
-	/* For decoders set bytesused as per the output picture. */
-	buf->planes[0].bytesused = ctx->dst_fmt.plane_fmt[0].sizeimage;
-	return 0;
-}
-
 static void hantro_job_finish(struct hantro_dev *vpu,
 			      struct hantro_ctx *ctx,
 			      unsigned int bytesused,
@@ -431,7 +422,6 @@ static int hantro_open(struct file *filp)
 		ctx->buf_finish = hantro_enc_buf_finish;
 	} else if (func->id == MEDIA_ENT_F_PROC_VIDEO_DECODER) {
 		allowed_codecs = vpu->variant->codec & HANTRO_DECODERS;
-		ctx->buf_finish = hantro_dec_buf_finish;
 	} else {
 		ret = -ENODEV;
 		goto err_ctx_free;
-- 
2.26.0.rc2
