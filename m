Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 367C6C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Nov 2023 16:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yVSxEo4ItSa3xMI1OngwMAs5dxTwydlCU4PQRcPDNNI=; b=Btp8UU33ck8b/Y
	N47kr2RcY59e8xiVgLO0KzoM+elx3zQong1bSN0YARG2RTcsiCR4Z953htSuOCAShVdcBxknCSWT/
	rpzN9DBNFssJRcZRo6z3uAroREv1LNLflyYLJG3Sc2QIcp8glCThO0AUKf7tqPYzTkNYp1GBVxjrm
	ulN6524U9VvfWJUXizXJ/yRFHGTRO++9f1TtH3aVEE5KS8Ghb8TvD4QaYQt2JyF9aQz/6sDJWBKfi
	JCOkWZ3lTfeDXVkjW7P2QfhBong0yYgfbXqa7Qo13bM0SnPtmi/9rDlSVW8B8FHUQgWGpvdPJ1vaE
	8Y88Q0n9pjG7idnR3naQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzgPc-00FJ2G-1T;
	Sun, 05 Nov 2023 16:55:48 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzgPY-00FJ0G-1W
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Nov 2023 16:55:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1699203327;
 bh=gpEWyFLpFVQA/Y7FAcamWOkPAGDRoHusQHT6WoMBcvI=;
 b=K0OH+eJxuk0CnFzeiViuoctJ7h50ZC066xjRckTpJRZnM/oC/4dvBdhNAWZI7fjkfQDHnPvuz
 sugfkZzS1jJgb9iFSYJgJvRzqFTw/UDEmvH9Xaa+vg8/YtjuZNoQeeBr5KNdIGfXEMa2GFKFdyH
 5UNc0EM8JL/HAEG0Abjj7JudHNAqAYOViJrxPFGiJpMpjCdzukShWBLzhORwN0pqU7u2AP9PbLN
 9wMy86L2PDL71vlFLOMaTUvoat8S8lCrmZ8s/3r0NnTsSvvkIoIW7CpqigEIq+Tus8059ev81AE
 Cv72ZOB6ZYNsv/1lqQwD3ZbyyDQWTixsefj76wGEr07g==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 00/11] media: rkvdec: Add H.264 High 10 and 4:2:2 profile support
Date: Sun,  5 Nov 2023 16:54:59 +0000
Message-ID: <20231105165521.3592037-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6547c8ff42ad2f8d152468da
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231105_085544_570371_5C85A250 
X-CRM114-Status: GOOD (  10.37  )
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

This is a revival of a 3 year old series [1] now that NV15/NV20/NV30 support
for display driver have landed in mainline tree.

This series adds H.264 High 10 and 4:2:2 profile support to the Rockchip
Video Decoder driver.

Patch 1 adds helpers for calculating plane bytesperline and sizeimage.
Patch 2 adds two new pixelformats for semi-planer 10-bit 4:2:0/4:2:2 YUV.

Patch 3 change to use bytesperline and buffer height to configure strides.
Patch 4 change to use values from SPS/PPS control to configure the HW.
Patch 5 remove an unnecessary call to validate sps at streaming start.

Patch 6-10 refactor code to support filtering of CAPUTRE formats based
on the image format returned from a get_image_fmt ops.

Patch 11 adds final bits to support H.264 High 10 and 4:2:2 profiles.

Tested on a ROCK Pi 4 (RK3399) and Rock64 (RK3328):

  v4l2-compliance 1.24.1, 64 bits, 64-bit time_t
  ...
  Total for rkvdec device /dev/video1: 46, Succeeded: 46, Failed: 0, Warnings: 0

  Running test suite JVT-FR-EXT with decoder FFmpeg-H.264-V4L2-request
  ...
  Ran 65/69 tests successfully

  Running test suite JVT-AVC_V1 with decoder FFmpeg-H.264-V4L2-request
  ...
  Ran 127/135 tests successfully

Before this series:

  Running test suite JVT-FR-EXT with decoder FFmpeg-H.264-V4L2-request
  ...
  Ran 44/69 tests successfully

Changes in v4:
- Fix failed v4l2-compliance tests related to CAPTURE queue
- Rework CAPTURE format filter anv validate to use an image format
- Run fluster test suite JVT-FR-EXT [4] and JVT-AVC_V1 [5]
Link to v3: https://lore.kernel.org/linux-media/20231029183427.1781554-1-jonas@kwiboo.se/

Changes in v3:
- Drop merged patches
- Use bpp and bpp_div instead of prior misuse of block_w/block_h
- New patch to use values from SPS/PPS control to configure the HW
- New patch to remove an unnecessary call to validate sps at streaming start
- Reworked pixel format validation
Link to v2: https://lore.kernel.org/linux-media/20200706215430.22859-1-jonas@kwiboo.se/

Changes in v2:
- Collect r-b tags
- SPS pic width and height in mbs validation moved to rkvdec_try_ctrl
- New patch to not override output buffer sizeimage
- Reworked pixel format validation
- Only align decoded buffer instead of changing frmsize step_width
Link to v1: https://lore.kernel.org/linux-media/20200701215616.30874-1-jonas@kwiboo.se/

Following commits adds support for NV15/NV20/NV30 to VOP driver:
728c15b4b5f3 ("drm/fourcc: Add NV20 and NV30 YUV formats")
d4b384228562 ("drm/rockchip: vop: Add NV15, NV20 and NV30 support")

To fully runtime test this series you may need above drm commits and ffmpeg
patches from [2], this series and drm patches is also available at [3].

[1] https://lore.kernel.org/linux-media/20200706215430.22859-1-jonas@kwiboo.se/
[2] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-n6.1-dev/
[3] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-10-v4/
[4] https://gist.github.com/Kwiboo/f4ac15576b2c72887ae2bc5d58b5c865
[5] https://gist.github.com/Kwiboo/459a1c8f1dcb56e45dc7a7a29cc28adf

Regards,
Jonas

Alex Bee (1):
  media: rkvdec: h264: Don't hardcode SPS/PPS parameters

Jonas Karlman (10):
  media: v4l2-common: Add helpers to calculate bytesperline and
    sizeimage
  media: v4l2: Add NV15 and NV20 pixel formats
  media: rkvdec: h264: Use bytesperline and buffer height as virstride
  media: rkvdec: h264: Remove SPS validation at streaming start
  media: rkvdec: Extract rkvdec_fill_decoded_pixfmt into helper
  media: rkvdec: Move rkvdec_reset_decoded_fmt helper
  media: rkvdec: Extract decoded format enumeration into helper
  media: rkvdec: Add image format concept
  media: rkvdec: Add get_image_fmt ops
  media: rkvdec: h264: Support High 10 and 4:2:2 profiles

 .../media/v4l/pixfmt-yuv-planar.rst           | 128 +++++++++++
 drivers/media/v4l2-core/v4l2-common.c         |  80 +++----
 drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +
 drivers/staging/media/rkvdec/rkvdec-h264.c    |  83 +++----
 drivers/staging/media/rkvdec/rkvdec.c         | 217 +++++++++++++-----
 drivers/staging/media/rkvdec/rkvdec.h         |  18 +-
 include/uapi/linux/videodev2.h                |   2 +
 7 files changed, 396 insertions(+), 134 deletions(-)

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
