Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D03C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 07:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VmiDZcbvzu6IuqfRIwBQMSnFxOUpMB0jQN0PSDLIEOQ=; b=YSuG0RQ9HhL4RJ
	xr5rktHcctQ2+7Jd3ZAyzzICIBZ2MDMH1hkwZhzmfgmGlqOHAU5GhF7gf0EGOsZeugy0k16ihutlm
	lycZc5YGed8xakYWUe2wVeB6fGzfOhBJCDYJ5xSTjtotqHS0pU01DWOpqYwSh0sqyUWPonxKuvBsF
	U6RtMmpLU/Q6lmnHneMiqbboRPiyCPfZbyenxi+3UvyZUhq5OQrmq11A19Og5XIkoBMxk8jYWKhOp
	04e4hX9G3nl2ImSiuX1CDmbsuFWts2WoizyU2tQHn6JcdiKOFT9ozZB4Xhl3HBidyyH2afeCuk0x+
	QQNOrZcV7RElYlYlDC5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11Ke-0083zk-PD; Tue, 14 Jun 2022 07:51:24 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11JK-0083Go-EG; Tue, 14 Jun 2022 07:50:05 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4a7b:8d3a:acaa:ec46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1CB2766016A1;
	Tue, 14 Jun 2022 08:49:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655192995;
	bh=zoiPOuRo8H3KB+U2yepjHBKUGgGIkqW54MCYjJWKwkQ=;
	h=From:To:Cc:Subject:Date:From;
	b=GxrurDzQSTb4OfoFI9/n3BhJdjz/fyrnMBsvTfXCI2aouLWxFmzbzjhXH03RqZFT5
	 TLTJy8MuCA3SKtXu/gPSUFTiEUh6AIZyXjwM4hz3brlYb+TvDI1n6pnzT7IDqFvBUZ
	 IwZLH0PYtjyHt1FSblE7S7nkvm8BrAtLKoWMW4X7cwpaRSGHzrnrHT81Y2pV1KpV0o
	 vYrvjfYIf5XyF6Kod0/pudtFeElvPMhm7RmbLAQ8mBRTdZIJM6trtKfwGFZINnyVeU
	 Ca33UzitRkYO6K4JiOu1ZL/F4zV+uAr5v4n3h2daXry8WdnzfsBTslA/JyFiGm/9D/
	 jR8GOysv07Jfw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 00/17] Move HEVC stateless controls out of staging
Date: Tue, 14 Jun 2022 09:49:30 +0200
Message-Id: <20220614074947.160316-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_005002_764081_5315B966 
X-CRM114-Status: GOOD (  18.78  )
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

This series aims to make HEVC uapi stable and usable for hardware
decoder. HEVC uapi is used by 2 mainlined drivers (Cedrus and Hantro)
and 2 out of the tree drivers (rkvdec and RPI).

version 7:
- Apply Jernej patches for Cedrus about bit offset definition and
  V4L2_CID_STATELESS_HEVC_SLICE_PARAMS being a dynamic array control.

version 6:
- Add short_term_ref_pic_set_size and long_term_ref_pic_set_size
  in v4l2_ctrl_hevc_decode_params structure.
- Change slice_pic_order_cnt type to s32 to match with PoC type.
- Set V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag automatically when using
  V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control.
- Add a define for max slices count
- Stop using Hantro dedicated control.

This version has been tested with these branches:
- GStreamer: https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/tree/HEVC_aligned_with_kernel_5.15
- Linux: https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/tree/HEVC_UAPI_V6

With patches to decode 10-bits bitstream and produce P010 frames the Fluster score 
which was 77/147 before, is now 138/147.
The 10-bits series will comes after this because of it dependency to
uAPI change. If you are curious you can find the WIP branch here:
https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/WIP_HEVC_UAPI_V6

The 9 failing tests are:
- CONFWIN_A_Sony_1 which contains conformance_window_flag that isn't supported 
  by the hardware (but visually ok aside a pixel shift).
- PICSIZE_{A,B,C,D}_Bossen_1 where resolutions are to big for Hantro hardware.
- TSKIP_A_MS_3 is ok when testing alone but fail (corrupted lines on the
  first frame) when running it after a couple of other tests.
- VPSSPSPPS_A_MainConcept_1 where there is an issue on gst parser side 
  because of VPS/SPS/PPS ordering
