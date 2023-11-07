Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5C0C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 13:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rRwo6z6NeQIVYsv9S3Mg+bY67T+It1vcG8VTbhFyC0=; b=lKGRaWBvLaQj0P
	tOh75aSDFQQNBEravFV8FBl+ACZDIqOTcyMXJUt50uLSKeF1LxVIuRBq4kzjFPz2jA6cW1/xzd88e
	5tIDZm7dL8vZ5+MmrYgJS4tPiHm5t6G804kmrV0DzrRFf7DNrog5eCfT9+qMeKZI53K17aAakaSis
	UDGEfTjjIllRGSlajo9Sb670vOytKCwIWNTOW0MWFudAlA77OJvHM66ax3h5EIDoSlbUXOF9aGZpO
	gROwqAFM9ZfGfmOn5T50zEevN8YofX1CEOH3n2JtJgqj+ERgBAJ7LgbkMmapTOeGuQuyEG7NDaf99
	BmHpG37QSe3oVRR4Z4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0MS6-001f2S-0W;
	Tue, 07 Nov 2023 13:49:10 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0MS2-001f1o-2x
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 13:49:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 122F0CE0B89;
	Tue,  7 Nov 2023 13:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3E0AC433C7;
	Tue,  7 Nov 2023 13:49:01 +0000 (UTC)
Message-ID: <39d991e9-6afd-4207-ad09-e342a6c02485@xs4all.nl>
Date: Tue, 7 Nov 2023 14:49:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] media: rkvdec: Add HEVC backend
Content-Language: en-US, nl
To: Jonas Karlman <jonas@kwiboo.se>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20231105233630.3927502-1-jonas@kwiboo.se>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20231105233630.3927502-1-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_054907_305357_76E77DFE 
X-CRM114-Status: GOOD (  25.96  )
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

Hi Jonas,

On 06/11/2023 00:36, Jonas Karlman wrote:
> This series add a HEVC backend to the Rockchip Video Decoder driver.
> 
> A version of this HEVC backend has been in use by the LibreELEC distro
> for the past 3+ years [1]. It was initially created based on a copy of
> the H264 backend, unstable HEVC uAPI controls and a cabac table + scaling
> matrix functions shamelessly copied 1:1 from the Rockchip mpp library.
> 
> It has since then been extended to use the stable HEVC uAPI controls and
> improved opon e.g. to include support for rk3288 and fix decoding issues
> by Alex Bee and Nicolas Dufresne.
> 
> The version submitted in this series is based on the code currently used
> by the LibreELEC distro, excluding hard/soft reset, and with cabac table
> and scaling matrix functions picked from Sebastian Fricke prior series
> to add a HEVC backend [2].
> 
> Big thanks to Alex Bee, Nicolas Dufresne and Sebastian Fricke for making
> this series possible!

I ran this series through smatch and found these two issues:

drivers/staging/media/rkvdec/rkvdec-hevc.c: In function 'transpose_and_flatten_matrices':
drivers/staging/media/rkvdec/rkvdec-hevc.c:429:83: warning: variable 'new_value' set but not used [-Wunused-but-set-variable]
  429 |         int i, j, row, x_offset, matrix_offset, rot_index, y_offset, matrix_size, new_value;
      |                                                                                   ^~~~~~~~~
drivers/staging/media/rkvdec/rkvdec-hevc.c:756 rkvdec_hevc_run_preamble() error: we previously assumed 'ctrl' could be null (see line 755)

Also, this series drops the HEVC part from the TODO file, but
I wonder if the last remaining item is still valid:

* Evaluate introducing a helper to consolidate duplicated
  code in rkvdec_request_validate and cedrus_request_validate.
  The helper needs to the driver private data associated with
  the videobuf2 queue, from a media request.

It doesn't look like there is much duplicate code at all. It is certainly not
something that prevents this driver from moving out of staging.

Regards,

	Hans

