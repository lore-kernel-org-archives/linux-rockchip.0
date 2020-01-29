From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v4 0/6] media: rockchip: Add the rkvdec driver
Date: Wed, 29 Jan 2020 16:54:55 -0300
Message-ID: <20200129195501.8317-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Boris Brezillon <boris.brezillon@collabora.com>, Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hello,

This is v4 of Boris' rkvdec driver.

I've addressed the comments received during v3, all of them
quite minor. Please check each patch changelog for more details.

Thanks,
Ezequiel

Boris Brezillon (5):
  media: v4l2-core: Add helpers to build the H264 P/B0/B1 reflists
  media: hantro: h264: Use the generic H264 reflist builder
  media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
  media: rkvdec: Add the rkvdec driver
  arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node

Jonas Karlman (1):
  media: uapi: h264: Add DPB entry field reference flags

 .../bindings/media/rockchip,vdec.yaml         |   71 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        |   16 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   14 +-
 drivers/media/v4l2-core/Kconfig               |    4 +
 drivers/media/v4l2-core/Makefile              |    1 +
 drivers/media/v4l2-core/v4l2-h264.c           |  258 ++++
 drivers/staging/media/Kconfig                 |    2 +
 drivers/staging/media/Makefile                |    1 +
 drivers/staging/media/hantro/Kconfig          |    1 +
 drivers/staging/media/hantro/hantro_h264.c    |  237 +---
 drivers/staging/media/rkvdec/Kconfig          |   15 +
 drivers/staging/media/rkvdec/Makefile         |    3 +
 drivers/staging/media/rkvdec/rkvdec-h264.c    | 1154 +++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec-regs.h    |  239 ++++
 drivers/staging/media/rkvdec/rkvdec.c         | 1134 ++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.h         |  124 ++
 include/media/h264-ctrls.h                    |    2 +
 include/media/v4l2-h264.h                     |   86 ++
 18 files changed, 3132 insertions(+), 230 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
 create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
 create mode 100644 drivers/staging/media/rkvdec/Kconfig
 create mode 100644 drivers/staging/media/rkvdec/Makefile
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264.c
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-regs.h
 create mode 100644 drivers/staging/media/rkvdec/rkvdec.c
 create mode 100644 drivers/staging/media/rkvdec/rkvdec.h
 create mode 100644 include/media/v4l2-h264.h

-- 
2.25.0
