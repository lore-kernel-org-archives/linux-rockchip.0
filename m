From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v2 0/9] drm: rockchip: Fix rockchip drm unbind crash error
Date: Sat,  1 Apr 2017 19:35:20 +0800
Message-ID: <1491046529-4310-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Archit Taneja <architt@codeaurora.org>
List-Id: linux-rockchip.vger.kernel.org


Verified on rk3399 chromebook kevin:
1/ stop ui && pkill -9 frecon
2/ unbind/bind drm

Changes in v2:
Fix some commit messages.

Jeffy Chen (9):
  drm: bridge: analogix: Detach panel when unbinding analogix dp
  drm: bridge: analogix: Unregister dp aux when unbinding
  drm: bridge: analogix: Destroy connector when unbinding
  drm/rockchip: cdn-dp: Don't try to release firmware when not loaded
  drm/rockchip: vop: Enable pm domain when resetting vop
  drm/rockchip: Reoder unload sequence
  drm/rockchip: Force disable all crtc when unload
  drm/rockchip: gem: Don't alloc/free gem buf before drm dev registered
  drm/rockchip: cdn-dp: Don't unregister audio dev when unbinding

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  4 +++
 drivers/gpu/drm/rockchip/cdn-dp-core.c             | 10 ++++---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |  7 +++--
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c        |  8 ++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c        | 31 +++++++++++++++-------
 5 files changed, 44 insertions(+), 16 deletions(-)

-- 
2.1.4
