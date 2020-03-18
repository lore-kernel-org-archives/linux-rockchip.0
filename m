From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 0/8] hantro: set of small cleanups and fixes
Date: Wed, 18 Mar 2020 10:21:00 -0300
Message-ID: <20200318132108.21873-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, Rob Herring <robh@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hi all,

Cleanups and fixes, second iteration.

The main idea here is to address two issues, and while
at it, clean the driver a bit.

The first issue can be found in Patch 1, when the Request
API is used, the CAPTURE buffer should be returned _before_
the OUTPUT buffer, to avoid waking up userspace prematurely.

I noticed this issue while working on the rkvdec driver,
but this time I've decided to tackle it at the core,
in v4l2_m2m_buf_done_and_job_finish().

The second issue is a simple compliance issue, which is solved
by refactoring the driver, dealing with internal set format
properly.

Changes v2:

* Fix compile warning introduced by patch 6.

* I'm adding two additional patches this time.
  Patch 7 converts the binding to json-schema,
  and patch 8 puts linux-rockchip mailing list in MAINTAINERS. 

Thanks,
Ezequiel

Ezequiel Garcia (8):
  v4l2-mem2mem: return CAPTURE buffer first
  hantro: Set buffers' zeroth plane payload in .buf_prepare
  hantro: Use v4l2_m2m_buf_done_and_job_finish
  hantro: Remove unneeded hantro_dec_buf_finish
  hantro: Move H264 motion vector calculation to a helper
  hantro: Refactor for V4L2 API spec compliancy
  dt-bindings: rockchip-vpu: Convert bindings to json-schema
  hantro: Add linux-rockchip mailing list to MAINTAINERS

 .../bindings/media/rockchip-vpu.txt           |  43 -------
 .../bindings/media/rockchip-vpu.yaml          |  82 +++++++++++++
 MAINTAINERS                                   |   3 +-
 drivers/media/v4l2-core/v4l2-mem2mem.c        |  11 +-
 drivers/staging/media/hantro/hantro.h         |   7 +-
 drivers/staging/media/hantro/hantro_drv.c     |  37 ++----
 drivers/staging/media/hantro/hantro_hw.h      |  31 +++++
 drivers/staging/media/hantro/hantro_v4l2.c    | 111 +++++++++---------
 8 files changed, 194 insertions(+), 131 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml

-- 
2.25.0
