Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C2ACC021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 13:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bC5ihdbwQdWcWUeND1r8MUmWwWAcPIc3K9f4obQEAcA=; b=U0JzWubDUS+gsl
	FP9WW2wOE0IhzC79sn0UVkMNxT+OldnOeB6Ez+4q5K2OHwKQOO61m2BMdFVQIGVpzpvBu97vZ3/nG
	fnWLwbziEhppTl/Dw7QUryXbGsB9M/Z+nAbbCVaiEXAPcEyY1SD7GivLtc2yXwovbgcY9IkcG1vgq
	MPbF5dXIeR25dktxMJG1gbwe7nQ6qG9yVctZHjRG1iQWhmgvNzkmN1e1t45GiegK4KnOQInJS/HmQ
	Ekamkhp5kZMZ2dHDYaGDTM9YwSicP/qPgOUXvF8i36ibSBSJp8Dqoc4aUHz0TT3TxXosEXMxQeXvn
	fZd0iUhC+tE0wKMhmmRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuhM-0000000HJZZ-1Dxd;
	Tue, 25 Feb 2025 13:10:08 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuPR-0000000HGBu-2DHZ
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 12:51:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2155761248;
	Tue, 25 Feb 2025 12:51:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5465DC4CEDD;
	Tue, 25 Feb 2025 12:51:33 +0000 (UTC)
Message-ID: <9db356bd-4d71-4975-91c6-7435bee8aef3@xs4all.nl>
Date: Tue, 25 Feb 2025 13:51:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/12] media: v4l2-common: Add helpers to calculate
 bytesperline and sizeimage
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Dan Carpenter <dan.carpenter@linaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 Christopher Obbard <christopher.obbard@linaro.org>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
 <20250225-rkvdec_h264_high10_and_422_support-v7-1-7992a68a4910@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20250225-rkvdec_h264_high10_and_422_support-v7-1-7992a68a4910@collabora.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2/25/25 10:40, Sebastian Fricke wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add helper functions to calculate plane bytesperline and sizeimage,
> these new helpers consider bpp div, block width and height when
> calculating plane bytesperline and sizeimage.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  drivers/media/v4l2-core/v4l2-common.c | 78 +++++++++++++++++------------------
>  1 file changed, 39 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> index e4b2de3833ee3d440493f94fca5ee2049b013ef0..fdab16b9d481300eecf2202b3930fdf0a97a3023 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -357,6 +357,34 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
>  	return info->block_h[plane];
>  }
>  
> +static inline unsigned int v4l2_format_plane_stride(const struct v4l2_format_info *info, int plane,
> +						   unsigned int width)

Note that there was a small fixup for this function here:

https://patchwork.linuxtv.org/project/linux-media/patch/20250225124008.195405-1-sebastian.fricke@collabora.com/

Just so it isn't forgotten when this series is merged.

Regards,

	Hans

> +{
> +	unsigned int hdiv = plane ? info->hdiv : 1;
> +	unsigned int aligned_width =
> +		ALIGN(width, v4l2_format_block_width(info, plane));
> +
> +	return DIV_ROUND_UP(aligned_width, hdiv) *
> +	       info->bpp[plane] / info->bpp_div[plane];
> +}
> +
> +static inline unsigned int v4l2_format_plane_height(const struct v4l2_format_info *info, int plane,
> +						    unsigned int height)
> +{
> +	unsigned int vdiv = plane ? info->vdiv : 1;
> +	unsigned int aligned_height =
> +		ALIGN(height, v4l2_format_block_height(info, plane));
> +
> +	return DIV_ROUND_UP(aligned_height, vdiv);
> +}
> +
> +static inline unsigned int v4l2_format_plane_size(const struct v4l2_format_info *info, int plane,
> +						  unsigned int width, unsigned int height)
> +{
> +	return v4l2_format_plane_stride(info, plane, width) *
> +	       v4l2_format_plane_height(info, plane, height);
> +}
> +
>  void v4l2_apply_frmsize_constraints(u32 *width, u32 *height,
>  				    const struct v4l2_frmsize_stepwise *frmsize)
>  {
> @@ -392,37 +420,19 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>  
>  	if (info->mem_planes == 1) {
>  		plane = &pixfmt->plane_fmt[0];
> -		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0] / info->bpp_div[0];
> +		plane->bytesperline = v4l2_format_plane_stride(info, 0, width);
>  		plane->sizeimage = 0;
>  
> -		for (i = 0; i < info->comp_planes; i++) {
> -			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> -			unsigned int vdiv = (i == 0) ? 1 : info->vdiv;
> -			unsigned int aligned_width;
> -			unsigned int aligned_height;
> -
> -			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
> -			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
> -
> -			plane->sizeimage += info->bpp[i] *
> -				DIV_ROUND_UP(aligned_width, hdiv) *
> -				DIV_ROUND_UP(aligned_height, vdiv) / info->bpp_div[i];
> -		}
> +		for (i = 0; i < info->comp_planes; i++)
> +			plane->sizeimage +=
> +				v4l2_format_plane_size(info, i, width, height);
>  	} else {
>  		for (i = 0; i < info->comp_planes; i++) {
> -			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> -			unsigned int vdiv = (i == 0) ? 1 : info->vdiv;
> -			unsigned int aligned_width;
> -			unsigned int aligned_height;
> -
> -			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
> -			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
> -
>  			plane = &pixfmt->plane_fmt[i];
>  			plane->bytesperline =
> -				info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv) / info->bpp_div[i];
> -			plane->sizeimage =
> -				plane->bytesperline * DIV_ROUND_UP(aligned_height, vdiv);
> +				v4l2_format_plane_stride(info, i, width);
> +			plane->sizeimage = plane->bytesperline *
> +				v4l2_format_plane_height(info, i, height);
>  		}
>  	}
>  	return 0;
> @@ -446,22 +456,12 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>  	pixfmt->width = width;
>  	pixfmt->height = height;
>  	pixfmt->pixelformat = pixelformat;
> -	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0] / info->bpp_div[0];
> +	pixfmt->bytesperline = v4l2_format_plane_stride(info, 0, width);
>  	pixfmt->sizeimage = 0;
>  
> -	for (i = 0; i < info->comp_planes; i++) {
> -		unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> -		unsigned int vdiv = (i == 0) ? 1 : info->vdiv;
> -		unsigned int aligned_width;
> -		unsigned int aligned_height;
> -
> -		aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
> -		aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
> -
> -		pixfmt->sizeimage += info->bpp[i] *
> -			DIV_ROUND_UP(aligned_width, hdiv) *
> -			DIV_ROUND_UP(aligned_height, vdiv) / info->bpp_div[i];
> -	}
> +	for (i = 0; i < info->comp_planes; i++)
> +		pixfmt->sizeimage +=
> +			v4l2_format_plane_size(info, i, width, height);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
