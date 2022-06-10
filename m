Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF376C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 14:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5Q2RzwKaYVEn9CMduW8f1UOZpII25JQyRbS8a3tD+o=; b=L3tMOGlgG66WKQ
	pwqeb+cbZgVwQMYblunraBOSSJtghr1BiSLXKOBqLZ48ZS3tFH2/yio9J/ImAMZ5pSwhGPsBAZs1e
	nz5cMXJ7tqVFOUcKilu2E7r5ESMLRcOcS9wwaVQKA9B4mtEVT2WMWBVzYTrgY3oOeC0BOQP4NewAt
	dnNEIp0YirgLAIYje97Hc/FEgW9x1SzN/xPh4dBCE5/Su4qYJbS3HqrIKcE970YXGo2vh8yISg3ah
	wCgEBSGMM0VPPoHdDuphiTtUuLI1nwfJn5UfxADerwyPUmVB3K7E/gxCkG5VrPoUM3yEQUyksu789
	80BY9UkHny2FT5y3Hc9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzfC8-008UN5-NC; Fri, 10 Jun 2022 14:01:00 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzfBu-008UJ7-Tq
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 14:00:50 +0000
Received: by mail-wr1-x42c.google.com with SMTP id u8so32327233wrm.13
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jun 2022 07:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kynesim-co-uk.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:references:in-reply-to
         :user-agent:mime-version:content-transfer-encoding;
        bh=IPP1I+64i7ooAr7hZW07Xbene7CuoEhu5599AQUWnoM=;
        b=e8ie6pMQ/46sfhP67QvDFIfzZpzdSzDktchsNMnWIouASmbj8uI/TMmTXA0UJPZ/vG
         0kFgBr9eUNuXN+rd2TzSHaXwnmNJRBjWeckW8V3tlHNGNFgojGM/B671mKAIpG5CbI3t
         cNRj86VgQbTN4v/AYsitc3UUu2wx9075kI9Et/mBdxbn/FyH/g3cl09vxGNkWw8pnWdD
         dOONWQ2zelN/AI7sVDTB8VqWFurQLbxYx+eDClGZQ6a5sHqETDy2ptFH7ecIEUOS7UDw
         TUiqH49TjgtTdRqjdYFAhl5tLwsuQHq+s5F7tsX6/8zTbrt8E0q/yrRtoHqxAAhFXFBY
         WJoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:references
         :in-reply-to:user-agent:mime-version:content-transfer-encoding;
        bh=IPP1I+64i7ooAr7hZW07Xbene7CuoEhu5599AQUWnoM=;
        b=zydQrbg+yi1HLTE5FhXK/qRZ8Dy6fpQ9326Og6OGyjEen9YJngwpHW0tjQ/H2WNn2j
         Vedq37RXtxtsTRQSaVSH04XxLk4gaOJnk4u51EWj0eD6wUlE2wlyYP+W+7t3GZefNJ70
         aCVb73f2z91RTTwQcssii2ITWEENZICsWQE3xSs6XbAwJbFtrB8emOPyQzn4zaYDAVgP
         K55a6JrQkEWPTLNnxfAyg/lI8WclywUldaFVu8rbszbjPuYFBmWzqmsUhZIJ9zIRhnIC
         iO5M72OVekRmOW/U/lmauTU+ylyUo5eVpXZ2WvmaXehqneF2XpvWWWdPF6tZfLQ+MSY3
         9+QQ==
X-Gm-Message-State: AOAM5306FDgl03pWF7joi/OXJoLiUbrNaAWNjdonXZnYdTMMDZZg4g63
	SEyNTX6TASX2Do9dn9nGKbv/Ig==
X-Google-Smtp-Source: ABdhPJzRMmtiD0YNu5+s1dJ29kJv8Y40v5i8AmwTOT5ChEMrM4QXS+ua4liOSfQbboxVpfgXvlW1Ag==
X-Received: by 2002:a05:6000:2a8:b0:213:ba0c:fef8 with SMTP id l8-20020a05600002a800b00213ba0cfef8mr39875210wry.485.1654869641656;
        Fri, 10 Jun 2022 07:00:41 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
        by smtp.gmail.com with ESMTPSA id p190-20020a1c29c7000000b00397402ae674sm3162596wmp.11.2022.06.10.07.00.40
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 10 Jun 2022 07:00:40 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 00/17] Move HEVC stateless controls out of staging
Date: Fri, 10 Jun 2022 15:00:39 +0100
Message-ID: <4fj6ah11kq78o4rns1l0j96rcdsl81u8ba@4ax.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
User-Agent: ForteAgent/8.00.32.1272
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_070047_190616_C606DF6C 
X-CRM114-Status: GOOD (  20.38  )
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

