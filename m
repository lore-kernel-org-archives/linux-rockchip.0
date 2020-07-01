From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/9] media: rkvdec: Add H.264 High 10 and 4:2:2 profile
 support
Date: Wed, 01 Jul 2020 21:56:20 +0000 (UTC)
Message-ID: <20200701215616.30874-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

This series contains minor fixes and adds H.264 High 10 and 4:2:2 profile
support to the Rockchip Video Decoder driver.

Patch 1 adds profile and level controls.

Patch 2 and 3 fixes two issues when decoding field encoded content. Patch 3
also prepare for changes to step_width in the final patch.

Patch 5 updates the v4l2_format helpers to consider block width and height
when calculating plane bytesperline and sizeimage.

Patch 6 adds two new pixelformats for 10-bit 4:2:0/4:2:2.

Patch 7 change to use bytesperline and buffer height to configure strides.

Patch 8 and 9 adds final bits to support H.264 High 10 and 4:2:2 profiles.

This series depend on the "handle unsupported H.264 bitstreams" series at [1].

To fully runtime test this series you may need drm patches from [2] and
ffmpeg patches from [3], this series and drm patches is also available at [4].

[1] https://patchwork.linuxtv.org/cover/64977/
[2] https://patchwork.freedesktop.org/series/78099/
[3] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.3-rkvdec-high-10
[4] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-10

Regards,
Jonas

Jonas Karlman (9):
  media: rkvdec: h264: Support profile and level controls
  media: rkvdec: h264: Fix reference frame_num wrap for second field
  media: rkvdec: h264: Fix pic width and height in mbs
  media: rkvdec: h264: Fix bit depth wrap in pps packet
  media: v4l2-common: Add helpers to calculate bytesperline and
    sizeimage
  media: v4l2: Add NV15 and NV20 pixel formats
  media: rkvdec: h264: Use bytesperline and buffer height to calculate
    stride
  media: rkvdec: Add validate_fmt ops for pixelformat validation
  media: rkvdec: h264: Support High 10 and 4:2:2 profiles

 .../userspace-api/media/v4l/pixfmt-nv15.rst   | 101 ++++++++++++++++
 .../userspace-api/media/v4l/pixfmt-nv20.rst   |  99 ++++++++++++++++
 .../userspace-api/media/v4l/yuv-formats.rst   |   2 +
 drivers/media/v4l2-core/v4l2-common.c         |  80 ++++++-------
 drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +
 drivers/staging/media/rkvdec/rkvdec-h264.c    | 108 +++++++++++++++---
 drivers/staging/media/rkvdec/rkvdec.c         |  43 +++++--
 drivers/staging/media/rkvdec/rkvdec.h         |   1 +
 include/uapi/linux/videodev2.h                |   3 +
 9 files changed, 369 insertions(+), 70 deletions(-)
 create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-nv15.rst
 create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-nv20.rst

-- 
2.17.1
