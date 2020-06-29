From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/4] media: staging: rkisp1: document rkisp1-common.h
Date: Mon, 29 Jun 2020 08:57:50 +0200
Message-ID: <20200629065754.26621-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

This patchset extends the documentation of rkisp1-common.h. It adds
a line description of every struct and every field, and also
a line description of every lock.
Three minor fixes found during documentation are also in this set.
This patchset solves the TODO item: 'Document rkisp1-common.h'

NOTE: This patchset is rebased on top of v2 of the patchset
"media: staging: rkisp1: move stats reading to irq handler"

https://patchwork.kernel.org/project/linux-media/list/?series=308787

This is because that patchset changes the lock fields in the rkisp1-stats
struct.


Dafna Hirschfeld (4):
  media: staging: rkisp1: remove unused field ctrl_handler from struct
    rkisp1_device
  media: staging: rkisp1: remove unused field alloc_ctx from struct
    rkisp1_device
  media: staging: rkisp1: set pads array of the resizer to size 2
  media: staging: rkisp1: improve documentation of rkisp1-common.h

 drivers/staging/media/rkisp1/TODO             |   1 -
 drivers/staging/media/rkisp1/rkisp1-common.h  | 140 ++++++++++++++----
 drivers/staging/media/rkisp1/rkisp1-resizer.c |   2 +-
 3 files changed, 110 insertions(+), 33 deletions(-)

-- 
2.17.1
