From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rename macros
 'RKISP1_DIR_*' to 'RKISP1_ISP_SD_*'
Date: Wed, 10 Jun 2020 17:24:03 +0000
Message-ID: <20200610172403.GF201868@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200609152825.24772-4-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On Tue, Jun 09, 2020 at 05:28:24PM +0200, Dafna Hirschfeld wrote:
> The macros 'RKISP1_DIR_*' are flags that indicate on which
> pads of the isp subdevice the media bus code is supported. so the
> prefix RKISP1_ISP_SD_ is better.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  6 +--
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
>  3 files changed, 25 insertions(+), 25 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 39d8e46d8d8a..a6cd9fc13b3d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -22,9 +22,9 @@
>  #include "rkisp1-regs.h"
>  #include "uapi/rkisp1-config.h"
>  
> -#define RKISP1_DIR_SRC BIT(0)
> -#define RKISP1_DIR_SINK BIT(1)
> -#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
> +#define RKISP1_ISP_SD_SRC BIT(0)
> +#define RKISP1_ISP_SD_SINK BIT(1)
> +#define RKISP1_ISP_SD_SINK_SRC (RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC)

nit: It might be just me, but this feels to me like obfuscating the
code, because it hides the fact that it's a mask. If changing this
already, could we remove this one and just OR the two bits explicitly?

Best regards,
Tomasz
