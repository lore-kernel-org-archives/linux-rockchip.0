From: Your Name <you@example.com>
Subject: [PATCH v4 00/12] drm: rockchip: Fix rockchip drm unbind crash error
Date: Thu,  6 Apr 2017 20:22:11 +0800
Message-ID: <1491481343-11025-1-git-send-email-you@example.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Your Name <you@example.com>, linux-arm-kernel@lists.infradead.org, Marek Szyprowski <m.szyprowski@samsung.com>, Yakir Yang <kuankuan.y@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Heiko Stuebner <heiko@sntech.de>, Jani Nikula <jani.nikula@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, Archit Taneja <architt@codeaurora.org>, Jeffy Chen <jeffy.chen@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org


Verified on rk3399 chromebook kevin:
1/ stop ui && pkill -9 frecon
2/ unbind/bind drm

Changes in v4:
Address Andrzej Hajda <a.hajda@samsung.com>'s comments.

Changes in v3:
Update commit message.
Address Sean Paul <seanpaul@chromium.org>'s comments.
Update commit message.
Address Sean Paul <seanpaul@chromium.org>'s comments.
Update commit message.
Address Daniel Vetter <daniel@ffwll.ch>'s comments.
Update commit message.

Changes in v2:
Fix some commit messages.

Jeffy Chen (12):
  drm: bridge: analogix: Detach panel when unbinding analogix dp
  drm: bridge: analogix: Unregister dp aux when unbinding
  drm: bridge: analogix: Disable clock when unbinding
  drm: bridge: analogix: Destroy connector & encoder when unbinding
  drm/rockchip: cdn-dp: Don't try to release firmware when not loaded
  drm/rockchip: cdn-dp: Don't unregister audio dev when unbinding
  drm/rockchip: vop: Enable pm domain before vop_initial
  drm/rockchip: vop: Unprepare clocks when unbinding
  drm/rockchip: analogix_dp: Disable clock when unbinding
  drm/rockchip: Reoder drm bind/unbind sequence
  drm/rockchip: Shutdown all crtcs when unbinding drm
  drm/drm_ioctl.c: Break ioctl when drm device not registered

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  6 +++
 drivers/gpu/drm/drm_ioctl.c                        |  2 +-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |  3 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c             | 10 +++--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        | 50 ++++++++++++----------
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c        | 33 ++++++++++----
 6 files changed, 67 insertions(+), 37 deletions(-)

-- 
2.1.4
