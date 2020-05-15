From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 0/4] media: staging: rkisp1: various fixes to capture formats
Date: Fri, 15 May 2020 16:29:48 +0200
Message-ID: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

This patchset fixes some issues in the supported capture formats
of rkisp1.

Patches Summary:

1. Replaces the format V4L2_PIX_FMT_RGB24 with format V4L2_PIX_FMT_XBGR32 which
is the format the device supports.

2. Uses the vdiv, hdiv of the yuv422 explicitly instead of defining macros.
This is a cleanup patch to make it clear where those values are taken from.

3. In case of YUV444 format, the memory input format should stay YUV422
and not be converted by the resizer. This patch fixes it

4. remove support of BGR666 format since it is not supported by the device.

The fixes to formats V4L2_PIX_FMT_XBGR32, V4L2_PIX_FMT_YUV444M
were tested.

Changes from v1:
In v1 I sent a single patch
"media: staging: rkisp1: cap: change RGB24 format to XBGR32"
This patchset reword the commit log of that patch and includes
the 3 other patches.


Dafna Hirschfeld (4):
  media: staging: rkisp1: cap: change RGB24 format to XBGR32
  media: staging: rkisp1: rsz: use hdiv, vdiv of yuv422 instead of
    macros
  media: staging: rkisp1: rsz: set output format to YUV422 if cap format
    is YUV444
  media: staging: rkisp1: cap: remove support of BGR666 format

 drivers/staging/media/rkisp1/rkisp1-capture.c |  6 +---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 28 +++++++++----------
 2 files changed, 15 insertions(+), 19 deletions(-)

-- 
2.17.1
