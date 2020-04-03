From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 0/2] use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type
Date: Fri,  3 Apr 2020 11:27:36 +0200
Message-ID: <20200403092738.29831-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
List-Id: linux-rockchip.vger.kernel.org

The enum v4l2_pixel_encoding can be used instead of rkisp1_fmt_pix_type.
This allows cleanup of the enum rkisp1_fmt_pix_type. Also, since the
v4l2_pixel_encoding can be retrieved from the info->pixel_enc of the
capture formats, the field fmt_type can be dropped from the struct
rkisp1_capture_fmt_cfg.

Patch 1: replace rkisp1_fmt_pix_type with v4l2_pixel_encoding
Patch 2: drop the field fmt_type from the struct rkisp1_capture_fmt_cfg

Changes from v1:
v1 was a single patch that only drops the fmt_type from the struct
rkisp1_capture_fmt_cfg and adds a function rkisp1_pixel_enc_to_fmt_pix
which is in v2 not needed.

Dafna Hirschfeld (2):
  media: staging: rkisp1: replace rkisp1_fmt_pix_type with
    v4l2_pixel_encoding
  media: staging: rkisp1: cap: remove field fmt_type from struct
    rkisp1_capture_fmt_cfg

 drivers/staging/media/rkisp1/rkisp1-capture.c | 51 +------------------
 drivers/staging/media/rkisp1/rkisp1-common.h  | 11 +---
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++--------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  8 +--
 4 files changed, 29 insertions(+), 83 deletions(-)

-- 
2.17.1
