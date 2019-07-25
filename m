From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 1/7] media: hantro: Set DMA max segment size
Date: Thu, 25 Jul 2019 17:36:41 +0200
Message-ID: <1564069001.3006.1.camel@pengutronix.de>
References: <20190725141756.2518-1-ezequiel@collabora.com>
         <20190725141756.2518-2-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190725141756.2518-2-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2019-07-25 at 11:17 -0300, Ezequiel Garcia wrote:
> From: Francois Buergisser <fbuergisser@chromium.org>
> 
> The Hantro codec is typically used in platforms with an IOMMU,
> so we need to set a proper DMA segment size.

... to make sure the DMA-mapping subsystem produces contiguous mappings?

> Devices without an
> IOMMU will still fallback to default 64KiB segments.

I don't understand this comment. The default max_seg_size may be 64 KiB,
but if we are always setting it to DMA_BUT_MASK(32), there is no falling
back.

> Cc: stable@vger.kernel.org
> Fixes: 775fec69008d3 ("media: add Rockchip VPU JPEG encoder driver")
> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_drv.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index b71a06e9159e..4eae1dbb1ac8 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -731,6 +731,7 @@ static int hantro_probe(struct platform_device *pdev)
>  		dev_err(vpu->dev, "Could not set DMA coherent mask.\n");
>  		return ret;
>  	}
> +	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));

This should be complemented by a call to
vb2_dma_contig_clear_max_seg_size() in _remove,
to avoid leaking dev->dma_parms.

>  
>  	for (i = 0; i < vpu->variant->num_irqs; i++) {
>  		const char *irq_name = vpu->variant->irqs[i].name;

regards
Philipp
