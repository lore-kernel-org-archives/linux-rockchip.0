Return-Path: <SRS0=bc75=QC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11B80C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 15:07:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C698F6101B
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 15:07:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C698F6101B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5mpDcW1BUSMfBNDlmm5P20eDK+XERzoOYui0mgFakjE=; b=PzpmV5mr8Df59wT9a9yuPnysK/
	dHNCjZUTZyGEEswPq+zZQk01NzKM/i5CWl7RfTgjvpEeQkSxhkNo17B8LDHjDIW4rCyT5aX6kFuFE
	E/xUPrfymxqYptUlK+TNFPzRV8y2TCrIcofMngAZys4luy037EU7Om0DQw8kLz3uSsCXz+vlIC6O5
	EI6oRC9Lp1zWUt/W+LgCH7wuyZM28szTvgkaU5SmS3vBVD3PFeo08nUq8n5K2SGOmBjqbk67YmPdH
	oKFmdS1kIS1JV1M0OPGbKRfeaXjAGqYhErWYVdURE9q47umTpmx2+EqPUqC9hOlddZ9Xc93JbIw76
	2RWY68bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmdaI-00FwhU-I0; Mon, 15 Nov 2021 15:07:50 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([2001:888:0:108::2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmda4-00Fwfd-Ms; Mon, 15 Nov 2021 15:07:39 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id mdZumFmK7fwDFmdZxmOrzl; Mon, 15 Nov 2021 16:07:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1636988850; bh=sthIg1+/a+1Vw8t243zAiH4D6+V0/ZH0e/mjzRimmBo=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=rX+ndb9UZ/vakCOot0O0HH76IKJRO7QhU2SFj0wZ4Lg6KkF1xjq6Nr7Rgu3dnETrw
 /daHkioLLYNJyf2NRxTAGJGyS3mCTlOAF6hB+Mq5ZftaAbAySzQ2iRYDzRn5kZswfE
 NoMzMDD4XxGzRaP6bc+GpXAu5tTimZTW0d1LOR4d6zH+gROzib/yDbK1JQZdfSg0fD
 Zgb+zSpA3C5UCU+/GWaFmvV2Hs5Iypnep73ArpJ1j9Q0d1RiCo3sr1pYsXz4z4J/6j
 ye4jDJMDM5lOJ4r73cWLUfyExcOweDjaM6NCjpVRKc7NlxIyO5BwIIsUgTjUORCSfz
 YL+CzlJ0OvoeA==
Subject: Re: [PATCH v7 00/11] VP9 codec V4L2 control interface
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com
References: <20210929160439.6601-1-andrzej.p@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <9db47ebc-cb95-872d-feb4-d6432a74f2cb@xs4all.nl>
Date: Mon, 15 Nov 2021 16:07:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210929160439.6601-1-andrzej.p@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfK51L1WmSNzo5DkW1tzQGMj4V/59OVUJ+nhNMV0rx/lAqDwC1TeJJj2kgyjuukQUvfuqb+/KEbqHrOBOwEja3XTs21AK7vp/prtnyXro5/H89gnjoDQE
 I2rlMsQ6TOHEsoiNQE6uHaG+j5DfXTUIEZEDBnylPIZyl8ySXhq5KgoesqBncPooga9Y4wvL7HFblmEDM8hn1u8AL+KLdvpHJg745OOg7YOt8dvK92o/l8Nf
 s1S97QGM1vMZpvy9+qpwwqAKeU7bPtZ8VCyhJmtCPRt20IMLz2q+7GD42vPogxxAhW26RdeU30D0IRZ8E5+R0mQfPNANK0a90Q+SNqeb9AMGyucZ7yYcxpc1
 eprs7W0SmbNAxSzYavLCclSJp5kDym6KU4VP3B/QrArMWuefkpjLlT4SdvLBqvvHCLeCpDpTI7JuMFkVIwNVPfXtIh7KjQrOfF4GgaIcIZmkp4JjgjEG7ZZu
 um3u05fyvmj1+WdPneNLdBR6DwOKLozeB13Q1ORRgEXWD0CcY3RRsNVJ8q0hz5T/VjzwP9zPVhCw+yEWI5sXJ8GK4+lIdxNwAArvHBl1SSKIrPjUS0niK/XC
 f9LsR/bImvSmu7FWOJEJhMymwJFejWZfDiRD4PBjLU3dBM13EG+0x2NKBDL2A2jFKgFsdXflakW2FaruEe3GEOueocIM1bL/4lXQyvgdeAfAQUBPF6/TJgCZ
 tdb3KcCZe7BJ6eOyGhJXQeNrbDqPliWu1X9+eLVBY4OajVdjM+LeQu/oCaAP4rOZ/YJDSdH6kR+GHgfYs/Jyt0cjBCjjReeoJXY3P9DnN8uhYMmQHt6Oo3uV
 Ikijy8ubbDT67MyfV9TScJ11FrwV4/v6SIYu3+gjHAT+TBJVqwRfSbZLD3wzYEE42baotM+OouORkjYGd5kcpdTHUxpGd34g+QhASRl3T91vMzSui32oO39c
 Y+y8IX9xryTTf/+PiwhqgEgTD9g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_070736_925987_880870FF 
X-CRM114-Status: GOOD (  34.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Andrzej,

Can you rebase this series on top of the master branch of
https://git.linuxtv.org/media_stage.git/ ? Unfortunately this v7 no longer
applies. Specifically "rkvdec: Add the VP9 backend" failed in a non-trivial
manner.

Regards,

	Hans

On 29/09/2021 18:04, Andrzej Pietrasiewicz wrote:
> Dear all,
> 
> This patch series adds VP9 codec V4L2 control interface and two drivers
> using the new controls. It is a follow-up of previous v6 series [1].
> 
> In this iteration, we've implemented VP9 hardware decoding on two devices:
> Rockchip VDEC and Hantro G2, and tested on RK3399, i.MX8MQ and i.MX8MP.
> The i.MX8M driver needs proper power domains support, though, which is a
> subject of a different effort, but in all 3 cases we were able to run the
> drivers.
> 
> GStreamer support is also available, the needed changes have been submitted
> by Daniel Almeida [2]. This MR is ready to be merged, and just needs the
> VP9 V4L2 controls to be merged and released.
> 
> Both rkvdec and hantro drivers are passing a significant number of VP9 tests
> using Fluster[3]. There are still a few tests that are not passing, due to
> dynamic frame resize (not yet supported by V4L2) and small size videos
> (due to IP block limitations).
> 
> The series adds the VP9 codec V4L2 control API as uAPI, so it aims at being
> merged without passing through staging, as agreed[4]. The ABI has been checked
> for padding and verified to contain no holes.
> 
> [1] https://patchwork.linuxtv.org/project/linux-media/list/?series=6377
> [2] https://gitlab.freedesktop.org/gstreamer/gst-plugins-bad/-/merge_requests/2144
> [3] https://github.com/fluendo/fluster
> [4] https://lore.kernel.org/linux-media/b8f83c93-67fd-09f5-9314-15746cbfdc61@xs4all.nl/
> 
> The series depends on the YUV tiled format support prepared by Ezequiel:
> https://www.spinics.net/lists/linux-media/msg197047.html
> 
> Rebased onto latest media_tree.
> 
> Changes related to v6:
> - moved setting tile filter and tile bsd auxiliary buffer addresses so
> that they are always set, even if no tiles are used (thanks, Jernej)
> - added a comment near the place where the 32-bit DMA mask is applied
>   (thanks, Nicolas)
> - improved consistency in register names (thanks, Nicolas)
> 
> Changes related to v5:
> - improved the doc comments as per Ezequiel's review (thanks, Ezequiel)
> - improved pdf output of documentation
> - added Benjamin's Reviewed-by (thanks, Benjamin)
> 
> Changes related to v4:
> - removed unused enum v4l2_vp9_intra_prediction_mode
> - converted remaining enums to defines to follow the convention
> - improved the documentation, in particular better documented how to use segmentation 
> features
> 
> Changes related to v3:
> 
> Apply suggestions from Jernej's review (thanks, Jernej):
> - renamed a control and two structs:
> 	V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR_PROBS =>
> 		V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR
> 	v4l2_ctrl_vp9_compressed_hdr_probs =>
> 		v4l2_ctrl_vp9_compressed_hdr
> 	v4l2_vp9_mv_compressed_hdr_probs => v4l2_vp9_mv_probs
> - moved tx_mode to v4l2_ctrl_vp9_compressed_hdr
> - fixed enum v4l2_vp9_ref_frame_sign_bias values (which are used to test a bitfield)
> - explicitly assigned values to all other vp9 enums
> 
> Apply suggestion from Nicolas's review (thanks, Nicolas):
> - explicitly stated that the v4l2_ctrl_vp9_compressed_hdr control is optional
> and implemented only by drivers which need it
> 
> Changes related to the RFC v2:
> 
> - added another driver including a postprocessor to de-tile
>         codec-specific tiling
> - reworked uAPI structs layout to follow VP8 style
> - changed validation of loop filter params
> - changed validation of segmentation params
> - changed validation of VP9 frame params
> - removed level lookup array from loop filter struct
>         (can be computed by drivers)
> - renamed some enum values to match the spec more closely
> - V4L2 VP9 library changed the 'eob' member of
>         'struct v4l2_vp9_frame_symbol_counts' so that it is an array
>         of pointers instead of an array of pointers to arrays
>         (IPs such as g2 creatively pass parts of the 'eob' counts in
>         the 'coeff' counts)
> - factored out several repeated portions of code
> - minor nitpicks and cleanups
> 
> Andrzej Pietrasiewicz (6):
>   media: uapi: Add VP9 stateless decoder controls
>   media: Add VP9 v4l2 library
>   media: hantro: Rename registers
>   media: hantro: Prepare for other G2 codecs
>   media: hantro: Support VP9 on the G2 core
>   media: hantro: Support NV12 on the G2 core
> 
> Boris Brezillon (1):
>   media: rkvdec: Add the VP9 backend
> 
> Ezequiel Garcia (4):
>   hantro: postproc: Fix motion vector space size
>   hantro: postproc: Introduce struct hantro_postproc_ops
>   hantro: Simplify postprocessor
>   hantro: Add quirk for NV12/NV12_4L4 capture format
> 
>  .../userspace-api/media/v4l/biblio.rst        |   10 +
>  .../media/v4l/ext-ctrls-codec-stateless.rst   |  573 +++++
>  .../media/v4l/pixfmt-compressed.rst           |   15 +
>  .../media/v4l/vidioc-g-ext-ctrls.rst          |    8 +
>  .../media/v4l/vidioc-queryctrl.rst            |   12 +
>  .../media/videodev2.h.rst.exceptions          |    2 +
>  drivers/media/v4l2-core/Kconfig               |    4 +
>  drivers/media/v4l2-core/Makefile              |    1 +
>  drivers/media/v4l2-core/v4l2-ctrls-core.c     |  180 ++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c     |    8 +
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  drivers/media/v4l2-core/v4l2-vp9.c            | 1850 +++++++++++++++++
>  drivers/staging/media/hantro/Kconfig          |    1 +
>  drivers/staging/media/hantro/Makefile         |    7 +-
>  drivers/staging/media/hantro/hantro.h         |   40 +-
>  drivers/staging/media/hantro/hantro_drv.c     |   23 +-
>  drivers/staging/media/hantro/hantro_g2.c      |   27 +
>  .../staging/media/hantro/hantro_g2_hevc_dec.c |   69 +-
>  drivers/staging/media/hantro/hantro_g2_regs.h |  132 +-
>  .../staging/media/hantro/hantro_g2_vp9_dec.c  |  980 +++++++++
>  drivers/staging/media/hantro/hantro_hw.h      |   83 +-
>  .../staging/media/hantro/hantro_postproc.c    |   79 +-
>  drivers/staging/media/hantro/hantro_v4l2.c    |   20 +
>  drivers/staging/media/hantro/hantro_vp9.c     |  240 +++
>  drivers/staging/media/hantro/hantro_vp9.h     |  103 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c   |   38 +-
>  .../staging/media/hantro/rockchip_vpu_hw.c    |    7 +-
>  .../staging/media/hantro/sama5d4_vdec_hw.c    |    3 +-
>  drivers/staging/media/rkvdec/Kconfig          |    1 +
>  drivers/staging/media/rkvdec/Makefile         |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1078 ++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c         |   52 +-
>  drivers/staging/media/rkvdec/rkvdec.h         |   12 +-
>  include/media/v4l2-ctrls.h                    |    4 +
>  include/media/v4l2-vp9.h                      |  182 ++
>  include/uapi/linux/v4l2-controls.h            |  284 +++
>  include/uapi/linux/videodev2.h                |    6 +
>  37 files changed, 6033 insertions(+), 104 deletions(-)
>  create mode 100644 drivers/media/v4l2-core/v4l2-vp9.c
>  create mode 100644 drivers/staging/media/hantro/hantro_g2.c
>  create mode 100644 drivers/staging/media/hantro/hantro_g2_vp9_dec.c
>  create mode 100644 drivers/staging/media/hantro/hantro_vp9.c
>  create mode 100644 drivers/staging/media/hantro/hantro_vp9.h
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
>  create mode 100644 include/media/v4l2-vp9.h
> 
> 
> base-commit: e4e737bb5c170df6135a127739a9e6148ee3da82
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
