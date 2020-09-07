Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDE6C2BB84
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:19:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A618215A4
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:19:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Y9O2zIBw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A618215A4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4U3lAy7PYywi4VNb/v8br8DNCof1m/SUW/+bgHpRUGI=; b=Y9O2zIBwdwV2BYBflhfB0A/xw
	PGyk5PZQJ1ag76HkEmSCX1iUfL+inj9K4pWE8nX9rG3Zq1YRhsAR8JUF2N6bt6J39Aem+oX/aHS1x
	O53Wnej7ouFw5bIRsoedznb//dnvJFskelOVYhSQWS9+MAKelKtDpec2luSlZdbllTXW+sWwBpfC8
	AGnx+NTZlHeqqI2dn2INPXxkkxShr7B6DDaK6h75wyGUWIl5oduFMayKmNDaLk7WoIHUoZIRXTMlH
	gYeUqiqvyynXi9uyrTbe77CeWOgcQ1RCu8yhgiNSk2FdrQmFY5h6KhwJb78SRxj1jPq27wxG6djYV
	XeNZT3Kbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFHzU-0005bQ-9T; Mon, 07 Sep 2020 14:19:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFHzQ-0005ZC-3I
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 14:19:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id B3AD62988AF
Subject: Re: [PATCH v4 05/10] media: staging: rkisp1: add capability
 V4L2_CAP_IO_MC to capture devices
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-6-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <641fae10-269c-c597-a8bf-9969a23580ec@collabora.com>
Date: Mon, 7 Sep 2020 11:19:11 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200901111612.10552-6-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_101924_316651_6CEB5AEE 
X-CRM114-Status: GOOD (  24.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 9/1/20 8:16 AM, Dafna Hirschfeld wrote:
> The capture devices supports YUV, RGB, and Bayer formats.
> Adding V4L2_CAP_IO_MC capability will reflect userspace
> what format should be set on the resizer in order to stream
> each of the video formats.
> 
> The patch adds a 'mbus' field to the struct
> 'rkisp1_capture_fmt_cfg' which maps the video format
> to the needed mbus format.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 65 +++++++++++++++++--
>  1 file changed, 59 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 22da94a9baf1..d23c9adc8201 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -49,12 +49,14 @@ enum rkisp1_plane {
>   * @uv_swap: if cb cr swaped, for yuv
>   * @write_format: defines how YCbCr self picture data is written to memory
>   * @output_format: defines sp output format
> + * @mbus: the mbus code on the src resizer pad that matches the pixel format
>   */
>  struct rkisp1_capture_fmt_cfg {
>  	u32 fourcc;
>  	u8 uv_swap;
>  	u32 write_format;
>  	u32 output_format;
> +	u32 mbus;
>  };
>  
>  struct rkisp1_capture_ops {
> @@ -88,92 +90,116 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>  		.fourcc = V4L2_PIX_FMT_YUYV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV16,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV61,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU422M,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	},
>  	/* yuv420 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_NV21,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV21M,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12M,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV420,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU420,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	},
>  	/* yuv400 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_GREY,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	},
>  	/* raw */
>  	{
>  		.fourcc = V4L2_PIX_FMT_SRGGB8,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_SRGGB8_1X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGRBG8,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_SGRBG8_1X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGBRG8,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_SGBRG8_1X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SBGGR8,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
> +		.mbus = MEDIA_BUS_FMT_SBGGR8_1X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SRGGB10,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SRGGB10_1X10,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGRBG10,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SGRBG10_1X10,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGBRG10,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SGBRG10_1X10,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SBGGR10,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SBGGR10_1X10,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SRGGB12,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SRGGB12_1X12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGRBG12,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SGRBG12_1X12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGBRG12,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SGBRG12_1X12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SBGGR12,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
> +		.mbus = MEDIA_BUS_FMT_SBGGR12_1X12,
>  	},
>  };
>  
> @@ -184,26 +210,31 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV16,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV61,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU422M,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	},
>  	/* yuv420 */
>  	{
> @@ -211,31 +242,37 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV21M,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12M,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV420,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU420,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
>  	},
>  	/* yuv400 */
>  	{
> @@ -243,16 +280,19 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	},
>  	/* rgb */
>  	{
>  		.fourcc = V4L2_PIX_FMT_XBGR32,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_RGB565,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	},
>  };
>  
> @@ -1106,14 +1146,27 @@ static int rkisp1_enum_fmt_vid_cap_mplane(struct file *file, void *priv,
>  {
>  	struct rkisp1_capture *cap = video_drvdata(file);
>  	const struct rkisp1_capture_fmt_cfg *fmt = NULL;
> +	unsigned int i, n = 0;
>  
> -	if (f->index >= cap->config->fmt_size)
> -		return -EINVAL;
> +	if (!f->mbus_code) {
> +		if (f->index >= cap->config->fmt_size)
> +			return -EINVAL;
>  
> -	fmt = &cap->config->fmts[f->index];
> -	f->pixelformat = fmt->fourcc;
> +		fmt = &cap->config->fmts[f->index];
> +		f->pixelformat = fmt->fourcc;
> +		return 0;
> +	}
>  
> -	return 0;
> +	for (i = 0; i < cap->config->fmt_size; i++) {
> +		if (cap->config->fmts[i].mbus != f->mbus_code)
> +			continue;
> +
> +		if (n++ == f->index) {
> +			f->pixelformat = cap->config->fmts[i].fourcc;
> +			return 0;
> +		}
> +	}
> +	return -EINVAL;
>  }
>  
>  static int rkisp1_s_fmt_vid_cap_mplane(struct file *file,
> @@ -1261,7 +1314,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  	vdev->v4l2_dev = v4l2_dev;
>  	vdev->lock = &node->vlock;
>  	vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE |
> -			    V4L2_CAP_STREAMING;
> +			    V4L2_CAP_STREAMING | V4L2_CAP_IO_MC;
>  	vdev->entity.ops = &rkisp1_media_ops;
>  	video_set_drvdata(vdev, cap);
>  	vdev->vfl_dir = VFL_DIR_RX;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
