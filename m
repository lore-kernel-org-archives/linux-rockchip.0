Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A8B9C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFrc/gznNyLzmkSnSs6xBMzVaL2CAo4+qL0WeawBDZM=; b=H1dyX47n+6syCw
	dI2gccmaWjyZ/bA0A69o7ttMz7t+aQcEeEs3+Ff3NTdy/fsH/9rCuw9ot812VkywN6rUNHc2E4Iso
	MQsiaV6mu3MOzo9g1k0bbnoFStgPNTerLNoChnD6yWiJlisShWJjvbxNlxikudanJkWavp3Sh992E
	z93F8zvL1pCWFWDVRB4/IZT+nFhpO5baD/XhKP9rMwsnlBz6KrbBV+lqYL4lbMsjCC0Rc9dpIRjKd
	F6uMmqAvM4u08W0fTQ9Seidrti+Q2NPf1lArcGY0ASepxLBFAZ7V6K9D8U5vSEF7LQZdKCsQr0QNJ
	J0c/2/yfn3wmQjrN9UbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msjzm-00Bxaj-Lm; Thu, 02 Dec 2021 11:11:22 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msjzj-00BxZq-7h
 for linux-rockchip@lists.infradead.org; Thu, 02 Dec 2021 11:11:21 +0000
Received: by mail-ed1-x533.google.com with SMTP id g14so114452574edb.8
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Dec 2021 03:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wyozAJCGRTe/4C1DrdkMMRShAw4JwiXMSXMasd2ZwvQ=;
 b=5AoMHHt/57ETbdmTjAi9Wwmct1sbgXwZ/Xq9Vaxw32uW9dmUPbr7lUSxpIkJIM+F2P
 PjozvOPjWDQuKi2ZR4fUVnTHZOm+BddgY9stLexdN3Wtz8bY4jNgVbnDuUdATc41Bzfl
 Mv9sreOxyRVmXQwlsUFnN7HYepvWp1zihYKh8b5U3UjBs/GOj5lXh5+GWhKLR3UtPWFx
 WwazaPjlal8gQ5hnOE5NWTQAYAU3dDXpcclhvS0V9//G9uMf4DLMfq9kUciAP1we9iUN
 tUIXt1SQqcVw10JOFjCrrd4VwJWWwd4SCGf+r++D8vFjrNSM9kquCcdORrv7MYhsmjzQ
 uzYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wyozAJCGRTe/4C1DrdkMMRShAw4JwiXMSXMasd2ZwvQ=;
 b=O/YquMsF83lhSPO3R9TNmBwVYEmG2u7w9/ijH4oovgTAxL4yJ/cRhQaRsrGAym7lD8
 fX1dP4evOqn2jth9fljmaQXyYZhf4amqtKt/Pm3SXqeNOQhTbVKfDLkCbcrem0BmrFWx
 lAn/r4MiICPxqlrv4H/wxc5mr/FWypqautnarTTc0iTQeFucHqQoBkLUAm9pvpJbMKYz
 Hj/M10zjW4CpeIMw005tgr2oIRvku9BTN5O7L3+6fOhEZvpHIKPT0Sf3IIp+7g1Dg0gh
 8FZdl2l8aw/FfEcsWfaj4DJzMyNOwSEKOGuPkwV0eYJvFpcTQG/3uvR+DBdw4FmZEQtr
 CaGQ==
X-Gm-Message-State: AOAM531FXCcetN+Ey8zmXkLtPVic2CnQVPkba/P+6u2p+2t+UGFfoGM7
 M9Nn7lLEjvzrchkPklJ1DVHlSzbZr9REdwtO7yzJKw==
X-Google-Smtp-Source: ABdhPJx8a+Ep8Gawb+c1k6MNZxolTGOYW6WCvUxqiMxDlZXc5k1/nrISg9L47T3swKlhfTuF4Gy4kGrCxJQoWpiuYos=
X-Received: by 2002:a05:6402:4248:: with SMTP id
 g8mr16951731edb.182.1638443477437; 
 Thu, 02 Dec 2021 03:11:17 -0800 (PST)
MIME-Version: 1.0
References: <20211202105549.276572-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20211202105549.276572-1-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 2 Dec 2021 08:11:06 -0300
Message-ID: <CAAEAJfDQ7TnFwxhWDp3JAHg67MrCoOZm=D4V5o2sJ_9vT6K0sA@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Make G2/HEVC use hantro_postproc_ops
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg KH <gregkh@linuxfoundation.org>, linux-media <linux-media@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_031119_312430_34DEFED9 
X-CRM114-Status: GOOD (  34.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin,

Almost there :-)

