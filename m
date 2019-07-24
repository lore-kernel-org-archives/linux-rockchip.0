From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 2/7] media: hantro: Simplify the controls creation logic
Date: Wed, 24 Jul 2019 14:16:57 -0300
Message-ID: <20190724171702.9449-3-ezequiel@collabora.com>
References: <20190724171702.9449-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190724171702.9449-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: fbuergisser-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

v4l2_ctrl_new_custom() should work for any kind of control, including
standard ones. With that change, we automatically get support for
menu controls.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/staging/media/hantro/hantro.h     |  2 --
 drivers/staging/media/hantro/hantro_drv.c | 28 +++++++----------------
 2 files changed, 8 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 4d7cb7780bde..81e25dfc98b7 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -113,12 +113,10 @@ enum hantro_codec_mode {
 
 /*
  * struct hantro_ctrl - helper type to declare supported controls
- * @id:		V4L2 control ID (V4L2_CID_xxx)
  * @codec:	codec id this control belong to (HANTRO_JPEG_ENCODER, etc.)
  * @cfg:	control configuration
  */
 struct hantro_ctrl {
-	unsigned int id;
 	unsigned int codec;
 	struct v4l2_ctrl_config cfg;
 };
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 4eae1dbb1ac8..ff2dcbf43e81 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -264,31 +264,29 @@ static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 
 static struct hantro_ctrl controls[] = {
 	{
-		.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
 		.codec = HANTRO_JPEG_ENCODER,
 		.cfg = {
+			.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
 			.min = 5,
 			.max = 100,
 			.step = 1,
 			.def = 50,
+			.ops = &hantro_ctrl_ops,
 		},
 	}, {
-		.id = V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
 		.codec = HANTRO_MPEG2_DECODER,
 		.cfg = {
-			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_slice_params),
+			.id = V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
 		},
 	}, {
-		.id = V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
 		.codec = HANTRO_MPEG2_DECODER,
 		.cfg = {
-			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_quantization),
+			.id = V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
 		},
 	}, {
-		.id = V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER,
 		.codec = HANTRO_VP8_DECODER,
 		.cfg = {
-			.elem_size = sizeof(struct v4l2_ctrl_vp8_frame_header),
+			.id = V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER,
 		},
 	},
 };
@@ -304,22 +302,12 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 	for (i = 0; i < num_ctrls; i++) {
 		if (!(allowed_codecs & controls[i].codec))
 			continue;
-		if (!controls[i].cfg.elem_size) {
-			v4l2_ctrl_new_std(&ctx->ctrl_handler,
-					  &hantro_ctrl_ops,
-					  controls[i].id, controls[i].cfg.min,
-					  controls[i].cfg.max,
-					  controls[i].cfg.step,
-					  controls[i].cfg.def);
-		} else {
-			controls[i].cfg.id = controls[i].id;
-			v4l2_ctrl_new_custom(&ctx->ctrl_handler,
-					     &controls[i].cfg, NULL);
-		}
 
+		v4l2_ctrl_new_custom(&ctx->ctrl_handler,
+				     &controls[i].cfg, NULL);
 		if (ctx->ctrl_handler.error) {
 			vpu_err("Adding control (%d) failed %d\n",
-				controls[i].id,
+				controls[i].cfg.id,
 				ctx->ctrl_handler.error);
 			v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 			return ctx->ctrl_handler.error;
-- 
2.22.0
