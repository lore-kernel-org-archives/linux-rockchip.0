From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Date: Sun, 15 Dec 2019 22:12:22 +0100
Message-ID: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: yuq825@gmail.com, dri-devel@lists.freedesktop.org, lima@lists.freedesktop.org
Cc: airlied@linux.ie, daniel@ffwll.ch, linux-kernel@vger.kernel.org, tomeu.vizoso@collabora.com, robh@kernel.org, steven.price@arm.com, alyssa.rosenzweig@collabora.com, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, wens@csie.org, Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Id: linux-rockchip.vger.kernel.org

This is my attempt at adding devfreq (and cooling device) support to
the lima driver.
I didn't have much time to do in-depth testing. However, I'm sending
this out early because there are many SoCs with Mali-400/450 GPU so
I want to avoid duplicating the work with somebody else.

The code is derived from panfrost_devfreq.c which is why I kept the
Collabora copyright in lima_devfreq.c. Please let me know if I should
drop this or how I can make it more clear that I "borrowed" the code
from panfrost.

I am seeking comments in two general areas:
- regarding the integration into the existing lima code
- for the actual devfreq code (I had to adapt the panfrost code
  slightly, because lima uses a bus and a GPU/core clock)

My own TODO list includes "more" testing on various Amlogic SoCs.
So far I have tested this on Meson8b and Meson8m2 (which both have a
GPU OPP table defined). However, I still need to test this on a GXL
board (which is currently missing the GPU OPP table).


Martin Blumenstingl (1):
  drm/lima: Add optional devfreq support

 drivers/gpu/drm/lima/Kconfig        |   1 +
 drivers/gpu/drm/lima/Makefile       |   3 +-
 drivers/gpu/drm/lima/lima_devfreq.c | 162 ++++++++++++++++++++++++++++
 drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
 drivers/gpu/drm/lima/lima_device.c  |   4 +
 drivers/gpu/drm/lima/lima_device.h  |  11 ++
 drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
 drivers/gpu/drm/lima/lima_sched.c   |   7 ++
 drivers/gpu/drm/lima/lima_sched.h   |   3 +
 9 files changed, 217 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h

-- 
2.24.1
