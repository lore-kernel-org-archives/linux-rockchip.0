From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: staging: rkisp1: remove TODO item - uapi structs compatibility
Date: Tue,  7 Apr 2020 19:25:22 +0200
Message-ID: <20200407172522.20340-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

remove the TODO item:

* Make sure uapi structs have the same size and layout in 32 and 62 bits,
and that there are no holes in the structures (pahole is a utility that
can be used to test this).

It was tested with pahole and found compatible.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
I tested it using a script that compiles a code that includes the header
both for arm and arm64 and compare the sha1 of the pahole results:

git clone --single-branch --branch rkisp1 git@gitlab.collabora.com:dafna/v4l2-ctrl-abi-check.git
./run-rkisp1.sh

 drivers/staging/media/rkisp1/TODO | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index 0aa9877dd64a..f495b8177767 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -4,9 +4,6 @@ cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
 * Fix pad format size for statistics and parameters entities.
 * Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
 * Fix checkpatch errors.
-* Make sure uapi structs have the same size and layout in 32 and 62 bits,
-and that there are no holes in the structures (pahole is a utility that
-can be used to test this).
 * Review and comment every lock
 * Handle quantization
 * Document rkisp1-common.h
-- 
2.20.1
