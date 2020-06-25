From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 0/6] Hantro low-hanging cleanups
Date: Thu, 25 Jun 2020 13:35:19 -0300
Message-ID: <20200625163525.5119-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Tackle some low hanging items. There's not much to say here,
see the patches for details.

We'll be soon posting more interesting changes :)

Thanks,
Ezequiel

Ezequiel Garcia (6):
  hantro: h264: Remove unused macro definition
  hantro: h264: Rename scaling list handling function
  hantro: Rework how encoder and decoder are identified
  hantro: Move hantro_enc_buf_finish to JPEG codec_ops.done
  hantro: Remove unused bytesused argument
  hantro: Make sure we don't use post-processor on an encoder

 drivers/staging/media/hantro/hantro.h         |  9 +--
 drivers/staging/media/hantro/hantro_drv.c     | 60 ++++++-------------
 .../staging/media/hantro/hantro_h1_jpeg_enc.c | 17 ++++++
 drivers/staging/media/hantro/hantro_h264.c    |  6 +-
 drivers/staging/media/hantro/hantro_hw.h      |  5 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  2 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  8 +--
 drivers/staging/media/hantro/rk3399_vpu_hw.c  |  7 +--
 8 files changed, 49 insertions(+), 65 deletions(-)

-- 
2.26.0.rc2
