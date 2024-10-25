Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4236CD0C5F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 09:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aZdrZlGAHoxAjX9iSo9u8P7lEZKWnxgqYM9xdlrRPo=; b=Qdxb1OZaUKLqOr
	mIGojGnitESQ+VgmttrxN5ctDEe7kqQhhYMmWgOxueWkDUygfBwaQvtG9/uTL06ylDcjCSwdHZMRd
	/37vj2Y9HqOHhyNNUvMfhjnAC+uOFnbPxGjjob8S3nM5zcmgJBKpHrCIXkj1N0Cdb/I9S64smSwz4
	MKfFdtwpZY4ZyoQuGhMCordnbl1F8e+LuCNJHqEPgV0b1BndkuuGF7I/5tr3YnhuMjr78oDX+p0LN
	xc+EB2W7SgGuNeoktR8ah0tQ+zkxgfl2/8CanDKCgVORtjHOgQ/4VoJAI+4pJ1kuWb0pa0sAuyBK0
	n65o+SK728+pY5ier+6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Gtc-00000003EgQ-0rgI;
	Fri, 25 Oct 2024 09:46:16 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Fj8-00000002zBw-1DPu
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Oct 2024 08:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729845077;
 bh=LkZZAR59UvfigAsheIWK4sIE2MkApoDkQ9BtG/CzxhA=;
 b=Tz/jiQeKCe7V2n/tc4fY4O9qNUZhvdaO7BZ8axsBCgoalbjX5GwSEA9D+4b8AQUvUBLM7LrwQ
 pi35nt9Kl8GBEA/POvj9wvUL+CJF1jxAHx1uqmarB5t+B33Dsfp2jRMuDJ6RTYx/8KnxXC0S2fa
 GkGo4zqjlx3su00KM6zdfkReQN8jtIdi+yienY2D9dFXgAOmlJGRcwi3vk2USoKDbkCRhtfPoTe
 D6mCWj7FB2ub1PObc2l3yX9Ius1WYNUZSmyJoU3lRsGbZpwkLTau9KasvNhln3Ep6g2z2WP/aPa
 zwZAtavGZuuZSzIaM+S6F5BjzG728xlHHh0nOw3mswVQ==
Message-ID: <71159f58-be8b-41a4-9fed-522e09a7a564@kwiboo.se>
Date: Fri, 25 Oct 2024 10:20:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 00/11] media: rkvdec: Add H.264 High 10 and 4:2:2
 profile support
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Dan Carpenter <dan.carpenter@linaro.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20240909192522.1076704-1-jonas@kwiboo.se>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240909192522.1076704-1-jonas@kwiboo.se>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 671b54df038a5e08a321fe5c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_013122_418101_AC9A4467 
X-CRM114-Status: GOOD (  17.24  )
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

Hi Sebastian,

Will you have time to look at this series any time soon?

Would like to send a v2 of the now one year old rkvdec hevc series but
this series is sort of holding that back ;-)

Regards,
Jonas

