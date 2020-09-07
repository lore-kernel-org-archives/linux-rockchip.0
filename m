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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E810C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:19:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0346921481
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:19:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rZK2+p1N"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0346921481
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GhbB+uwl3CSv/w/2oZSMcqjwR5QF8wDLn6USjvbnQVA=; b=rZK2+p1NS8unsZ1mdLnyH43kr
	vhG1FOWGyuO1l67dBg3FZ4dUb+OF0KkhpJTFg9jcPPE90kOSoTIycadGZGtkIVyZifv4qF0CPc/LU
	Jiu77AEmG8BQcU/jtxuHLFpew93J7WQyHev73fkO62E/IKnmpIfGNnm6Jwe7clOy2vb4FEilBDMiM
	UXv9QQahAi2r4kDtF0CXk8Mn/tX6jIglaxvdwXHA+UY8CEUMMHpaZvMqelUBXPNSq2eiXmqtsetwU
	yeqIWJi++4r4+yA+6ontqX487GGUswyqsXNb6lFyln2Z/+lQ+zEAijeH2AFYdFNUQw0Ryp3K6nEik
	gtMsKvdPA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFHzq-0005iU-TG; Mon, 07 Sep 2020 14:19:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFHzn-0005gr-MQ
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 14:19:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id EFCDF2988E5
Subject: Re: [PATCH v4 08/10] media: staging: rkisp1: rsz: Add support to more
 YUV encoded mbus codes on src pad
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-9-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <07cd298b-a4b2-de55-8412-6fecc21b77a9@collabora.com>
Date: Mon, 7 Sep 2020 11:19:34 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200901111612.10552-9-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_101947_938224_B8AEAD4C 
X-CRM114-Status: GOOD (  29.88  )
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
> Add support to more YUV encoded media bus formats on the resizer's
> source pad. The patch defines an array rkisp1_rsz_yuv_formats[]
> with the list of supported YUV media bus formats and their {hv}div
> values. The {hv}div are used in the function 'rkisp1_rsz_config'
> instead of the macros RKISP1_MBUS_FMT_(HV)DIV, and instead of
> checking the capture format.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 67 ++++++++++++++-----
>  1 file changed, 49 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 0e4a2c931ab0..84325d158355 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -16,8 +16,36 @@
>  #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
>  #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
>  
> -#define RKISP1_MBUS_FMT_HDIV 2
> -#define RKISP1_MBUS_FMT_VDIV 1
> +struct rkisp1_rsz_yuv_mbus_info {
> +	u32 mbus_code;
> +	u32 hdiv;
> +	u32 vdiv;
> +};
> +
> +static const struct rkisp1_rsz_yuv_mbus_info rkisp1_rsz_yuv_src_formats[] = {
> +	{
> +		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8, /* YUV422 */
> +		.hdiv		= 2,
> +		.vdiv		= 1,
> +	},
> +	{
> +		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1_5X8, /* YUV420 */
> +		.hdiv		= 2,
> +		.vdiv		= 2,
> +	},
> +};
> +
> +static const struct rkisp1_rsz_yuv_mbus_info *rkisp1_rsz_get_yuv_mbus_info(u32 mbus_code)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(rkisp1_rsz_yuv_src_formats); i++) {
> +		if (rkisp1_rsz_yuv_src_formats[i].mbus_code == mbus_code)
> +			return &rkisp1_rsz_yuv_src_formats[i];
> +	}
> +
> +	return NULL;
> +}
>  
>  enum rkisp1_shadow_regs_when {
>  	RKISP1_SHADOW_REGS_SYNC,
> @@ -361,16 +389,19 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
>  static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>  			      enum rkisp1_shadow_regs_when when)
>  {
> -	u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
> +	const struct rkisp1_rsz_yuv_mbus_info *sink_yuv_info, *src_yuv_info;
>  	struct v4l2_rect sink_y, sink_c, src_y, src_c;
> -	struct v4l2_mbus_framefmt *src_fmt;
> +	struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
>  	struct v4l2_rect *sink_crop;
> -	struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
>  
>  	sink_crop = rkisp1_rsz_get_pad_crop(rsz, NULL, RKISP1_RSZ_PAD_SINK,
>  					    V4L2_SUBDEV_FORMAT_ACTIVE);
>  	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, NULL, RKISP1_RSZ_PAD_SRC,
>  					 V4L2_SUBDEV_FORMAT_ACTIVE);
> +	src_yuv_info = rkisp1_rsz_get_yuv_mbus_info(src_fmt->code);
> +	sink_fmt = rkisp1_rsz_get_pad_fmt(rsz, NULL, RKISP1_RSZ_PAD_SINK,
> +					  V4L2_SUBDEV_FORMAT_ACTIVE);
> +	sink_yuv_info = rkisp1_rsz_get_yuv_mbus_info(sink_fmt->code);
>  
>  	/*
>  	 * The resizer only works on yuv formats,
> @@ -386,25 +417,17 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>  	src_y.width = src_fmt->width;
>  	src_y.height = src_fmt->height;
>  
> -	sink_c.width = sink_y.width / RKISP1_MBUS_FMT_HDIV;
> -	sink_c.height = sink_y.height / RKISP1_MBUS_FMT_VDIV;
> +	sink_c.width = sink_y.width / sink_yuv_info->hdiv;
> +	sink_c.height = sink_y.height / sink_yuv_info->vdiv;
>  
>  	/*
>  	 * The resizer is used not only to change the dimensions of the frame
>  	 * but also to change the scale for YUV formats,
>  	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
> -	 * streams should be set according to the pixel format in the capture.
> -	 * The resizer always gets the input as YUV422. If the capture format
> -	 * is RGB then the memory input should be YUV422 so we don't change the
> -	 * default hdiv, vdiv in that case.
> +	 * streams should be set according to the media bus format in the src pad.
>  	 */
> -	if (v4l2_is_format_yuv(cap->pix.info)) {
> -		hdiv = cap->pix.info->hdiv;
> -		vdiv = cap->pix.info->vdiv;
> -	}
> -
> -	src_c.width = src_y.width / hdiv;
> -	src_c.height = src_y.height / vdiv;
> +	src_c.width = src_y.width / src_yuv_info->hdiv;
> +	src_c.height = src_y.height / src_yuv_info->vdiv;
>  
>  	if (sink_c.width == src_c.width && sink_c.height == src_c.height) {
>  		rkisp1_rsz_disable(rsz, when);
> @@ -496,9 +519,17 @@ static void rkisp1_rsz_set_src_fmt(struct rkisp1_resizer *rsz,
>  				   struct v4l2_mbus_framefmt *format,
>  				   unsigned int which)
>  {
> +	const struct rkisp1_isp_mbus_info *mbus_info;
>  	struct v4l2_mbus_framefmt *src_fmt;
>  
>  	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SRC, which);
> +	mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
> +
> +	/* for YUV formats, userspace can change the mbus code on the src pad if it is supported */
> +	if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
> +	    rkisp1_rsz_get_yuv_mbus_info(format->code))
> +		src_fmt->code = format->code;
> +
>  	src_fmt->width = clamp_t(u32, format->width,
>  				 rsz->config->min_rsz_width,
>  				 rsz->config->max_rsz_width);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
