From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 0/6] Hantro low-hanging cleanups
Date: Wed,  1 Jul 2020 10:16:01 -0300
Message-ID: <20200701131607.121988-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Second iteration, just addressing Philipp's and Robin's
feedback on patch 3.

Thanks,
Ezequiel

Ezequiel Garcia (6):
  hantro: h264: Remove unused macro definition
  hantro: h264: Rename scaling list handling function
  hantro: Rework how encoder and decoder are identified
  hantro: Move hantro_enc_buf_finish to JPEG codec_ops.done
  hantro: Remove unused bytesused argument
  hantro: Make sure we don't use post-processor on an encoder

 drivers/staging/media/hantro/hantro.h         | 13 +---
 drivers/staging/media/hantro/hantro_drv.c     | 65 +++++--------------
 .../staging/media/hantro/hantro_h1_jpeg_enc.c | 17 +++++
 drivers/staging/media/hantro/hantro_h264.c    |  6 +-
 drivers/staging/media/hantro/hantro_hw.h      |  5 +-
 drivers/staging/media/hantro/hantro_v4l2.c    | 28 ++++----
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  2 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  8 +--
 drivers/staging/media/hantro/rk3399_vpu_hw.c  |  7 +-
 9 files changed, 64 insertions(+), 87 deletions(-)

-- 
2.26.0.rc2
