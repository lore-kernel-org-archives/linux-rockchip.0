From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 11/11] rockchip/vpu: Add support for MPEG-2 decoding
Date: Mon, 1 Apr 2019 12:52:08 +0900
Message-ID: <CAAFQd5C0-v=ZiOt36ibuO6uo3+0GzD-DBifKsY5v1d6ukvrnfA@mail.gmail.com>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-12-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190304192529.14200-12-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Mar 5, 2019 at 4:27 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
>
[snip]
> +
> +#define PICT_TOP_FIELD     1
> +#define PICT_BOTTOM_FIELD  2
> +#define PICT_FRAME         3

These 3 seem to be the standard values applying to some fields of the
MPEG2 controls. Why aren't they defined next to corresponding
structures?

> +
> +static void
> +rk3399_vpu_mpeg2_dec_set_quantization(struct rockchip_vpu_dev *vpu,
> +                                     struct rockchip_vpu_ctx *ctx)
> +{
> +       struct v4l2_ctrl_mpeg2_quantization *quantization;
> +
> +       quantization = rockchip_vpu_get_ctrl(ctx,
> +                               V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
> +       rockchip_vpu_mpeg2_dec_copy_qtable(ctx->mpeg2_dec_ctx.qtable.cpu, quantization);
> +       vdpu_write_relaxed(vpu, ctx->mpeg2_dec_ctx.qtable.dma, VDPU_REG_QTABLE_BASE);
> +}
> +
> +static void rk3399_vpu_mpeg2_dec_set_buffers(struct rockchip_vpu_dev *vpu,
> +                                            struct rockchip_vpu_ctx *ctx,
> +                                            struct vb2_buffer *src_buf,
> +                                            struct vb2_buffer *dst_buf,
> +                                            const struct v4l2_mpeg2_sequence *sequence,
> +                                            const struct v4l2_mpeg2_picture *picture,
> +                                            const struct v4l2_ctrl_mpeg2_slice_params *slice_params)
> +{
> +       dma_addr_t forward_addr = 0, backward_addr = 0;
> +       dma_addr_t current_addr, addr;
> +       struct vb2_queue *vq;
> +
> +       vq = v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx);
> +
> +       switch (picture->picture_coding_type) {
> +       case V4L2_MPEG2_PICTURE_CODING_TYPE_B:
> +               backward_addr = rockchip_vpu_get_ref(vq, slice_params->backward_ref_ts);
> +               /* fall-through */
> +       case V4L2_MPEG2_PICTURE_CODING_TYPE_P:
> +               forward_addr = rockchip_vpu_get_ref(vq, slice_params->forward_ref_ts);
> +       }
> +
> +       /* Source bitstream buffer */
> +       addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
> +       vdpu_write_relaxed(vpu, addr, VDPU_REG_RLC_VLC_BASE);
> +
> +       /* Destination frame buffer */
> +       addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
> +       current_addr = addr;
> +
> +       if (picture->picture_structure == PICT_BOTTOM_FIELD)
> +               addr += DIV_ROUND_UP(sequence->horizontal_size, 16) << 4;

Shouldn't this rather use the bytesperline taken from ctx->dst_fmt?

Also, why do we divide it (with rounding up) by 16 and then again
multiply by 16 (=== << 4)? Isn't this just ALIGN(..., 16)?

> +       vdpu_write_relaxed(vpu, addr, VDPU_REG_DEC_OUT_BASE);
> +
> +       if (!forward_addr)
> +               forward_addr = current_addr;
> +       if (!backward_addr)
> +               backward_addr = current_addr;
> +
> +       /* Set forward ref frame (top/bottom field) */
> +       if (picture->picture_structure == PICT_FRAME ||
> +           picture->picture_coding_type == V4L2_MPEG2_PICTURE_CODING_TYPE_B ||
> +           (picture->picture_structure == PICT_TOP_FIELD && picture->top_field_first) ||
> +           (picture->picture_structure == PICT_BOTTOM_FIELD && !picture->top_field_first)) {
> +               vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER0_BASE);
> +               vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER1_BASE);
> +       } else if (picture->picture_structure == PICT_TOP_FIELD) {
> +               vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER0_BASE);
> +               vdpu_write_relaxed(vpu, current_addr, VDPU_REG_REFER1_BASE);
> +       } else if (picture->picture_structure == PICT_BOTTOM_FIELD) {
> +               vdpu_write_relaxed(vpu, current_addr, VDPU_REG_REFER0_BASE);
> +               vdpu_write_relaxed(vpu, forward_addr, VDPU_REG_REFER1_BASE);
> +       }
> +
> +       /* Set backward ref frame (top/bottom field) */
> +       vdpu_write_relaxed(vpu, backward_addr, VDPU_REG_REFER2_BASE);
> +       vdpu_write_relaxed(vpu, backward_addr, VDPU_REG_REFER3_BASE);
> +}
> +
> +void rk3399_vpu_mpeg2_dec_run(struct rockchip_vpu_ctx *ctx)
> +{
> +       struct rockchip_vpu_dev *vpu = ctx->dev;
> +       struct vb2_v4l2_buffer *src_buf, *dst_buf;
> +       const struct v4l2_ctrl_mpeg2_slice_params *slice_params;
> +       const struct v4l2_mpeg2_sequence *sequence;
> +       const struct v4l2_mpeg2_picture *picture;
> +       u32 reg;
> +
> +       src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> +       dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +
> +       /* Apply request controls if any */
> +       v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
> +                               &ctx->ctrl_handler);
> +
> +       slice_params = rockchip_vpu_get_ctrl(ctx,
> +                               V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
> +       if (!slice_params)
> +               return;

Shouldn't we fail the run here (i.e. return the buffers with error
state)? But actually, is this even possible to happen?