> 
> Patch 1 add the new HEVC backend.
> Patch 2-3 add variants support to the driver.
> Patch 4 add support for a rk3288 variant.
> Patch 5 add a rk3328 variant to work around hw quirks.
> Patch 6-7 add device tree node for rk3288.
> Patch 8-9 extend vdec node reg size to include cache/perf registers.
> 
> This was tested on a ROCK Pi 4 (RK3399) and Rock64 (RK3328):
> 
>   v4l2-compliance 1.24.1, 64 bits, 64-bit time_t
>   ...
>   Total for rkvdec device /dev/video1: 46, Succeeded: 46, Failed: 0, Warnings: 0
> 
>   Running test suite JCT-VC-HEVC_V1 with decoder FFmpeg-H.265-V4L2-request
>   ...
>   Ran 135/147 tests successfully
> 
>   Running test suite JCT-VC-MV-HEVC with decoder FFmpeg-H.265-V4L2-request
>   ...
>   Ran 9/9 tests successfully
> 
> And on a TinkerBoard (RK3288):
> 
>   v4l2-compliance 1.24.1, 32 bits, 32-bit time_t
>   ...
>   Total for rkvdec device /dev/video3: 47, Succeeded: 47, Failed: 0, Warnings: 0
> 
>   Running test suite JCT-VC-HEVC_V1 with decoder FFmpeg-H.265-V4L2-request
>   ...
>   Ran 137/147 tests successfully
> 
>   Running test suite JCT-VC-MV-HEVC with decoder FFmpeg-H.265-V4L2-request
>   ...
>   Ran 9/9 tests successfully
> 
> This series depend on the following series:
> - media: rkvdec: Add H.264 High 10 and 4:2:2 profile support [3]
> 
> To fully runtime test this series you need above series and ffmpeg
> patches from [4], this series and its depends is also available at [5].
> 
> Full summary of fluster run can be found at [6].
> 
> [1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/patches/linux/default/linux-2000-v4l2-wip-rkvdec-hevc.patch
> [2] https://lore.kernel.org/linux-media/20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com/
> [3] https://lore.kernel.org/linux-media/20231105165521.3592037-1-jonas@kwiboo.se/
> [4] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-n6.1-dev/
> [5] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-hevc-v1/
> [6] https://gist.github.com/Kwiboo/4c0ed87774dede44ce6838451a1ec93d
> 
> Regards,
> Jonas
> 
> Alex Bee (5):
>   media: rkvdec: Add variants support
>   media: rkvdec: Add RK3288 variant
>   media: rkvdec: Disable QoS for HEVC and VP9 on RK3328
>   ARM: dts: rockchip: Add vdec node for RK3288
>   arm64: dts: rockchip: Expand reg size of vdec node for RK3399
> 
> Jonas Karlman (4):
>   media: rkvdec: Add HEVC backend
>   media: rkvdec: Implement capability filtering
>   media: dt-bindings: rockchip,vdec: Add RK3288 compatible
>   arm64: dts: rockchip: Expand reg size of vdec node for RK3328
> 
>  .../bindings/media/rockchip,vdec.yaml         |    4 +-
>  arch/arm/boot/dts/rockchip/rk3288.dtsi        |   17 +-
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi      |    2 +-
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |    6 +-
>  drivers/staging/media/rkvdec/Makefile         |    2 +-
>  drivers/staging/media/rkvdec/TODO             |    7 -
>  .../staging/media/rkvdec/rkvdec-hevc-data.c   | 1848 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec-hevc.c    |  823 ++++++++
>  drivers/staging/media/rkvdec/rkvdec-regs.h    |    3 +
>  drivers/staging/media/rkvdec/rkvdec-vp9.c     |   10 +
>  drivers/staging/media/rkvdec/rkvdec.c         |  180 +-
>  drivers/staging/media/rkvdec/rkvdec.h         |   15 +
>  12 files changed, 2886 insertions(+), 31 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-hevc-data.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-hevc.c
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