On Thu, 2 Dec 2021 at 07:55, Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> Use the postprocessor functions introduced by Hantro G2/VP9 codec series
> and remove duplicated buffer management.
> This allow Hantro G12/HEVC to produce NV12_4L4 and NV12.
>

s/G12/G2

> fluster score is 77/147 which equal to previous score.

s/fluster/Fluster

Can you clarify if this is the HEVC score? While here, can you run VP9
to confirm there are no regressions?

> Note that since NV12_4L2 is the first pixel format enumerated by the
> driver fluster pipeline and it is well converted into I420 by
> GStreamer's videoconvert.
>
> Beauty, Jockey and ShakeNDry bitstreams from UVG set have also been
> tested.
>

Can you add a link to the UVG test suite, so it's clearer?

Also, this patch is v2, so don't forget to prefix the next one as v3,
and add a changelog to it.

Thanks a lot,
Ezequiel

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../staging/media/hantro/hantro_g2_hevc_dec.c | 25 +++---
>  drivers/staging/media/hantro/hantro_hevc.c    | 79 +++----------------
>  drivers/staging/media/hantro/hantro_hw.h      | 11 +++
>  .../staging/media/hantro/hantro_postproc.c    |  3 +
>  drivers/staging/media/hantro/hantro_v4l2.c    | 19 ++---
>  5 files changed, 41 insertions(+), 96 deletions(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index b35f36109a6f..6ef5430b18eb 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -341,6 +341,8 @@ static int set_ref(struct hantro_ctx *ctx)
>         const struct v4l2_hevc_dpb_entry *dpb = decode_params->dpb;
>         dma_addr_t luma_addr, chroma_addr, mv_addr = 0;
>         struct hantro_dev *vpu = ctx->dev;
> +       struct vb2_v4l2_buffer *vb2_dst;
> +       struct hantro_decoded_buffer *dst;
>         size_t cr_offset = hantro_hevc_chroma_offset(sps);
>         size_t mv_offset = hantro_hevc_motion_vectors_offset(sps);
>         u32 max_ref_frames;
> @@ -426,10 +428,15 @@ static int set_ref(struct hantro_ctx *ctx)
>                 hantro_write_addr(vpu, G2_REF_MV_ADDR(i), mv_addr);
>         }
>
> -       luma_addr = hantro_hevc_get_ref_buf(ctx, decode_params->pic_order_cnt_val);
> +       vb2_dst = hantro_get_dst_buf(ctx);
> +       dst = vb2_to_hantro_decoded_buf(&vb2_dst->vb2_buf);
> +       luma_addr = hantro_get_dec_buf_addr(ctx, &dst->base.vb.vb2_buf);
>         if (!luma_addr)
>                 return -ENOMEM;
>
> +       if (hantro_hevc_add_ref_buf(ctx, decode_params->pic_order_cnt_val, luma_addr))
> +               return -EINVAL;
> +
>         chroma_addr = luma_addr + cr_offset;
>         mv_addr = luma_addr + mv_offset;
>
> @@ -456,16 +463,12 @@ static int set_ref(struct hantro_ctx *ctx)
>
>  static void set_buffers(struct hantro_ctx *ctx)
>  {
> -       struct vb2_v4l2_buffer *src_buf, *dst_buf;
> +       struct vb2_v4l2_buffer *src_buf;
>         struct hantro_dev *vpu = ctx->dev;
> -       const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
> -       const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
> -       size_t cr_offset = hantro_hevc_chroma_offset(sps);
> -       dma_addr_t src_dma, dst_dma;
> +       dma_addr_t src_dma;
>         u32 src_len, src_buf_len;
>
>         src_buf = hantro_get_src_buf(ctx);
> -       dst_buf = hantro_get_dst_buf(ctx);
>
>         /* Source (stream) buffer. */
>         src_dma = vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
> @@ -478,11 +481,6 @@ static void set_buffers(struct hantro_ctx *ctx)
>         hantro_reg_write(vpu, &g2_strm_start_offset, 0);
>         hantro_reg_write(vpu, &g2_write_mvs_e, 1);
>
> -       /* Destination (decoded frame) buffer. */
> -       dst_dma = hantro_get_dec_buf_addr(ctx, &dst_buf->vb2_buf);
> -
> -       hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
> -       hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + cr_offset);
>         hantro_write_addr(vpu, G2_TILE_SIZES_ADDR, ctx->hevc_dec.tile_sizes.dma);
>         hantro_write_addr(vpu, G2_TILE_FILTER_ADDR, ctx->hevc_dec.tile_filter.dma);
>         hantro_write_addr(vpu, G2_TILE_SAO_ADDR, ctx->hevc_dec.tile_sao.dma);
> @@ -575,9 +573,6 @@ int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx)
>         /* Don't compress buffers */
>         hantro_reg_write(vpu, &g2_ref_compress_bypass, 1);
>
> -       /* use NV12 as output format */
> -       hantro_reg_write(vpu, &g2_out_rs_e, 1);
> -
>         /* Bus width and max burst */
>         hantro_reg_write(vpu, &g2_buswidth, BUS_WIDTH_128);
>         hantro_reg_write(vpu, &g2_max_burst, 16);
> diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
> index ee03123e7704..b49a41d7ae91 100644
> --- a/drivers/staging/media/hantro/hantro_hevc.c
> +++ b/drivers/staging/media/hantro/hantro_hevc.c
> @@ -44,47 +44,6 @@ size_t hantro_hevc_motion_vectors_offset(const struct v4l2_ctrl_hevc_sps *sps)
>         return ALIGN((cr_offset * 3) / 2, G2_ALIGN);
>  }
>
> -static size_t hantro_hevc_mv_size(const struct v4l2_ctrl_hevc_sps *sps)
> -{
> -       u32 min_cb_log2_size_y = sps->log2_min_luma_coding_block_size_minus3 + 3;
> -       u32 ctb_log2_size_y = min_cb_log2_size_y + sps->log2_diff_max_min_luma_coding_block_size;
> -       u32 pic_width_in_ctbs_y = (sps->pic_width_in_luma_samples + (1 << ctb_log2_size_y) - 1)
> -                                 >> ctb_log2_size_y;
> -       u32 pic_height_in_ctbs_y = (sps->pic_height_in_luma_samples + (1 << ctb_log2_size_y) - 1)
> -                                  >> ctb_log2_size_y;
> -       size_t mv_size;
> -
> -       mv_size = pic_width_in_ctbs_y * pic_height_in_ctbs_y *
> -                 (1 << (2 * (ctb_log2_size_y - 4))) * 16;
> -
> -       vpu_debug(4, "%dx%d (CTBs) %zu MV bytes\n",
> -                 pic_width_in_ctbs_y, pic_height_in_ctbs_y, mv_size);
> -
> -       return mv_size;
> -}
> -
> -static size_t hantro_hevc_ref_size(struct hantro_ctx *ctx)
> -{
> -       const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
> -       const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
> -
> -       return hantro_hevc_motion_vectors_offset(sps) + hantro_hevc_mv_size(sps);
> -}
> -
> -static void hantro_hevc_ref_free(struct hantro_ctx *ctx)
> -{
> -       struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
> -       struct hantro_dev *vpu = ctx->dev;
> -       int i;
> -
> -       for (i = 0;  i < NUM_REF_PICTURES; i++) {
> -               if (hevc_dec->ref_bufs[i].cpu)
> -                       dma_free_coherent(vpu->dev, hevc_dec->ref_bufs[i].size,
> -                                         hevc_dec->ref_bufs[i].cpu,
> -                                         hevc_dec->ref_bufs[i].dma);
> -       }
> -}
> -
>  static void hantro_hevc_ref_init(struct hantro_ctx *ctx)
>  {
>         struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
> @@ -108,37 +67,25 @@ dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx,
>                 }
>         }
>
> -       /* Allocate a new reference buffer */
> +       return 0;
> +}
> +
> +int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr)
> +{
> +       struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
> +       int i;
> +
> +       /* Add a new reference buffer */
>         for (i = 0; i < NUM_REF_PICTURES; i++) {
>                 if (hevc_dec->ref_bufs_poc[i] == UNUSED_REF) {
> -                       if (!hevc_dec->ref_bufs[i].cpu) {
> -                               struct hantro_dev *vpu = ctx->dev;
> -
> -                               /*
> -                                * Allocate the space needed for the raw data +
> -                                * motion vector data. Optimizations could be to
> -                                * allocate raw data in non coherent memory and only
> -                                * clear the motion vector data.
> -                                */
> -                               hevc_dec->ref_bufs[i].cpu =
> -                                       dma_alloc_coherent(vpu->dev,
> -                                                          hantro_hevc_ref_size(ctx),
> -                                                          &hevc_dec->ref_bufs[i].dma,
> -                                                          GFP_KERNEL);
> -                               if (!hevc_dec->ref_bufs[i].cpu)
> -                                       return 0;
> -
> -                               hevc_dec->ref_bufs[i].size = hantro_hevc_ref_size(ctx);
> -                       }
>                         hevc_dec->ref_bufs_used |= 1 << i;
> -                       memset(hevc_dec->ref_bufs[i].cpu, 0, hantro_hevc_ref_size(ctx));
>                         hevc_dec->ref_bufs_poc[i] = poc;
> -
> -                       return hevc_dec->ref_bufs[i].dma;
> +                       hevc_dec->ref_bufs[i].dma = addr;
> +                       return 0;
>                 }
>         }
>
> -       return 0;
> +       return -EINVAL;
>  }
>
>  void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx)
> @@ -314,8 +261,6 @@ void hantro_hevc_dec_exit(struct hantro_ctx *ctx)
>                                   hevc_dec->tile_bsd.cpu,
>                                   hevc_dec->tile_bsd.dma);
>         hevc_dec->tile_bsd.cpu = NULL;
> -
> -       hantro_hevc_ref_free(ctx);
>  }
>
>  int hantro_hevc_dec_init(struct hantro_ctx *ctx)
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index dbe51303724b..7286404c32ab 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -345,6 +345,7 @@ void hantro_hevc_dec_exit(struct hantro_ctx *ctx);
>  int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx);
>  int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx);
>  dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx, int poc);
> +int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr);
>  void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx);
>  size_t hantro_hevc_chroma_offset(const struct v4l2_ctrl_hevc_sps *sps);
>  size_t hantro_hevc_motion_vectors_offset(const struct v4l2_ctrl_hevc_sps *sps);
> @@ -394,6 +395,16 @@ hantro_h264_mv_size(unsigned int width, unsigned int height)
>         return 64 * MB_WIDTH(width) * MB_WIDTH(height) + 32;
>  }
>
> +static inline size_t
> +hantro_hevc_mv_size(unsigned int width, unsigned int height)
> +{
> +       /*
> +        * A CTB can be 64x64, 32x32 or 16x16.
> +        * Allocated memory for the "worse" case: 16x16
> +        */
> +       return width * height / 16;
> +}
> +
>  int hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
>  int rockchip_vpu2_mpeg2_dec_run(struct hantro_ctx *ctx);
>  void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index a7774ad4c445..248abe5423f0 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -146,6 +146,9 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
>         else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME)
>                 buf_size += hantro_vp9_mv_size(ctx->dst_fmt.width,
>                                                ctx->dst_fmt.height);
> +       else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
> +               buf_size += hantro_hevc_mv_size(ctx->dst_fmt.width,
> +                                               ctx->dst_fmt.height);
>
>         for (i = 0; i < num_buffers; ++i) {
>                 struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index e4b0645ba6fc..e1fe37afe576 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -150,20 +150,6 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
>         unsigned int num_fmts, i, j = 0;
>         bool skip_mode_none;
>
> -       /*
> -        * The HEVC decoder on the G2 core needs a little quirk to offer NV12
> -        * only on the capture side. Once the post-processor logic is used,
> -        * we will be able to expose NV12_4L4 and NV12 as the other cases,
> -        * and therefore remove this quirk.
> -        */
> -       if (capture && ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE) {
> -               if (f->index == 0) {
> -                       f->pixelformat = V4L2_PIX_FMT_NV12;
> -                       return 0;
> -               }
> -               return -EINVAL;
> -       }
> -
>         /*
>          * When dealing with an encoder:
>          *  - on the capture side we want to filter out all MODE_NONE formats.
> @@ -304,6 +290,11 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
>                         pix_mp->plane_fmt[0].sizeimage +=
>                                 hantro_vp9_mv_size(pix_mp->width,
>                                                    pix_mp->height);
> +               else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE &&
> +                        !hantro_needs_postproc(ctx, fmt))
> +                       pix_mp->plane_fmt[0].sizeimage +=
> +                               hantro_hevc_mv_size(pix_mp->width,
> +                                                   pix_mp->height);
>         } else if (!pix_mp->plane_fmt[0].sizeimage) {
>                 /*
>                  * For coded formats the application can specify
> --
> 2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
