From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v3 0/9] drm: rockchip: Fix rockchip drm unbind crash error
Date: Wed,  5 Apr 2017 16:29:18 +0800
Message-ID: <1491380967-28570-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Marek Szyprowski <m.szyprowski@samsung.com>, Baoyou Xie <baoyou.xie@linaro.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, zain wang <wzz@rock-chips.com>, dri-devel@lists.freedesktop.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>, David Airlie <airlied@linux.ie>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Archit Taneja <architt@codeaurora.org>
List-Id: linux-rockchip.vger.kernel.org


Verified on rk3399 chromebook kevin:
1/ stop ui && pkill -9 frecon
2/ unbind/bind drm

Changes in v3:
Address Sean Paul <seanpaul@chromium.org>'s comments.
Update commit message.
Address Sean Paul <seanpaul@chromium.org>'s comments.
Update commit message.
Address Daniel Vetter <daniel@ffwll.ch>'s comments.
Update commit message.
Address Daniel Vetter <daniel@ffwll.ch>'s comments.
Update commit message.
Update commit message.

Changes in v2:
Fix some commit messages.

Jeffy Chen (9):
  drm: bridge: analogix: Detach panel when unbinding analogix dp
  drm: bridge: analogix: Unregister dp aux when unbinding
  drm: bridge: analogix: Destroy connector when unbinding
  drm/rockchip: cdn-dp: Don't try to release firmware when not loaded
  drm/rockchip: vop: Enable pm domain before vop_initial
  drm/rockchip: Reoder drm bind/unbind sequence
  drm/rockchip: Shutdown all crtcs when unbinding drm
  drm/rockchip: gem: Don't alloc/free gem buf when dev_private is
    invalid
  drm/rockchip: cdn-dp: Don't unregister audio dev when unbinding

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  4 ++
 drivers/gpu/drm/rockchip/cdn-dp-core.c             | 10 +++--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        | 50 ++++++++++++----------
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c        |  8 ++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c        | 29 +++++++++----
 5 files changed, 66 insertions(+), 35 deletions(-)

-- 
2.1.4
