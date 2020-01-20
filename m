From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 0/5] drm/rockchip: Fix unbind/bind
Date: Mon, 20 Jan 2020 14:05:57 -0300
Message-ID: <20200120170602.3832-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

This series is an attempt to fix the unbind/bind crash
(due to an use-after-free bug) found on rockchip-drm driver.

The problem lies in the way the driver uses the component API.
Currently, rockchip_drm_unbind calls component_unbind_all before
drm_mode_config_cleanup, the former releasing the memory
where the DRM objects are embedded.

The series goal is basically to fix all the components,
making proper use of the respective .destroy hooks,
making sure there are no use-after-free or double-free issues.

The first patch is likely the most controversial, which is required
because component_bind_all will call component_unbind without
calling drm_mode_config_cleanup, if any component fails to bind.
As mentioned above, this is problematic in the DRM framework.

Thanks!
Ezequiel

Ezequiel Garcia (5):
  component: Add an API to cleanup before unbind
  drm/rockchip: Fix the device unbind order
  drm/rockchip: vop: Fix CRTC unbind
  drm/rockchip: lvds: Fix component unbind
  drm/rockchip: rk3066_hdmi: Cleanup component unbind

 drivers/base/component.c                    |  9 +++-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c      |  8 +--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 20 +++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 56 ++++++++-------------
 drivers/gpu/drm/rockchip/rockchip_lvds.c    | 20 ++++----
 include/linux/component.h                   | 10 +++-
 6 files changed, 60 insertions(+), 63 deletions(-)

-- 
2.25.0