> +       sequence = &slice_params->sequence;
> +       picture = &slice_params->picture;
> +
> +       reg = VDPU_REG_DEC_ADV_PRE_DIS(0) |
> +             VDPU_REG_DEC_SCMD_DIS(0) |
> +             VDPU_REG_FILTERING_DIS(1) |
> +             VDPU_REG_DEC_LATENCY(0);
> +       vdpu_write_relaxed(vpu, reg, VDPU_SWREG(50));
> +
> +       reg = VDPU_REG_INIT_QP(1) |
> +             VDPU_REG_STREAM_LEN(slice_params->bit_size >> 3);
> +       vdpu_write_relaxed(vpu, reg, VDPU_SWREG(51));
> +
> +       reg = VDPU_REG_APF_THRESHOLD(8) |
> +             VDPU_REG_STARTMB_X(0) |
> +             VDPU_REG_STARTMB_Y(0);
> +       vdpu_write_relaxed(vpu, reg, VDPU_SWREG(52));
> +
> +       reg = VDPU_REG_DEC_MODE(5);
> +       vdpu_write_relaxed(vpu, reg, VDPU_SWREG(53));
> +
> +       reg = VDPU_REG_DEC_STRENDIAN_E(1) |
> +             VDPU_REG_DEC_STRSWAP32_E(1) |
> +             VDPU_REG_DEC_OUTSWAP32_E(1) |
> +             VDPU_REG_DEC_INSWAP32_E(1) |
> +             VDPU_REG_DEC_OUT_ENDIAN(1) |
> +             VDPU_REG_DEC_IN_ENDIAN(1);
> +       vdpu_write_relaxed(vpu, reg, VDPU_SWREG(54));
> +
> +       reg = VDPU_REG_DEC_DATA_DISC_E(0) |
> +             VDPU_REG_DEC_MAX_BURST(16) |
> +             VDPU_REG_DEC_AXI_WR_ID(0) |
> +             VDPU_REG_DEC_AXI_RD_ID(0);
> +       vdpu_write_relaxed(vpu, reg, VDPU_SWREG(56));
> +
> +       reg = VDPU_REG_RLC_MODE_E(0) |
> +             VDPU_REG_PIC_INTERLACE_E(!sequence->progressive_sequence) |
> +             VDPU_REG_PIC_FIELDMODE_E(picture->picture_structure != PICT_FRAME) |
> +             VDPU_REG_PIC_B_E(picture->picture_coding_type == V4L2_MPEG2_PICTURE_CODING_TYPE_B) |
> +             VDPU_REG_PIC_INTER_E(picture->picture_coding_type != V4L2_MPEG2_PICTURE_CODING_TYPE_I) |
> +             VDPU_REG_PIC_TOPFIELD_E(picture->picture_structure == PICT_TOP_FIELD) |
> +             VDPU_REG_FWD_INTERLACE_E(0) |
> +             VDPU_REG_WRITE_MVS_E(0) |
> +             VDPU_REG_DEC_TIMEOUT_E(1) |
> +             VDPU_REG_DEC_CLK_GATE_E(1);
> +       vdpu_write_relaxed(vpu, reg, VDPU_SWREG(57));
> +
> +       reg = VDPU_REG_PIC_MB_WIDTH(DIV_ROUND_UP(sequence->horizontal_size, 16)) |
> +             VDPU_REG_PIC_MB_HEIGHT_P(DIV_ROUND_UP(sequence->vertical_size, 16)) |

This should also come from the format. (The format should be detected
based on those fields, before allocating buffers, though.)

Best regards,
Tomasz
