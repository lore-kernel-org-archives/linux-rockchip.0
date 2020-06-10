From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 4/4] media: staging: rkisp1: rename the field
 'direction' in 'rkisp1_isp_mbus_info' to 'isp_pads_flags'
Date: Wed, 10 Jun 2020 17:26:22 +0000
Message-ID: <20200610172622.GG201868@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-5-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200609152825.24772-5-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On Tue, Jun 09, 2020 at 05:28:25PM +0200, Dafna Hirschfeld wrote:
> The field 'direction' in 'struct rkisp1_isp_mbus_info' holds
> the flags of the supported pads of the mbus code. Therefore
> the name 'isp_pads_flags' is better.
> The patch also rename a local variable 'dir' that holds such flag
> to 'pad'.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 46 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
>  3 files changed, 25 insertions(+), 25 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index a6cd9fc13b3d..1dda6d53adea 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -283,7 +283,7 @@ struct rkisp1_isp_mbus_info {

FYI, there is some missing documentation of the fields above. If
changing this field, perhaps its documentation could be added as well?

>  	u32 yuv_seq;
>  	u8 bus_width;
>  	enum rkisp1_fmt_raw_pat_type bayer_pat;
> -	unsigned int direction;
> +	unsigned int isp_pads_flags;

nit: Wouldn't "isp_pads_mask" represent the usage more precisely?

Best regards,
Tomasz
