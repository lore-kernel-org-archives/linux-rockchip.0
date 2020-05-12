From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/5] media: staging: rkisp1: change workqueue to threaded irq in stats
Date: Tue, 12 May 2020 14:05:17 +0200
Message-ID: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Reading the statistics registers might take too long
to run inside the irq handler. Currently it is deferred
to bottom half using workqueues. This patch replaces the
workqueue with threaded interrupts.
This fixes an item in the TODO file to move the driver from staging.

Patches Summary:
1. Since the irq is shared, the isr should return either IRQ_NONE or IRQ_HANDELD.
This patch fixes it. In later patch, IRQ_WAKE_THREAD will be added.
2. Replace a long bitwise-or of the statistics flags with a macro to improve readability
3. Fixes a bug of using spin_lock instead of spin_lock_irqsave inside an irq handler
3. Replace two locks in the rkisp1_stats object with one lock that
protects the 'is_streaming' variable and the 'stat' list of buffers.
4. Replaces the workqueue with threaded irq in the statistics.

The code is tested using the 'cam' command from libcamera:

cam -c 1 -C  -s width=1280,height=960 --file="/tmp/libcamframe#.data"

Dafna Hirschfeld (4):
  media: staging: rkisp1: use a macro for the statistics flags mask
  media: staging: rkisp1: stats: use spin_lock_irqsave for irq_lock
  media: staging: rkisp1: stats: replace locks wq_lock, irq_lock with
    one lock
  media: staging: rkisp1: replace workqueue with threaded irq for
    reading statistics registers

Helen Koike (1):
  media: staging: rkisp1: return IRQ_NONE in isr when irq isn't for ISP

 drivers/staging/media/rkisp1/TODO             |   1 -
 drivers/staging/media/rkisp1/rkisp1-capture.c |   7 +-
 drivers/staging/media/rkisp1/rkisp1-common.h  |  20 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  22 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c     |  20 +-
 drivers/staging/media/rkisp1/rkisp1-stats.c   | 197 +++++++-----------
 6 files changed, 121 insertions(+), 146 deletions(-)

-- 
2.17.1
