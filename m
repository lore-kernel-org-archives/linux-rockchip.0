Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 698A8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 14:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TgKkv21bTWCywdjwLTKAV1mrRCFbqgKeZwvj7q74W5g=; b=tTsOJmNR0mqoHx
	JdUChypY42qy1oJWWr+a9pT1sDrNFq5KUbKdlTVRdppK1IK4+vma27GzMr1LeGWLZ8kEC/3E2cOD3
	l+o2geSkPBrZ5uKNDbZe1D5AMuqHn7iDjJP7fl5WfieYnzMMmN7QtP2WyXxjzrTu6cmyjr9u3+BFr
	zvePvA5cbYfg0mtpq3/VvySuLJULLayHYYZgmYgtgDIYYBu6i/wAHURhV6wYATw1TIgyJ3AZNEFWB
	Fo7qj+P0aHUQiooKaeSTaDfDpWhEKrxHyY3NHO0T8ZRsk6KHbNnA7maIuKwr4B5kDDDb87Fo8Lcc9
	qec799Wuy5Ew2cNwSwjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub1T-000GWM-NM; Fri, 27 May 2022 14:33:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nub0N-000FuP-Hc; Fri, 27 May 2022 14:31:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id 4E8FF1F462A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653661909;
	bh=DnfHieYj/Muzgq3lfRgmbn4LPfXwx7ExtPybg7p/isE=;
	h=From:To:Cc:Subject:Date:From;
	b=gk84JhoWJ0zsMuiSu1QnIYBbd1v/Y5BF28C3Jn9bmhjCOOPKKFV2M/H/ZmLdVEjPt
	 VEPwLsYIURS587bNJ3j7vnmM12kTC5Gq6D59kDmW5QmKqAlkTLTfwAS3ZlvIEVII8y
	 Ne427IsPYBQefbxUP71SGbMHWBdkwqBhiEcvBsuT3HbQbt9XWDwDg2a4aIxoKwprYu
	 5kFg5gNG1pGSzYnnFNNykgENicp7E6kqf7TxqZYw32X6LgYbRpMoBLD5tjbhpH1kir
	 twdXR3k9DFlgUkfqGa8WoHV1FnKbuhrSUPkKnJsvHB84kJXt/tA7+Nk4rT91rwcV5U
	 LUi7/oiTht0Wg==
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
Subject: [PATCH v6 00/17] Move HEVC stateless controls out of staging
Date: Fri, 27 May 2022 16:31:17 +0200
Message-Id: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_073155_903329_7501268F 
X-CRM114-Status: GOOD (  18.22  )
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
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  24 +-
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  10 +-
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |   6 +-
 include/media/hevc-ctrls.h                    | 250 -----
 include/media/v4l2-ctrls.h                    |  48 +-
 include/uapi/linux/v4l2-controls.h            | 458 +++++++++
 include/uapi/linux/videodev2.h                |  13 +
 23 files changed, 1830 insertions(+), 1219 deletions(-)
 delete mode 100644 include/media/hevc-ctrls.h

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