- WPP_D_ericsson_MAIN_2 and WPP_D_ericsson_MAIN10_2 are visually ok but some 
  difference exist on 5 decoded frames. Some pixels values are no the same 
  the very end of few lines.

version 6:
- Stop using Hantro dedicated control and compute the number
  of bytes to skip inside the driver.
- Rebased on media_tree/master

version 5:
- Change __u16 pic_order_cnt[2] into __s32 pic_order_cnt_val in
  hevc_dpb_entry structure
- Add defines for SEI pic_struct values (patch 4)
- Fix numbers of bits computation in cedrus_h265_skip_bits() parameters
- Fix num_short_term_ref_pic_sets and num_long_term_ref_pics_sps
  documentation (patch 8)
- Rebased on v5-18-rc1

GStreamer H265 decoder plugin aligned with HEVC uAPI v5:
https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/tree/HEVC_aligned_with_kernel_5.15

Version 4:
- Add num_entry_point_offsets field in  struct v4l2_ctrl_hevc_slice_params
- Fix V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS name
- Initialize control V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS
- Fix space/tab issue in kernel-doc
- Add patch to change data_bit_offset definition
- Fix hantro-media SPDX license
- put controls under stateless section in v4l2-ctrls-defs.c

At the end fluster tests results on IMX8MQ is 77/147 for HEVC codec.

Benjamin Gaignard (14):
  media: uapi: HEVC: Add missing fields in HEVC controls
  media: uapi: HEVC: Rename HEVC stateless controls with STATELESS
    prefix
  media: uapi: HEVC: Change pic_order_cnt definition in
    v4l2_hevc_dpb_entry
  media: uapi: HEVC: Add SEI pic struct flags
  media: uapi: HEVC: Add documentation to uAPI structure
  media: uapi: HEVC: Define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a
    dynamic array
  media: uapi: Move parsed HEVC pixel format out of staging
  media: uapi: Add V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS control
  media: uapi: Move the HEVC stateless control type out of staging
  media: controls: Log HEVC stateless control in .std_log
  media: hantro: Stop using Hantro dedicated control
  media: uapi: HEVC: fix padding in v4l2 control structures
  media: uapi: Change data_bit_offset definition
  media: uapi: move HEVC stateless controls out of staging

Hans Verkuil (3):
  videodev2.h: add V4L2_CTRL_FLAG_DYNAMIC_ARRAY
  v4l2-ctrls: add support for dynamically allocated arrays.
  vivid: add dynamic array test control

 .../media/v4l/ext-ctrls-codec-stateless.rst   | 897 ++++++++++++++++++
 .../media/v4l/ext-ctrls-codec.rst             | 780 ---------------
 .../media/v4l/pixfmt-compressed.rst           |   7 +-
 .../media/v4l/vidioc-g-ext-ctrls.rst          |  20 +
 .../media/v4l/vidioc-queryctrl.rst            |   8 +
 .../media/videodev2.h.rst.exceptions          |   5 +
 .../media/test-drivers/vivid/vivid-ctrls.c    |  15 +
 drivers/media/v4l2-core/v4l2-ctrls-api.c      | 103 +-
 drivers/media/v4l2-core/v4l2-ctrls-core.c     | 206 +++-
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  38 +-
 drivers/media/v4l2-core/v4l2-ctrls-priv.h     |   3 +-
 drivers/media/v4l2-core/v4l2-ctrls-request.c  |  13 +-
 drivers/staging/media/hantro/hantro_drv.c     |  62 +-
 .../staging/media/hantro/hantro_g2_hevc_dec.c |  69 +-
 drivers/staging/media/hantro/hantro_hevc.c    |  10 +-
 drivers/staging/media/hantro/hantro_hw.h      |   4 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  25 +-
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  10 +-
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  23 +-
 .../staging/media/sunxi/cedrus/cedrus_video.c |   1 -
 include/media/hevc-ctrls.h                    | 250 -----
 include/media/v4l2-ctrls.h                    |  48 +-
 include/uapi/linux/v4l2-controls.h            | 458 +++++++++
 include/uapi/linux/videodev2.h                |  13 +
 24 files changed, 1848 insertions(+), 1220 deletions(-)
 delete mode 100644 include/media/hevc-ctrls.h

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
