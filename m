From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 2/3] media: hantro: Support color conversion via
 post-processing
Date: Thu, 14 Nov 2019 10:46:00 +0100
Message-ID: <20191114104600.5c6c3e26@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
        <20191113175603.24742-3-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191113175603.24742-3-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-media@vger.kernel.org, kernel@collabora.com, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Chris Healy <cphealy@gmail.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On Wed, 13 Nov 2019 14:56:02 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> +
> +int hantro_postproc_alloc(struct hantro_ctx *ctx)
> +{
> +	struct hantro_dev *vpu = ctx->dev;
> +	unsigned int i, buf_size;
> +
> +	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage;
> +
> +	for (i = 0; i < VB2_MAX_FRAME; ++i) {

Don't we know at that point how big the queue is (vq->num_buffers)?
Sounds a bit expensive to always allocate VB2_MAX_FRAME aux buffers.

> +		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
> +
> +		/*
> +		 * The buffers on this queue are meant as intermediate
> +		 * buffers for the decoder, so no mapping is needed.
> +		 */
> +		priv->attrs = DMA_ATTR_NO_KERNEL_MAPPING;
> +		priv->cpu = dma_alloc_attrs(vpu->dev, buf_size, &priv->dma,
> +					    GFP_KERNEL, priv->attrs);
> +		if (!priv->cpu)
> +			return -ENOMEM;
> +		priv->size = buf_size;
> +	}
> +	return 0;
> +}

Other than that, the post-proc extension looks pretty good. Thought it
would be much more invasive than that.

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
