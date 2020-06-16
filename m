From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [RESEND PATCH v3 6/6] media: staging: rkisp1: common: add
 documentation for struct rkisp1_isp_mbus_info
Date: Tue, 16 Jun 2020 09:20:43 -0300
Message-ID: <739b92c2-1b4e-eeb9-5233-dc4add4316c6@collabora.com>
References: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
 <20200613091353.12689-7-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200613091353.12689-7-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thanks for the patch.

On 6/13/20 6:13 AM, Dafna Hirschfeld wrote:
> Add documentation for the struct rkisp1_isp_mbus_info with
> one line doc of each field
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 13c5eeff66f3..6104eddac0e5 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -268,6 +268,19 @@ struct rkisp1_device {
>  	struct rkisp1_debug debug;
>  };
>  
> +/*
> + * struct rkisp1_isp_mbus_info
> + *
> + * holds information about the supported isp media bus
> + * @mbus_code: the media bus code
> + * @pixel_enc: the pixel encoding
> + * @mipi_dt: the mipi data type
> + * @yuv_seq: the order of the yuv values for yuv formats
> + * @bus_width: the bus width
> + * @bayer_pat: the bayer pattern for bayer formats
> + * @isp_pads_mask: a bitmask of the pads that the format is supported on
> + */
> +
>  /*
>   * struct rkisp1_isp_mbus_info - ISP pad format info
>   *
> 

Why doesn't it remove the current doc?

Thanks
Helen
