From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/2] fix fwnode API usage and remove v4l2_mbus_config field
Date: Mon, 17 Feb 2020 20:16:17 +0100
Message-ID: <20200217191619.28976-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

This patchset fixes usage of the APIs.
This fixes the item in the TODO file:

* Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.

Patches summary:

- The first patch removes the field v4l2_mbus_config from
'struct rkisp1_sensor_async'.

- The second patch removes the usage of
v4l2_async_notifier_parse_fwnode_endpoints_by_port.
The code is very similar to the code in the function cio2_parse_firmware
but instead of iterating the ports it iterates the id's.
The patch also removes the relevant item from the TODO file.

Dafna Hirschfeld (2):
  media: staging: rkisp1: remove mbus field from rkisp1_sensor_async
  media: staging: rkisp1: replace the call to
    v4l2_async_notifier_parse_fwnode_endpoints_by_port

 drivers/staging/media/rkisp1/TODO            |   3 -
 drivers/staging/media/rkisp1/rkisp1-common.h |   3 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c    | 108 ++++++++++---------
 drivers/staging/media/rkisp1/rkisp1-isp.c    |  52 +++------
 4 files changed, 76 insertions(+), 90 deletions(-)

-- 
2.17.1
