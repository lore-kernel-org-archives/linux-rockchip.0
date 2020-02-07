From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/4] media: staging: rkisp1: add serialization to the isp and resizer ops
Date: Fri,  7 Feb 2020 09:59:47 +0100
Message-ID: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Subdevices' ops callbacks can be called either through uAPI with
ioctl or through kAPI with the v4l2_subdev_call macro. Therefore
the lock of the subdevice node is not set and instead the driver
itself is responsible for serializing the ops.
This patchset adds serialization to the isp and resizer subdevices.
A mutex field 'ops_lock' is added to the inner struct of each of them.

The ops_lock is then used in the following operations:

set_fmt, get_fmt, set_selection, get_selection, s_stream

Serialization for enum_mbus_code is not needed since this operation
is independent of the specific configuration.

Patches summary:

patch 1 Changes two functions that return int to return void
        and removes a redundant check of error since the functions don't fail.

patch 2 moves the check that the bus type is DPHY before initializing registers
        in the s_stream callback of the isp.

patch 3 adds serialization for the isp subdevice.

patch 4 adds serialization for the resizer subdevice.


Dafna Hirschfeld (4):
  media: staging: rkisp1: change function to return void instead of int
  media: staging: rkisp1: isp: check for dphy bus before initializations
    in s_stream
  media: staging: rkisp1: add serialization to the isp subdev ops
  media: staging: rkisp1: add serialization to the resizer subdev ops

 drivers/staging/media/rkisp1/rkisp1-common.h  |  3 ++
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 51 ++++++++++---------
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 16 +++++-
 3 files changed, 45 insertions(+), 25 deletions(-)

-- 
2.17.1
