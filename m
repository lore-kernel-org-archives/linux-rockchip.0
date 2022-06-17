Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACA1C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NPK8fOzuMCDGNniqnx81Fz8bU8ckQ1SsN7P88WjWFo=; b=EefsyknsiM3KHt
	gY0Z8Lj0Wj2iD7bQCq62Nhmzu/eRfZul8RHl21wLEQFw6fPrGIqTm2fqglYgWNSe5won44n8EeanL
	PHNyFrR1D5DS+Ljmcd+LPJ43ZTNVaXej6Usf/0yNp5GgxQVyxbeqDrRtDF9isDJkqILPsNV2/8Bx1
	35di7+0fpHvtQFdfmOE1AS7AiSruywDV8S57k4AHD2VpUQ07ny2cPg1uqK/5zrbNI3Dju2/vbmI7W
	55HB63q7uVxKDm1V5uQiuQuDWUw4N+DcmQeOvQQNet1houwM64HbfCBK5IaO4661zsazli/K1HKjr
	timEprBpBEMaPphMSYYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29mD-007B7i-Q0; Fri, 17 Jun 2022 11:04:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29gr-0078We-7W; Fri, 17 Jun 2022 10:59:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C25EB61A9F;
	Fri, 17 Jun 2022 10:58:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDED4C3411B;
	Fri, 17 Jun 2022 10:58:55 +0000 (UTC)
Message-ID: <ae3a7a1b-23bf-ecc8-5afe-2c3ce4ecec05@xs4all.nl>
Date: Fri, 17 Jun 2022 12:58:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v9 00/17] Move HEVC stateless controls out of staging
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_035901_446328_28D7781D 
X-CRM114-Status: GOOD (  28.90  )
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

Hi Benjamin,

On 6/17/22 10:35, Benjamin Gaignard wrote:
> This series aims to make HEVC uapi stable and usable for hardware
> decoder. HEVC uapi is used by 2 mainlined drivers (Cedrus and Hantro)
> and 2 out of the tree drivers (rkvdec and RPI).
> 
> version 9:
> - Reword some commit message
> - Use fls()
> - Remove useless padding at the end of hevc structures
> - Reword all _minus* field description
> - change CVS to codec video sequence
> - Fix various typo
> - Fix undefined label: v4l2-ctrl-flag-dynamic-array warning
> - fix the waring reported by 'scripts/kernel-doc -none
>   include/uapi/linux/v4l2-controls.h'

This looks great, all my tests (sparse, smatch, etc) pass and all my issues are now
addressed.

So all I need is some more Acked-by/Reviewed-by tags for this series, esp. from Nicolas.

Once I have that I'll make a PR for this.

Regards,

	Hans

