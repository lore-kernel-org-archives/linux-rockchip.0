From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 2/2] media: hantro: Add support for VP8 decoding on rk3288
Date: Mon, 17 Jun 2019 15:40:24 +0200
Message-ID: <20190617154024.1fdb5d3c@collabora.com>
References: <20190613151040.8971-1-ezequiel@collabora.com>
 <20190613151040.8971-3-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190613151040.8971-3-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ZhiChao Yu <zhichao.yu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 13 Jun 2019 12:10:40 -0300
Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:


> +static void cfg_parts(struct hantro_ctx *ctx,
> +		      const struct v4l2_ctrl_vp8_frame_header *hdr)
> +{
> +	struct hantro_dev *vpu = ctx->dev;
> +	struct vb2_v4l2_buffer *vb2_src;
> +	u32 first_part_offset = VP8_FRAME_IS_KEY_FRAME(hdr) ? 10 : 3;
> +	u32 dct_part_total_len = 0;
> +	u32 dct_size_part_size = 0;
> +	u32 dct_part_offset = 0;
> +	u32 mb_offset_bytes = 0;
> +	u32 mb_offset_bits = 0;
> +	u32 mb_start_bits = 0;
> +	struct vp8_dec_reg reg;
> +	dma_addr_t src_dma;
> +	u32 mb_size = 0;
> +	u32 count = 0;
> +	u32 i;
> +
> +	vb2_src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> +	src_dma = vb2_dma_contig_plane_dma_addr(&vb2_src->vb2_buf, 0);
> +
> +	/*
> +	 * Calculate control partition mb data info
> +	 * @macroblock_bit_offset:	bits offset of mb data from first
> +	 *				part start pos
> +	 * @mb_offset_bits:		bits offset of mb data from src_dma
> +	 *				base addr
> +	 * @mb_offset_byte:		bytes offset of mb data from src_dma
> +	 *				base addr
> +	 * @mb_start_bits:		bits offset of mb data from mb data
> +	 *				64bits alignment addr
> +	 */
> +	mb_offset_bits = first_part_offset * 8
> +		+ hdr->macroblock_bit_offset + 8;
> +	mb_offset_bytes = mb_offset_bits / 8;
> +	mb_start_bits = mb_offset_bits
> +		- (mb_offset_bytes & (~DEC_8190_ALIGN_MASK)) * 8;
> +	mb_size = hdr->first_part_size
> +		- (mb_offset_bytes - first_part_offset)
> +		+ (mb_offset_bytes & DEC_8190_ALIGN_MASK);

Nit: can we have operators placed at the end of a line instead of
the beginning of the following line?
