From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 0/4] media: staging: rkisp1: add support for RGB formats
Date: Sun, 12 Apr 2020 14:05:00 +0200
Message-ID: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
List-Id: linux-rockchip.vger.kernel.org

Add support for RGB formats in rkisp1, (currently only RGB565 is correctly captured)
The patchset is rebased on top of v3 of the patchset
"rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"

patches summary:

patch 1: fix a redundant call to v4l2_format_info in the resizer code
patch 2: remove a redundant if statement that checks that the resizer format is YUV
patch 3: fix a bug that changes the default hdiv,vdiv in the resizer scale for RGB formats.
This bug changes the YUV ratios from 4:2:2 to 4:4:4 and the capture for RGB times out
patch 4: removes the restriction in the validation function of the capture that forces the
mbus encoding to be the same as the capture encoding. This is because for RGB formats
the mbus format should be MEDIA_BUS_FMT_YUYV8_2X8

changes from v1:
* rebase the patchset on top of v3 of "rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"
* patch 1 - use cap->pix.info directly instead of saving it to a variable
* add another patch that removes a redundant if statement in func rkisp1_rsz_config
* patch 4 - change the if statement in rkisp1_capture_link_validate to list the supported
options instead of the unsupported options


Dafna Hirschfeld (4):
  media: staging: rkisp1: rsz: get the capture format info from the
    capture struct
  media: staging: rkisp1: rsz: remove redundant if statement and add
    inline doc
  media: staging: rkisp1: rsz: change (hv)div only if capture format is
    YUV
  media: staging: rkisp1: cap: enable RGB capture format with YUV media
    bus

 drivers/staging/media/rkisp1/rkisp1-capture.c |  6 ++++-
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 26 +++++++++++++------
 2 files changed, 23 insertions(+), 9 deletions(-)

-- 
2.17.1