> 
> This version has been tested with these branches:
> - GStreamer: https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/tree/HEVC_aligned_with_kernel_5.15
> - Linux: https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/tree/HEVC_UAPI_V9
> 
> With patches to decode 10-bits bitstream and produce P010 frames the Fluster score 
> which was 77/147 before, is now 141/147.
> The 10-bits series will comes after this because of it dependency to
> uAPI change. If you are curious you can find the WIP branch here:
> https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/WIP_HEVC_UAPI_V9
> 
> The 6 failing tests are:
> - PICSIZE_{A,B,C,D}_Bossen_1 where resolutions are to big for Hantro hardware.
> - WPP_D_ericsson_MAIN_2 and WPP_D_ericsson_MAIN10_2 are visually ok but some 
>   difference exist on 5 decoded frames. Some pixels values are no the same 
>   the very end of few lines.
> 
> version 8:
> - Same than v7 but rebased on media_stage/master
> 
> version 7:
> - Apply Jernej patches for Cedrus about bit offset definition and
>   V4L2_CID_STATELESS_HEVC_SLICE_PARAMS being a dynamic array control.
> - Based on media_tree/master
> 
> version 6:
> - Add short_term_ref_pic_set_size and long_term_ref_pic_set_size
>   in v4l2_ctrl_hevc_decode_params structure.
> - Change slice_pic_order_cnt type to s32 to match with PoC type.
> - Set V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag automatically when using
>   V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control.
> - Add a define for max slices count
> - Stop using Hantro dedicated control.
> 
> version 5:
> - Change __u16 pic_order_cnt[2] into __s32 pic_order_cnt_val in
>   hevc_dpb_entry structure
> - Add defines for SEI pic_struct values (patch 4)
> - Fix numbers of bits computation in cedrus_h265_skip_bits() parameters
> - Fix num_short_term_ref_pic_sets and num_long_term_ref_pics_sps
>   documentation (patch 8)
> - Rebased on v5-18-rc1
> 
> Version 4:
> - Add num_entry_point_offsets field in  struct v4l2_ctrl_hevc_slice_params
> - Fix V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS name
> - Initialize control V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS
> - Fix space/tab issue in kernel-doc
> - Add patch to change data_bit_offset definition
> - Fix hantro-media SPDX license
> - put controls under stateless section in v4l2-ctrls-defs.c
> 
> Benjamin Gaignard (14):
>   media: uapi: HEVC: Add missing fields in HEVC controls
>   media: uapi: HEVC: Rename HEVC stateless controls with STATELESS
>     prefix
>   media: uapi: HEVC: Change pic_order_cnt definition in
>     v4l2_hevc_dpb_entry
>   media: uapi: HEVC: Add SEI pic struct flags
>   media: uapi: HEVC: Add documentation to uAPI structure
>   media: uapi: HEVC: Define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a
>     dynamic array
>   media: uapi: Move parsed HEVC pixel format out of staging
>   media: uapi: Add V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
>   media: uapi: Move the HEVC stateless control type out of staging
>   media: controls: Log HEVC stateless control in .std_log
>   media: hantro: Stop using Hantro dedicated control
>   media: uapi: HEVC: fix padding in v4l2 control structures
>   media: uapi: Change data_bit_offset definition
>   media: uapi: move HEVC stateless controls out of staging
> 
> Hans Verkuil (3):
>   videodev2.h: add V4L2_CTRL_FLAG_DYNAMIC_ARRAY
>   v4l2-ctrls: add support for dynamically allocated arrays.
>   vivid: add dynamic array test control
> 
>  .../media/v4l/ext-ctrls-codec-stateless.rst   | 897 ++++++++++++++++++
>  .../media/v4l/ext-ctrls-codec.rst             | 780 ---------------
>  .../media/v4l/pixfmt-compressed.rst           |   7 +-
>  .../media/v4l/vidioc-g-ext-ctrls.rst          |  20 +
>  .../media/v4l/vidioc-queryctrl.rst            |   8 +
>  .../media/videodev2.h.rst.exceptions          |   6 +
>  .../media/test-drivers/vivid/vivid-ctrls.c    |  15 +
>  drivers/media/v4l2-core/v4l2-ctrls-api.c      | 103 +-
>  drivers/media/v4l2-core/v4l2-ctrls-core.c     | 212 ++++-
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  38 +-
>  drivers/media/v4l2-core/v4l2-ctrls-priv.h     |   3 +-
>  drivers/media/v4l2-core/v4l2-ctrls-request.c  |  13 +-
>  drivers/staging/media/hantro/hantro_drv.c     |  62 +-
>  .../staging/media/hantro/hantro_g2_hevc_dec.c |  44 +-
>  drivers/staging/media/hantro/hantro_hevc.c    |  10 +-
>  drivers/staging/media/hantro/hantro_hw.h      |   4 +-
>  drivers/staging/media/sunxi/cedrus/cedrus.c   |  26 +-
>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |  10 +-
>  .../staging/media/sunxi/cedrus/cedrus_h265.c  |  23 +-
>  .../staging/media/sunxi/cedrus/cedrus_video.c |   1 -
>  include/media/hevc-ctrls.h                    | 250 -----
>  include/media/v4l2-ctrls.h                    |  48 +-
>  include/uapi/linux/v4l2-controls.h            | 459 +++++++++
>  include/uapi/linux/videodev2.h                |  13 +
>  24 files changed, 1826 insertions(+), 1226 deletions(-)
>  delete mode 100644 include/media/hevc-ctrls.h
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
