Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D220C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jul 2024 12:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AvTbbnJpPo/vBD4jHpXjpt0mSgp6Gy8vTy+jpReM6w=; b=wPr6K82T46eaa3
	mV5zo7uh/ROGJ/n541uj2ZfD/RMXOaid1j+R51MZxmLqT6vKUjZjFmUs03e7V7q1ikMGAwdyEYZJ2
	Mq6h6J8xhn5iToKRueUyBqo9AUOy/DAB7InqtzKU+MrHDxfr2xZg9aRljCwqNIPYxKLIkdciV+P48
	9yVC7R4fm3cjYIkKkkw1iPUM15A47tFfIqRMRUZUC8yy9fMNEmQ+9t5KK07Kbs8XrDXTGB5eQwmuo
	88Dao3VrriBDBHM15ANn5swzWapzLk3kiQN3sgL2M/aY6LUo3XXsD+MyijWAkLFetP5DqIJ1Xz+JC
	EhhwFxK5sp+M0/KwFUWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUnBW-00000002iE1-2VPG;
	Fri, 19 Jul 2024 12:58:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUnBS-00000002iDD-1KwC
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jul 2024 12:58:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E4A43CE1BD7;
	Fri, 19 Jul 2024 12:57:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC600C32782;
	Fri, 19 Jul 2024 12:57:57 +0000 (UTC)
Message-ID: <07f62fbb-d1eb-41c3-86a8-13a082a8374f@xs4all.nl>
Date: Fri, 19 Jul 2024 14:57:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Enumerate all pixels formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_055802_575096_C4A0E9E9 
X-CRM114-Status: GOOD (  19.42  )
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

On 17/07/2024 15:14, Benjamin Gaignard wrote:
> The goal of this series is to let userland applications enumerate
> all the supported pixels formats of a stateless decoder without
> setting all the possible codec-dependent control.
> That offer a simplest solution for applications to discover
> supported pixels formats and possibly let them doing smarter
> choice between stateless decoders.
> 
> An example of how it can be used in GStreamer to discover the
> supported pixels formats for stateless decoder is available here:
> https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/commits/v4l2codecs_enum_all_supported_formats?ref_type=heads

So effectively specifying this flag makes ENUM_FMT also return
formats that do not match the bit depth.

So the AV1 (for example) compressed video uses e.g. 8 bit depth, but instead of just
listing only 8 bit uncompressed pixelformats, you want to list them for any
bit depth.

But what is the point of that if the decoder can't decode 8 bit compressed to,
say, 10 bit uncompressed video?

I actually thought that this flag would just list all formats, independent
of the output format (e.g. AV1, H264, etc.), but that does not appear to be
the case? I.e., if capture pixelformat X is only available with AV1, will that still
be listed if the output pixel is set to H264?

I think you need to describe a real use-case here, and I am not convinced about
the name of the flag either.

> 
> changes in version 4:
> - Explicitly document that the new flags are targeting mem2mem devices.
> 
> changes in version 3:
> - Add a flag to inform userspace application that driver
>   as take care of the flag.
> 
> changes in version 2:
> - Clarify documentation.
> - Only keep V4L2_FMT_FLAG_ALL_FORMATS flag in ioctl.
> 
> Benjamin
> 
> Benjamin Gaignard (2):
>   media: videodev2: Add flags to unconditionnaly enumerate pixels
>     formats

I.e.: it is not unconditionally, it still depends on the chosen codec.

Regards,

	Hans

>   media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag
> 
>  .../media/v4l/dev-stateless-decoder.rst          |  6 ++++++
>  .../userspace-api/media/v4l/vidioc-enum-fmt.rst  | 11 +++++++++++
>  .../media/videodev2.h.rst.exceptions             |  2 ++
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 16 +++++++++++++---
>  drivers/media/v4l2-core/v4l2-ioctl.c             |  3 +++
>  include/uapi/linux/videodev2.h                   |  2 ++
>  6 files changed, 37 insertions(+), 3 deletions(-)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