>This series aims to make HEVC uapi stable and usable for hardware
>decoder. HEVC uapi is used by 2 mainlined drivers (Cedrus and Hantro)
>and 2 out of the tree drivers (rkvdec and RPI).
>
>version 6:
>- Add short_term_ref_pic_set_size and long_term_ref_pic_set_size
>  in v4l2_ctrl_hevc_decode_params structure.
>- Change slice_pic_order_cnt type to s32 to match with PoC type.
>- Set V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag automatically when using
>  V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control.
>- Add a define for max slices count
>- Stop using Hantro dedicated control.
>
>This version has been tested with these branches:
>- GStreamer: https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/tree/HEVC_aligned_with_kernel_5.15
>- Linux: https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/tree/HEVC_UAPI_V6
>
>With patches to decode 10-bits bitstream and produce P010 frames the Fluster score 
>which was 77/147 before, is now 138/147.
>The 10-bits series will comes after this because of it dependency to
>uAPI change. If you are curious you can find the WIP branch here:
>https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/WIP_HEVC_UAPI_V6
>
>The 9 failing tests are:
>- CONFWIN_A_Sony_1 which contains conformance_window_flag that isn't supported 
>  by the hardware (but visually ok aside a pixel shift).
>- PICSIZE_{A,B,C,D}_Bossen_1 where resolutions are to big for Hantro hardware.
>- TSKIP_A_MS_3 is ok when testing alone but fail (corrupted lines on the
>  first frame) when running it after a couple of other tests.
>- VPSSPSPPS_A_MainConcept_1 where there is an issue on gst parser side 
>  because of VPS/SPS/PPS ordering
>- WPP_D_ericsson_MAIN_2 and WPP_D_ericsson_MAIN10_2 are visually ok but some 
>  difference exist on 5 decoded frames. Some pixels values are no the same 
>  the very end of few lines.
>
>version 6:
>- Stop using Hantro dedicated control and compute the number
>  of bytes to skip inside the driver.
>- Rebased on media_tree/master
>
>version 5:
>- Change __u16 pic_order_cnt[2] into __s32 pic_order_cnt_val in
>  hevc_dpb_entry structure
>- Add defines for SEI pic_struct values (patch 4)
>- Fix numbers of bits computation in cedrus_h265_skip_bits() parameters
>- Fix num_short_term_ref_pic_sets and num_long_term_ref_pics_sps
>  documentation (patch 8)
>- Rebased on v5-18-rc1
>
>GStreamer H265 decoder plugin aligned with HEVC uAPI v5:
>https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/tree/HEVC_aligned_with_kernel_5.15
>
>Version 4:
>- Add num_entry_point_offsets field in  struct v4l2_ctrl_hevc_slice_params
>- Fix V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS name
>- Initialize control V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS
>- Fix space/tab issue in kernel-doc
>- Add patch to change data_bit_offset definition
>- Fix hantro-media SPDX license
>- put controls under stateless section in v4l2-ctrls-defs.c
>
>At the end fluster tests results on IMX8MQ is 77/147 for HEVC codec.
>
>Benjamin Gaignard (14):
>  media: uapi: HEVC: Add missing fields in HEVC controls
>  media: uapi: HEVC: Rename HEVC stateless controls with STATELESS
>    prefix
>  media: uapi: HEVC: Change pic_order_cnt definition in
>    v4l2_hevc_dpb_entry
>  media: uapi: HEVC: Add SEI pic struct flags
>  media: uapi: HEVC: Add documentation to uAPI structure
>  media: uapi: HEVC: Define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a
>    dynamic array
>  media: uapi: Move parsed HEVC pixel format out of staging
>  media: uapi: Add V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
>  media: uapi: Move the HEVC stateless control type out of staging
>  media: controls: Log HEVC stateless control in .std_log
>  media: hantro: Stop using Hantro dedicated control
>  media: uapi: HEVC: fix padding in v4l2 control structures
>  media: uapi: Change data_bit_offset definition
>  media: uapi: move HEVC stateless controls out of staging
>
>Hans Verkuil (3):
>  videodev2.h: add V4L2_CTRL_FLAG_DYNAMIC_ARRAY
>  v4l2-ctrls: add support for dynamically allocated arrays.
>  vivid: add dynamic array test control
>
> .../media/v4l/ext-ctrls-codec-stateless.rst   | 897 ++++++++++++++++++
> .../media/v4l/ext-ctrls-codec.rst             | 780 ---------------
> .../media/v4l/pixfmt-compressed.rst           |   7 +-
> .../media/v4l/vidioc-g-ext-ctrls.rst          |  20 +
> .../media/v4l/vidioc-queryctrl.rst            |   8 +
> .../media/videodev2.h.rst.exceptions          |   5 +
> .../media/test-drivers/vivid/vivid-ctrls.c    |  15 +
> drivers/media/v4l2-core/v4l2-ctrls-api.c      | 103 +-
> drivers/media/v4l2-core/v4l2-ctrls-core.c     | 206 +++-
> drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  38 +-
> drivers/media/v4l2-core/v4l2-ctrls-priv.h     |   3 +-
> drivers/media/v4l2-core/v4l2-ctrls-request.c  |  13 +-
> drivers/staging/media/hantro/hantro_drv.c     |  62 +-
> .../staging/media/hantro/hantro_g2_hevc_dec.c |  69 +-
> drivers/staging/media/hantro/hantro_hevc.c    |  10 +-
> drivers/staging/media/hantro/hantro_hw.h      |   4 +-
> drivers/staging/media/sunxi/cedrus/cedrus.c   |  24 +-
> .../staging/media/sunxi/cedrus/cedrus_dec.c   |  10 +-
> .../staging/media/sunxi/cedrus/cedrus_h265.c  |   6 +-
> include/media/hevc-ctrls.h                    | 250 -----
> include/media/v4l2-ctrls.h                    |  48 +-
> include/uapi/linux/v4l2-controls.h            | 458 +++++++++
> include/uapi/linux/videodev2.h                |  13 +
> 23 files changed, 1830 insertions(+), 1219 deletions(-)
> delete mode 100644 include/media/hevc-ctrls.h

For general info, I've ported this patchset to my Raspberry Pi
implementation without issue - so at least in terms of "is this API
adequate for Pi?" the answer is yes.

Many thanks

JC

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
