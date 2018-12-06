From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2] media: rockchip vpu: remove some unused vars
Date: Thu, 06 Dec 2018 19:39:44 -0300
Message-ID: <80e6ccf201a0e956997651ae8cf698c0b7a9621f.camel@collabora.com>
References: <10b532d7f12ef0718028a3ecb4f00974ebd80c4c.1544054436.git.mchehab+samsung@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <10b532d7f12ef0718028a3ecb4f00974ebd80c4c.1544054436.git.mchehab+samsung@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@infradead.org>, linux-rockchip@lists.infradead.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 2018-12-05 at 19:01 -0500, Mauro Carvalho Chehab wrote:
> As complained by gcc:
> 
> 	drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c: In function 'rk3288_vpu_jpeg_enc_set_qtable':
> 	drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c:70:10: warning: variable 'chroma_qtable_p' set but not used [-Wunused-but-set-
> variable]
> 	  __be32 *chroma_qtable_p;
> 	          ^~~~~~~~~~~~~~~
> 	drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c:69:10: warning: variable 'luma_qtable_p' set but not used [-Wunused-but-set-
> variable]
> 	  __be32 *luma_qtable_p;
> 	          ^~~~~~~~~~~~~
> 	drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c: In function 'rk3399_vpu_jpeg_enc_set_qtable':
> 	drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c:101:10: warning: variable 'chroma_qtable_p' set but not used [-Wunused-but-set-
> variable]
> 	  __be32 *chroma_qtable_p;
> 	          ^~~~~~~~~~~~~~~
> 	drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c:100:10: warning: variable 'luma_qtable_p' set but not used [-Wunused-but-set-
> variable]
> 	  __be32 *luma_qtable_p;
> 	          ^~~~~~~~~~~~~
> 	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c: In function 'rockchip_vpu_queue_setup':
> 	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c:522:33: warning: variable 'vpu_fmt' set but not used [-Wunused-but-set-variable]
> 	  const struct rockchip_vpu_fmt *vpu_fmt;
> 	                                 ^~~~~~~
> 	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c: In function 'rockchip_vpu_buf_prepare':
> 	drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c:560:33: warning: variable 'vpu_fmt' set but not used [-Wunused-but-set-variable]
> 	  const struct rockchip_vpu_fmt *vpu_fmt;
> 	                                 ^~~~~~~
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Acked-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks!


> ---
>  drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 5 -----
>  drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c | 5 -----
>  drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c       | 6 ------
>  3 files changed, 16 deletions(-)
> 
> diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> index e27c10855de5..5282236d1bb1 100644
> --- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> +++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> @@ -66,13 +66,8 @@ rk3288_vpu_jpeg_enc_set_qtable(struct rockchip_vpu_dev *vpu,
>  			       unsigned char *luma_qtable,
>  			       unsigned char *chroma_qtable)
>  {
> -	__be32 *luma_qtable_p;
> -	__be32 *chroma_qtable_p;
>  	u32 reg, i;
>  
> -	luma_qtable_p = (__be32 *)luma_qtable;
> -	chroma_qtable_p = (__be32 *)chroma_qtable;
> -
>  	for (i = 0; i < VEPU_JPEG_QUANT_TABLE_COUNT; i++) {
>  		reg = get_unaligned_be32(&luma_qtable[i]);
>  		vepu_write_relaxed(vpu, reg, VEPU_REG_JPEG_LUMA_QUAT(i));
> diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> index 5f75e4d11d76..dbc86d95fe3b 100644
> --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> @@ -97,13 +97,8 @@ rk3399_vpu_jpeg_enc_set_qtable(struct rockchip_vpu_dev *vpu,
>  			       unsigned char *luma_qtable,
>  			       unsigned char *chroma_qtable)
>  {
> -	__be32 *luma_qtable_p;
> -	__be32 *chroma_qtable_p;
>  	u32 reg, i;
>  
> -	luma_qtable_p = (__be32 *)luma_qtable;
> -	chroma_qtable_p = (__be32 *)chroma_qtable;
> -
>  	for (i = 0; i < VEPU_JPEG_QUANT_TABLE_COUNT; i++) {
>  		reg = get_unaligned_be32(&luma_qtable[i]);
>  		vepu_write_relaxed(vpu, reg, VEPU_REG_JPEG_LUMA_QUAT(i));
> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
> index 038a7136d5d1..ab0fb2053620 100644
> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
> @@ -519,17 +519,14 @@ rockchip_vpu_queue_setup(struct vb2_queue *vq,
>  			 struct device *alloc_devs[])
>  {
>  	struct rockchip_vpu_ctx *ctx = vb2_get_drv_priv(vq);
> -	const struct rockchip_vpu_fmt *vpu_fmt;
>  	struct v4l2_pix_format_mplane *pixfmt;
>  	int i;
>  
>  	switch (vq->type) {
>  	case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
> -		vpu_fmt = ctx->vpu_dst_fmt;
>  		pixfmt = &ctx->dst_fmt;
>  		break;
>  	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> -		vpu_fmt = ctx->vpu_src_fmt;
>  		pixfmt = &ctx->src_fmt;
>  		break;
>  	default:
> @@ -557,7 +554,6 @@ static int rockchip_vpu_buf_prepare(struct vb2_buffer *vb)
>  	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
>  	struct vb2_queue *vq = vb->vb2_queue;
>  	struct rockchip_vpu_ctx *ctx = vb2_get_drv_priv(vq);
> -	const struct rockchip_vpu_fmt *vpu_fmt;
>  	struct v4l2_pix_format_mplane *pixfmt;
>  	unsigned int sz;
>  	int ret = 0;
> @@ -565,11 +561,9 @@ static int rockchip_vpu_buf_prepare(struct vb2_buffer *vb)
>  
>  	switch (vq->type) {
>  	case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
> -		vpu_fmt = ctx->vpu_dst_fmt;
>  		pixfmt = &ctx->dst_fmt;
>  		break;
>  	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> -		vpu_fmt = ctx->vpu_src_fmt;
>  		pixfmt = &ctx->src_fmt;
>  
>  		if (vbuf->field == V4L2_FIELD_ANY)
