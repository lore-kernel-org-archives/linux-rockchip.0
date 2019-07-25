From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 0/7] hantro: Add RK3399 VP8 decoding support
Date: Thu, 25 Jul 2019 11:17:49 -0300
Message-ID: <20190725141756.2518-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

This series adds VP8 decoding support on RK3399 SoC.

I'm including a set of commits from Boris' recent H264 series [1].
These commits add some helpers that are also useful for RK3399 VP8,
and at the same time cleanup the driver nicely.

Finally, there's a fix by Francois Buergisser from Chromium team.

VP8 and MPEG-2 tested on RK3399 RockPi and RK3288 Rock2 boards.

[1] https://patchwork.kernel.org/cover/11003971/

Changes from v1:

 * Remove unused variables.
 * Use buffer helpers in places missing in v1.

Boris Brezillon (4):
  media: hantro: Simplify the controls creation logic
  media: hantro: Constify the control array
  media: hantro: Add hantro_get_{src,dst}_buf() helpers
  media: hantro: Add helpers to prepare/finish a run

Ezequiel Garcia (1):
  media: hantro: Move VP8 common code

Francois Buergisser (1):
  media: hantro: Set DMA max segment size

Jeffy Chen (1):
  media: hantro: Support RK3399 VP8 decoding

 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         |  15 +-
 drivers/staging/media/hantro/hantro_drv.c     |  53 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |  14 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  34 +-
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |  11 +-
 drivers/staging/media/hantro/hantro_hw.h      |   7 +
 drivers/staging/media/hantro/hantro_vp8.c     |  15 +
 drivers/staging/media/hantro/rk3399_vpu_hw.c  |  22 +-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  12 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  14 +-
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      | 595 ++++++++++++++++++
 12 files changed, 708 insertions(+), 85 deletions(-)
 create mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c

-- 
2.22.0
