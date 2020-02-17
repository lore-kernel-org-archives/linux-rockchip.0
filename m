From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: staging: rkisp1: remove serialization item in the TODO file
Date: Mon, 17 Feb 2020 18:52:09 +0100
Message-ID: <20200217175209.8279-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

The item 'Fix serialization on subdev ops.' was solved,
so remove it from the TODO file.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
This patch is a follow-up patch of the patchset:
'media: staging: rkisp1: add serialization to the isp and resizer ops'

 drivers/staging/media/rkisp1/TODO | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index 03cd9a4e70f7..0aa9877dd64a 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -1,4 +1,3 @@
-* Fix serialization on subdev ops.
 * Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
 e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
 cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
-- 
2.17.1
