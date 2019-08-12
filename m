From: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Subject: Re: [PATCH v4 00/11] media: hantro: Add support for H264 decoding
Date: Mon, 12 Aug 2019 12:41:59 +0200
Message-ID: <1565606519.5017.5.camel@pengutronix.de>
References: <20190808103432.12062-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190808103432.12062-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: fbuergisser-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On Thu, 2019-08-08 at 07:34 -0300, Ezequiel Garcia wrote:
> This series is consolidating the two recent H264 series submitted
> by Boris [1] [2]. Given some patches from [2]  have been merged (namely,
> helpers for the Hantro driver), the series contains the remanining
> bits required to support H264 on Hantro G1 VPU.
> 
> * Patch 1 adds support for the sort_r() variant and has
>   been posted separately by Rasmus. It would be good to merge this patch
>   via the media tree, ideally as soon as possible, to avoid the
>   synchronisation burden that might appear if we decide to delay it.
> 
> * Patch 2 to 4 extends the H264 uAPI, introducing frame-based vs slice-based
>   decoding granularity, and also support for different NALU start codes.
>   Currently, Annex B and no start codes are the supported options.
> 
>   With the introduction of the start code control, the H264 parsed
>   slices pixel format should be renamed, dropping the _RAW suffix,
>   which is now meaningless.
> 
> * Patch 5 removes the P0/B0/B1 ref lists from the decode_params control.
>   These lists are no longer needed since we build them on the
>   kernel side based on the DPB.
> 
> * Patch 6 and 7 exposes the proper decoding mode and start code
>   on the cedrus driver. The driver functionality is not changed,
>   and only the Cedrus support is now being properly exposed to
>   userspace.
> 
> * Patch 8 is needed to properly propagate the OUTPUT buffer timestamp to
>   the CAPTURE buffer one, which is required for intra-frame references.
> 
> * Patches 9 to 11 adds H264 support for Hantro G1 and then enable
>   H264 decoding on RK3288.
> 
> This series has been tested using MPV/Ffmpeg, on Rockchip RK3288
> for Hantro and Allwinner H3 boards for Cedrus.

Tested-by: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>

on i.MX8MQ EVK using [1], so I effectively patches 1-5 and 8-10, with
your FFmpeg modifications [2].

[1] git://git.pengutronix.de/git/pza/linux.git hantro/imx8m-wip
[2] https://gitlab.collabora.com/ezequiel/ffmpeg stateless-mpeg2-vp8-
h264-v4

regards
Philipp
