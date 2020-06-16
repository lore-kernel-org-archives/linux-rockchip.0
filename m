From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [RESEND PATCH v3 3/6] media: staging: rkisp1: remove macro
 RKISP1_DIR_SINK_SRC
Date: Tue, 16 Jun 2020 09:05:04 -0300
Message-ID: <919fa1e3-ae48-873b-613f-8f4f46ec42aa@collabora.com>
References: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
 <20200613091353.12689-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200613091353.12689-4-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 6/13/20 6:13 AM, Dafna Hirschfeld wrote:
> The macro RKISP1_DIR_SINK_SRC is a mask of two flags.
> The macro hides the fact that it's a mask and the code
> is actually more clear if we replace it the with bitwise-or explicitly.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h |  1 -
>  drivers/staging/media/rkisp1/rkisp1-isp.c    | 24 ++++++++++----------
>  2 files changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 39d8e46d8d8a..0ec8718037a4 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -24,7 +24,6 @@
>  
>  #define RKISP1_DIR_SRC BIT(0)
>  #define RKISP1_DIR_SINK BIT(1)
> -#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
>  
>  #define RKISP1_ISP_MAX_WIDTH		4032
>  #define RKISP1_ISP_MAX_HEIGHT		3024
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index e66e87d6ea8b..157ac58c2efc 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -65,84 +65,84 @@ static const struct rkisp1_isp_mbus_info rkisp1_isp_formats[] = {
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK_SRC,
> +		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
> 
