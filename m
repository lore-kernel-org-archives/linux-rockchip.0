From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 00/12] media: rkvdec: Add H.264 High 10 and 4:2:2 profile
 support
Date: Mon, 06 Jul 2020 21:54:33 +0000 (UTC)
Message-ID: <20200706215430.22859-1-jonas@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200701215616.30874-1-jonas@kwiboo.se>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

This series contains minor fixes and adds H.264 High 10 and 4:2:2 profile
support to the Rockchip Video Decoder driver.

Patch 1 and 3 fixes two issues when decoding field encoded content. Patch 2
ensures CAPTURE buffer is same resolution or larger than OUTPUT buffer.

Patch 5 allows userspace to set OUTPUT sizeimage.

Patch 6 updates the v4l2_format helpers to consider block width and height
when calculating plane bytesperline and sizeimage.

Patch 7 adds two new pixelformats for 10-bit 4:2:0/4:2:2.

Patch 8 change to use bytesperline and buffer height to configure strides.

Patch 9 and 10 add support for limit/lock down a pixelformat based on SPS.

Patch 11 adds final bits to support H.264 High 10 and 4:2:2 profiles.

Patch 12 adds profile and level controls.

Changes in v2:
- Collect r-b tags
- SPS pic width and height in mbs validation moved to rkvdec_try_ctrl
- New patch to not override output buffer sizeimage
- Reworked pixel format validation
- Only align decoded buffer instead of changing frmsize step_width
See indivitual patch for changes.

This series depend on the "handle unsupported H.264 bitstreams" series at [1]
with a small fixup, s/p_cur/p_new/.

To fully runtime test this series you may need drm patches from [2] and
ffmpeg patches from [3], this series and drm patches is also available at [4].

[1] https://patchwork.linuxtv.org/cover/64977/
[2] https://patchwork.freedesktop.org/series/78099/
[3] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.3-rkvdec-high-10
[4] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-10-v2

Regards,
Jonas

Jonas Karlman (12):
  media: rkvdec: h264: Fix reference frame_num wrap for second field
  media: rkvdec: Ensure decoded resolution fit coded resolution
  media: rkvdec: h264: Validate and use pic width and height in mbs
  media: rkvdec: h264: Fix bit depth wrap in pps packet
  media: rkvdec: h264: Do not override output buffer sizeimage
  media: v4l2-common: Add helpers to calculate bytesperline and
    sizeimage
  media: v4l2: Add NV15 and NV20 pixel formats
  media: rkvdec: h264: Use bytesperline and buffer height to calculate
    stride
  media: rkvdec: Extract rkvdec_fill_decoded_pixfmt helper method
  media: rkvdec: Lock capture pixel format in s_ctrl and s_fmt
  media: rkvdec: h264: Support High 10 and 4:2:2 profiles
  media: rkvdec: h264: Support profile and level controls

 .../userspace-api/media/v4l/pixfmt-nv15.rst   | 101 ++++++++++++++
 .../userspace-api/media/v4l/pixfmt-nv20.rst   |  99 +++++++++++++
 .../userspace-api/media/v4l/yuv-formats.rst   |   2 +
 drivers/media/v4l2-core/v4l2-common.c         |  80 +++++------
 drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +
 drivers/staging/media/rkvdec/rkvdec-h264.c    |  45 ++++--
 drivers/staging/media/rkvdec/rkvdec.c         | 130 ++++++++++++++----
 drivers/staging/media/rkvdec/rkvdec.h         |   2 +
 include/uapi/linux/videodev2.h                |   3 +
 9 files changed, 384 insertions(+), 80 deletions(-)
 create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-nv15.rst
 create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-nv20.rst

-- 
2.17.1
