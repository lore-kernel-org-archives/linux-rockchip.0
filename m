Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8F8AC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 19:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVrFboMjnygwdoFmMt1jGXeXo0Bs1FBHsBd3Ni8aCxs=; b=nnmPtPXvvKBWMF
	2wZsVoiB8OsIbYXnZE6MeM9/akdSfAjQPgxQTKlr5W416TGcmOBjobjj1XUFotmtdUJG2t7rp5PNw
	DhwfWU80qXDJC/S7r9UIjPOpJxUySaYEOm6pATVFJaI2vRfWe9Eaiw3v83ZHZ015DwBqqkNKkZIET
	MX9t+91hxWjQzZzrSXpw+eiNqNnfSXO2US7+gnRe9tdqxjkqOdlfhYu9Ye4MYwerog/dVjIwm8FI+
	eXsJJGbe6fG7+2XreX2KJC6WN0It1cE+pYcGYZMdoTqsrTMvpeOWDa8IgY23qLX2qmumHOsBmaN7R
	ShE1bmdN0WWUDkbWonZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3NVn-0026FM-7V; Mon, 20 Jun 2022 19:56:39 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3NVk-0026DD-0d; Mon, 20 Jun 2022 19:56:37 +0000
Received: by mail-wm1-x336.google.com with SMTP id l2-20020a05600c4f0200b0039c55c50482so8285792wmq.0;
        Mon, 20 Jun 2022 12:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8JXpksGN8on+hs1kw2vF/ANqrZgfrCyZJ79yotiZS7o=;
        b=Jxj0yKO8OaskheKCkkfQI5jMOBb26izi/IghJ+NTGUFIzOOsB0CmFD4RPNwUNtaLof
         /C3hAXGVclJM0vR6lh8CDHU4GMMT9xyh7RiksMHIaBii/MzeZK68bgHz+LcafyrE+gMc
         mMfCsWH9mQASrfIFkwr05Wrot/6BG81EdYq7EXv40E5YmGAMSUXSS3w0ZBtBKg6LYTZ3
         HtU+cy5glXehl52TcQI/z1P1oNg9rBXNQ87Dxw7DoGIEGaj2SKzjVcwdP+nKFoP63sGx
         0f4eyLLsx9Sux8ZhyLxge2I8edbegqFVWISeEpE8uHp9q2Ea9hY+homqRtUzV/v2T3mA
         gwew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8JXpksGN8on+hs1kw2vF/ANqrZgfrCyZJ79yotiZS7o=;
        b=Q2T6RtVpG4O8n/ChCpTx5AnfimYwT6gKNaRgSIVe1b5FJAzm0xNIxM13uoRA/TMKpt
         PS4SZZ2Kf6X0/fYoup5GkEfkeBtiBkl6pZTsJWIh40C02iI8dcbj8McruKxkx07OZdJK
         EHt0w22Oo6gAScc1V23j9v9mb6y5PgILl1ZEAT18HEVgrQSYB8W8ILm7mKQ27z6TcXCV
         pB3hhR5q8R851Wcw+/aupb/zcKXuD5mWbcWPy0rOFrNAwsxueMX34u2nUS+zqlxe8Mb9
         JZo1xh+iwokfeVHpla44SsXd+7HsSgpH6fEVVVRaK2UVsgEMztc2HzOqEc+9vxgWh5wP
         UkrQ==
X-Gm-Message-State: AJIora97yTFbgSpCxs9sysPLVl7cyQGdKWSUcRgzyWe+Yv24HbfNkADz
	gycLBOrcy3JArA/Y7JhAnDc=
X-Google-Smtp-Source: AGRyM1tt9bsEk8NgI/kpR3VLu38LafWZxQsfbYJmfVaV9kJuFMh9wfpKKuSUoIKnZ9fjpDuLI2I8ZQ==
X-Received: by 2002:a1c:7206:0:b0:39c:4d16:683f with SMTP id n6-20020a1c7206000000b0039c4d16683fmr25813689wmc.197.1655754993183;
        Mon, 20 Jun 2022 12:56:33 -0700 (PDT)
Received: from jernej-laptop.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id t9-20020adfe109000000b0021018642ff8sm14293461wrz.76.2022.06.20.12.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 12:56:32 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v9 00/17] Move HEVC stateless controls out of staging
Date: Mon, 20 Jun 2022 21:56:30 +0200
Message-ID: <5830902.lOV4Wx5bFT@jernej-laptop>
In-Reply-To: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
References: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_125636_132182_63ADF351 
X-CRM114-Status: GOOD (  25.77  )
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

Dne petek, 17. junij 2022 ob 10:35:28 CEST je Benjamin Gaignard napisal(a):
> This series aims to make HEVC uapi stable and usable for hardware
> decoder. HEVC uapi is used by 2 mainlined drivers (Cedrus and Hantro)
> and 2 out of the tree drivers (rkvdec and RPI).

Whole series is:
Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

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
> 
> This version has been tested with these branches:
> - GStreamer:
> https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/tree/HEVC_ali
> gned_with_kernel_5.15 - Linux:
> https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/tree/HEVC_UAP
> I_V9
> 
> With patches to decode 10-bits bitstream and produce P010 frames the Fluster
> score which was 77/147 before, is now 141/147.
> The 10-bits series will comes after this because of it dependency to
> uAPI change. If you are curious you can find the WIP branch here:
> https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/WIP_HE
> VC_UAPI_V9
> 
> The 6 failing tests are:
> - PICSIZE_{A,B,C,D}_Bossen_1 where resolutions are to big for Hantro
> hardware. - WPP_D_ericsson_MAIN_2 and WPP_D_ericsson_MAIN10_2 are visually
> ok but some difference exist on 5 decoded frames. Some pixels values are no
> the same the very end of few lines.
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





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
