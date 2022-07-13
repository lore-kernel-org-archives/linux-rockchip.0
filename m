Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15EC3C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 18:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEbZuWhNnoMSUu/YHIjIHW0Mn4sMnu96cnh/Ishju8c=; b=geb2SpzjzdcjyR
	gcSp8JOdFvfBLh/NoK/O5l3YTWMpD4ZTq+O43F/BsA4wSxVJ6ya+/NT2B/YcDyv3GJF5i8PZs19TO
	TXv6ZquaCJRRASL/alKVaQOHKHYuoz1NuWdBCUe0/vfvMub0gUvelxKweOhRHeEspgMyKFgn7u0NV
	ejGD6QDQmNXej+qG3HxH9CjgNG3DxFlh3JZ34g9FyJMRW7or/g87g5Z47Kn/HfCc4S/g4KYhty9/V
	eKdSc5SjZgOkJHvol8EC11T/I986zS7n0npCt292gAM1WaNNSeU+/rtwLSruOSAfaMqvz7vEZm+ky
	nWh51QgoZ4t9sEu/a4Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBh6n-006dqB-09; Wed, 13 Jul 2022 18:29:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBh6d-006dU3-WA
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 18:29:05 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 482C6305;
	Wed, 13 Jul 2022 20:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657736938;
	bh=Pr/CLMWcPvm0deqgG2RHpEcw2yWrRZlhAyD+g7ZrbP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t1ZOVmOxxRgzBdmBKZo3lPjff16f61ukoIVD3MjysiTlSnw1UDFirxRvn+cUCcx+A
	 Dv5f1n6OFpb5lCGEJAnmGmnhS7ewni1RzVEg8FA7mj8xW2G6G0isJAY6vbIAENltFv
	 VKjCVc8L2Nnhtg5nczv6tASMrVJ8hhH70jdzVANA=
Date: Wed, 13 Jul 2022 21:28:28 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: linux-media@vger.kernel.org, jernej.skrabec@gmail.com,
	knaerzche@gmail.com, kernel@collabora.com,
	bob.beckett@collabora.com, ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, nicolas.dufresne@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>, Yury Norov <yury.norov@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Ming Qian <ming.qian@nxp.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Sergey Senozhatsky <senozhatsky@chromium.org>
Subject: Re: [PATCH 1/6] media: v4l2: Add NV15 pixel format
Message-ID: <Ys8OzDzXmmCHI9qb@pendragon.ideasonboard.com>
References: <20220713162449.133738-1-sebastian.fricke@collabora.com>
 <20220713162449.133738-2-sebastian.fricke@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220713162449.133738-2-sebastian.fricke@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_112904_220170_3B2E6EDF 
X-CRM114-Status: GOOD (  22.27  )
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

Hi Sebastian and Jonas,

Thank you for the patch.

On Wed, Jul 13, 2022 at 06:24:46PM +0200, Sebastian Fricke wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add the NV15 pixel format used by the Rockchip Video Decoder for 10-bit
> buffers.
> 
> NV15 is a packed 10-bit 4:2:0 Y/CbCr format similar to P010 and P210 but
> has no padding between components. Instead, luminance and chrominance
> samples are grouped into 4s so that each group is packed into an integer
> number of bytes:
> 
> YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes
> 
> The '15' suffix refers to the optimum effective bits per pixel which is
> achieved when the total number of luminance samples is a multiple of 8
> for NV15.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> ---
>  .../media/v4l/pixfmt-yuv-planar.rst           | 53 +++++++++++++++++++
>  drivers/media/v4l2-core/v4l2-common.c         |  2 +
>  drivers/media/v4l2-core/v4l2-ioctl.c          |  1 +
>  include/uapi/linux/videodev2.h                |  1 +
>  4 files changed, 57 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
> index a900ff66911a..42ab3fe4667f 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
> @@ -79,6 +79,13 @@ All components are stored with the same number of bits per component.
>        - Cr, Cb
>        - Yes
>        - Linear
> +    * - V4L2_PIX_FMT_NV15
> +      - 'NV15'
> +      - 15
> +      - 4:2:0
> +      - Cb, Cr
> +      - Yes
> +      - Linear
>      * - V4L2_PIX_FMT_NV12M
>        - 'NM12'
>        - 8
> @@ -176,6 +183,7 @@ horizontally.
>  
>  .. _V4L2-PIX-FMT-NV12:
>  .. _V4L2-PIX-FMT-NV21:
> +.. _V4L2-PIX-FMT-NV15:
>  .. _V4L2-PIX-FMT-NV12M:
>  .. _V4L2-PIX-FMT-NV21M:
>  .. _V4L2-PIX-FMT-P010:
> @@ -570,6 +578,51 @@ Data in the 10 high bits, zeros in the 6 low bits, arranged in little endian ord
>        - Cb\ :sub:`11`
>        - Cr\ :sub:`11`
>  
> +.. _V4L2_PIX_FMT_NV15:
> +
> +NV15
> +----
> +
> +Like P010 but a packed 10-bit 4:2:0 semi-planar Y/CbCr format without padding between components.

