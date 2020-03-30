From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 1/4] media: staging: rkisp1: cap: fix issues when writing
 to uv swap register
Date: Mon, 30 Mar 2020 16:11:26 -0300
Message-ID: <0ad5cae9-e12b-fc22-dbed-886c91af4f46@collabora.com>
References: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
 <20200326201610.31762-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200326201610.31762-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thanks for your patch.

On 3/26/20 5:16 PM, Dafna Hirschfeld wrote:
> When writing to the RKISP1_CIF_MI_XTD_FORMAT_CTRL register
> in mainpath, a redundant mask that clears the related swap
> flag is applied and then the flag is set again.
> 
> In the selfpath, a mask that clears the swap setting is applied
> instead of adding the setting.
> This patch fixes those issues by just adding the swap setting.

One is a clean-up, and the other one is a bug fix.
Could you please split those in two separated patches?

It is better for tracking bugs and bisectability to  not mix
cleanups with fixes.

Thanks
Helen

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 45d237a77ca4..84a3cf565106 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -432,8 +432,7 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>  	if (cap->pix.cfg->uv_swap) {
>  		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
> -		reg = (reg & ~BIT(0)) |
> -		      RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> +		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
>  		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  	}
>  
> @@ -470,8 +469,8 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>  	if (cap->pix.cfg->uv_swap) {
>  		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
> -		rkisp1_write(rkisp1, reg & ~BIT(1),
> -			     RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> +		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  	}
>  
>  	rkisp1_mi_config_ctrl(cap);
> 
