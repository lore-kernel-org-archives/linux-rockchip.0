From: Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/5] drm: rockchip: various ports for older VOPs
Date: Wed, 22 Jul 2020 20:13:27 +0200
Message-ID: <20200722181332.26995-1-knaerzche@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner=20?= <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

this series mainly ports existining functionality to older SoCs - most
importantly enables alpha blending for RK3036, RK3066, RK3126 and
RK3188.
Besides that, it also changes the window type from DRM_PLANE_TYPE_CURSOR
to DRM_PLANE_TYPE_OVERLAY for VOPs that have only one (1) overlay window.

Regards,
Alex

Changes in v2:
- drop not yet upstreamed dsp_data_swap from RK3188 regs
- rephrase most commit messages

Alex Bee (5):
  drm: rockchip: add scaling for RK3036 win1
  drm: rockchip: add missing registers for RK3188
  drm: rockchip: add alpha support for RK3036, RK3066, RK3126 and RK3188
  drm: rockchip: set alpha_en to 0 if it is not used
  drm: rockchip: use overlay windows as such

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 42 ++++++++++++++++++---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
 3 files changed, 38 insertions(+), 6 deletions(-)

-- 
2.17.1