"packed 10-bit semi-planar" sounds confusing, as "packed YUV" usually
refers to YUYV-style formats, but I'm not sure how to express that
better.

> +Instead, luminance and chrominance samples are grouped into 4s so that each group is packed into an integer
> +number of bytes:

Could you please wrap the description at 80 columns ?

> +YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes
> +
> +.. flat-table:: Sample 4x4 NV15 Image
> +    :header-rows:  0
> +    :stub-columns: 0
> +
> +    * - start + 0:
> +      - Y'\ :sub:`00`
> +      - Y'\ :sub:`01`
> +      - Y'\ :sub:`02`
> +      - Y'\ :sub:`03`
> +    * - start + 8:
> +      - Y'\ :sub:`10`
> +      - Y'\ :sub:`11`
> +      - Y'\ :sub:`12`
> +      - Y'\ :sub:`13`
> +    * - start + 16:
> +      - Y'\ :sub:`20`
> +      - Y'\ :sub:`21`
> +      - Y'\ :sub:`22`
> +      - Y'\ :sub:`23`
> +    * - start + 24:
> +      - Y'\ :sub:`30`
> +      - Y'\ :sub:`31`
> +      - Y'\ :sub:`32`
> +      - Y'\ :sub:`33`
> +    * - start + 32:
> +      - Cb\ :sub:`00`
> +      - Cr\ :sub:`00`
> +      - Cb\ :sub:`01`
> +      - Cr\ :sub:`01`
> +    * - start + 40:
> +      - Cb\ :sub:`10`
> +      - Cr\ :sub:`10`
> +      - Cb\ :sub:`11`
> +      - Cr\ :sub:`11`

This doesn't look right. You need to describe the data at the bit level,
so show how the 10-bit samples are packed into bytes.

> +
>  .. raw:: latex
>  
>      \endgroup
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> index 1e38ad8906a2..23a0cb02ea3a 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -262,6 +262,8 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
>  		/* YUV planar formats */
>  		{ .format = V4L2_PIX_FMT_NV12,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 2 },
>  		{ .format = V4L2_PIX_FMT_NV21,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 2 },
> +		{ .format = V4L2_PIX_FMT_NV15,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 5, 5, 0, 0 }, .hdiv = 2, .vdiv = 2,
> +		  .block_w = { 4, 2, 0, 0 }, .block_h = { 1, 1, 0, 0 } },
>  		{ .format = V4L2_PIX_FMT_NV16,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 1 },
>  		{ .format = V4L2_PIX_FMT_NV61,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 1 },
>  		{ .format = V4L2_PIX_FMT_NV24,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index e2526701294e..9e5510cb255e 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1302,6 +1302,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
>  	case V4L2_PIX_FMT_M420:		descr = "YUV 4:2:0 (M420)"; break;
>  	case V4L2_PIX_FMT_NV12:		descr = "Y/CbCr 4:2:0"; break;
>  	case V4L2_PIX_FMT_NV21:		descr = "Y/CrCb 4:2:0"; break;
> +	case V4L2_PIX_FMT_NV15:		descr = "10-bit Y/CbCr 4:2:0 (Packed)"; break;
>  	case V4L2_PIX_FMT_NV16:		descr = "Y/CbCr 4:2:2"; break;
>  	case V4L2_PIX_FMT_NV61:		descr = "Y/CrCb 4:2:2"; break;
>  	case V4L2_PIX_FMT_NV24:		descr = "Y/CbCr 4:4:4"; break;
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 5a73b92ffe4d..47ff34d6b79f 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -598,6 +598,7 @@ struct v4l2_pix_format {
>  /* two planes -- one Y, one Cr + Cb interleaved  */
>  #define V4L2_PIX_FMT_NV12    v4l2_fourcc('N', 'V', '1', '2') /* 12  Y/CbCr 4:2:0  */
>  #define V4L2_PIX_FMT_NV21    v4l2_fourcc('N', 'V', '2', '1') /* 12  Y/CrCb 4:2:0  */
> +#define V4L2_PIX_FMT_NV15    v4l2_fourcc('N', 'V', '1', '5') /* 15  Y/CbCr 4:2:0 10-bit packed */
>  #define V4L2_PIX_FMT_NV16    v4l2_fourcc('N', 'V', '1', '6') /* 16  Y/CbCr 4:2:2  */
>  #define V4L2_PIX_FMT_NV61    v4l2_fourcc('N', 'V', '6', '1') /* 16  Y/CrCb 4:2:2  */
>  #define V4L2_PIX_FMT_NV24    v4l2_fourcc('N', 'V', '2', '4') /* 24  Y/CbCr 4:4:4  */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
