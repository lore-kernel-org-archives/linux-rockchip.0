From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 3/3] rkisp1: Fix wrong PHY config dependency
Date: Thu, 2 Apr 2020 10:59:29 -0300
Message-ID: <b0c9e734-7302-08e6-7bbf-79699d1d305e@collabora.com>
References: <20200401213721.24173-1-ezequiel@collabora.com>
 <20200401213721.24173-4-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200401213721.24173-4-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>
List-Id: linux-rockchip.vger.kernel.org



On 4/1/20 6:37 PM, Ezequiel Garcia wrote:
> Instead of depending on the Rockchip PHY driver the ISP driver
> should really depend on CONFIG_GENERIC_PHY_MIPI_DPHY,
> given all it needs is the phy_mipi_dphy_get_default_config() symbol.
> 
> Fix it.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
> index b859a493caba..e3ba6826fbb0 100644
> --- a/drivers/staging/media/rkisp1/Kconfig
> +++ b/drivers/staging/media/rkisp1/Kconfig
> @@ -7,7 +7,7 @@ config VIDEO_ROCKCHIP_ISP1
>  	select VIDEOBUF2_DMA_CONTIG
>  	select VIDEOBUF2_VMALLOC
>  	select V4L2_FWNODE
> -	select PHY_ROCKCHIP_DPHY_RX0
> +	select GENERIC_PHY_MIPI_DPHY
>  	default n
>  	help
>  	  Enable this to support the Image Signal Processing (ISP) module
> 