On 2024-09-09 21:24, Jonas Karlman wrote:
> This series add H.264 High 10 and 4:2:2 profile support to the Rockchip
> Video Decoder driver.
> 
> Patch 1 add helpers for calculating plane bytesperline and sizeimage.
> Patch 2 add two new pixelformats for semi-planer 10-bit 4:2:0/4:2:2 YUV.
> 
> Patch 3 change to use bytesperline and buffer height to configure strides.
> Patch 4 change to use values from SPS/PPS control to configure the HW.
> 
> Patch 5-9 refactor code to support filtering of CAPUTRE formats based
> on the image format returned from a get_image_fmt ops.
> 
> Patch 10 add final bits to support H.264 High 10 and 4:2:2 profiles.
> 
> Patch 11 add a fix for enumerated frame sizes returned to userspace.
> 
> Tested on a ROCK Pi 4 (RK3399) and Rock64 (RK3328):
> 
>   v4l2-compliance 1.28.1, 64 bits, 64-bit time_t
>   ...
>   Total for rkvdec device /dev/video1: 48, Succeeded: 48, Failed: 0, Warnings: 0
> 
>   Running test suite JVT-FR-EXT with decoder FFmpeg-H.264-v4l2request
>   ...
>   Ran 65/69 tests successfully
> 
>   Running test suite JVT-AVC_V1 with decoder FFmpeg-H.264-v4l2request
>   ...
>   Ran 129/135 tests successfully
> 
> Before this series:
> 
>   Running test suite JVT-FR-EXT with decoder FFmpeg-H.264-v4l2request
>   ...
>   Ran 44/69 tests successfully
> 
> Changes in v6:
> - Change to use fmt_idx instead of j++ tucked inside a condition (Dan)
> - Add patch to fix enumerated frame sizes returned to userspace (Alex)
> - Fluster test score is same as v4 and v5, see [4] and [5]
> Link to v5: https://lore.kernel.org/linux-media/20240618194647.742037-1-jonas@kwiboo.se/
> 
> Changes in v5:
> - Drop Remove SPS validation at streaming start patch
> - Move buffer align from rkvdec_fill_decoded_pixfmt to min/step_width
> - Use correct profiles for V4L2_CID_MPEG_VIDEO_H264_PROFILE
> - Collect r-b and t-b tags
> - Fluster test score is same as v4, see [4] and [5]
> Link to v4: https://lore.kernel.org/linux-media/20231105165521.3592037-1-jonas@kwiboo.se/
> 
> Changes in v4:
> - Fix failed v4l2-compliance tests related to CAPTURE queue
> - Rework CAPTURE format filter anv validate to use an image format
> - Run fluster test suite JVT-FR-EXT [4] and JVT-AVC_V1 [5]
> Link to v3: https://lore.kernel.org/linux-media/20231029183427.1781554-1-jonas@kwiboo.se/
> 
> Changes in v3:
> - Drop merged patches
> - Use bpp and bpp_div instead of prior misuse of block_w/block_h
> - New patch to use values from SPS/PPS control to configure the HW
> - New patch to remove an unnecessary call to validate sps at streaming start
> - Reworked pixel format validation
> Link to v2: https://lore.kernel.org/linux-media/20200706215430.22859-1-jonas@kwiboo.se/
> 
> Changes in v2:
> - Collect r-b tags
> - SPS pic width and height in mbs validation moved to rkvdec_try_ctrl
> - New patch to not override output buffer sizeimage
> - Reworked pixel format validation
> - Only align decoded buffer instead of changing frmsize step_width
> Link to v1: https://lore.kernel.org/linux-media/20200701215616.30874-1-jonas@kwiboo.se/
> 
> To fully runtime test this series you may need FFmpeg patches from [1]
> and fluster patches from [2], this series is also available at [3].
> 
> [1] https://github.com/Kwiboo/FFmpeg/commits/v4l2request-2024-v2-rkvdec/
> [2] https://github.com/Kwiboo/fluster/commits/ffmpeg-v4l2request-rkvdec/
> [3] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-10-v6/
> [4] https://gist.github.com/Kwiboo/f4ac15576b2c72887ae2bc5d58b5c865
> [5] https://gist.github.com/Kwiboo/459a1c8f1dcb56e45dc7a7a29cc28adf
> 
> Regards,
> Jonas
> 
> Alex Bee (1):
>   media: rkvdec: h264: Don't hardcode SPS/PPS parameters
> 
> Jonas Karlman (10):
>   media: v4l2-common: Add helpers to calculate bytesperline and
>     sizeimage
>   media: v4l2: Add NV15 and NV20 pixel formats
>   media: rkvdec: h264: Use bytesperline and buffer height as virstride
>   media: rkvdec: Extract rkvdec_fill_decoded_pixfmt into helper
>   media: rkvdec: Move rkvdec_reset_decoded_fmt helper
>   media: rkvdec: Extract decoded format enumeration into helper
>   media: rkvdec: Add image format concept
>   media: rkvdec: Add get_image_fmt ops
>   media: rkvdec: h264: Support High 10 and 4:2:2 profiles
>   media: rkvdec: Fix enumerate frame sizes
> 
>  .../media/v4l/pixfmt-yuv-planar.rst           | 128 ++++++++++
>  drivers/media/v4l2-core/v4l2-common.c         |  80 +++---
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +
>  drivers/staging/media/rkvdec/rkvdec-h264.c    |  64 +++--
>  drivers/staging/media/rkvdec/rkvdec.c         | 239 +++++++++++++-----
>  drivers/staging/media/rkvdec/rkvdec.h         |  18 +-
>  include/uapi/linux/videodev2.h                |   2 +
>  7 files changed, 410 insertions(+), 123 deletions(-)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
