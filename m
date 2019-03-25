From: Emil Velikov <emil.velikov-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v2 02/11] media: Introduce helpers to fill pixel format
 structs
Date: Mon, 25 Mar 2019 14:32:08 +0000
Message-ID: <20190325143207.GA24966@arch-x1c3>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-3-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20190304192529.14200-3-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On 2019/03/04, Ezequiel Garcia wrote:

> +
> +/* Pixel format and FourCC helpers */
> +
> +/**
> + * struct v4l2_format_info - information about a V4L2 format
> + * @format: 4CC format identifier (V4L2_PIX_FMT_*)
> + * @mem_planes: Number of memory planes, which includes the alpha plane (1 to 4).
> + * @comp_planes: Number of component planes, which includes the alpha plane (1 to 4).
> + * @bpp: Array of per-plane bytes per pixel
> + * @hdiv: Horizontal chroma subsampling factor
> + * @vdiv: Vertical chroma subsampling factor
> + */
> +struct v4l2_format_info {
> +	u32 format;
> +	u8 mem_planes;
> +	u8 comp_planes;
> +	u8 bpp[4];
> +	u8 hdiv;
> +	u8 vdiv;
> +	u8 block_w[4];
> +	u8 block_h[4];

Please don't forget to document block_[wh]. Plus you can draw some extra
inspiration from drm_format_info in include/drm/drm_fourcc.h ;-)

HTH
Emil
