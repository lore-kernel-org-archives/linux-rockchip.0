From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 0/4] media: staging: rkisp1: bugs fixes and vars renames
Date: Tue,  9 Jun 2020 17:28:21 +0200
Message-ID: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The first two patches in this patchset are two bug fixes related to the enumeration and
settings of the sink format of the resizer entity.
The two other patches are renaming of macros and the variables.

changes from v1:
- added "Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
to the commit log of the first two patches.
- added two patches. One patch rename the macros "RKISP1_DIR_*"
to "RKISP1_ISP_SD_*", another that rename the field 'direction'
in 'struct rkisp1_isp_mbus_info' to 'isp_pads_flags'

Dafna Hirschfeld (4):
  media: staging: rkisp1: rsz: supported formats are the isp's src
    formats, not sink formats
  media: staging: rkisp1: rsz: set default format if the given format is
    not RKISP1_DIR_SRC
  media: staging: rkisp1: rename macros 'RKISP1_DIR_*' to
    'RKISP1_ISP_SD_*'
  media: staging: rkisp1: rename the field 'direction' in
    'rkisp1_isp_mbus_info' to 'isp_pads_flags'

 drivers/staging/media/rkisp1/rkisp1-common.h  |  6 ++-
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 50 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  6 +--
 3 files changed, 31 insertions(+), 31 deletions(-)

-- 
2.17.1
