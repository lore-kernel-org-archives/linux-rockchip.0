From: Sean Paul <seanpaul@chromium.org>
Subject: [PATCH 0/3] drm/rockchip: Add CDN DP driver
Date: Tue, 22 Nov 2016 15:50:04 -0500
Message-ID: <1479847815-30750-1-git-send-email-seanpaul@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, zyw@rock-chips.com, groeck@chromium.org, Sean Paul <seanpaul@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

This series adds support for the CDN DP controller to the rockchip drm
driver. This version of includes the version we merged into the
chromium.org repo plus ~15 fixes squashed on top. Notable fixes include:
	- Fixed races between hotplug/extcon worker and modeset
	- Greater support for whacky USB-C dongles/monitors

You can find the previous version here:
	https://patchwork.kernel.org/patch/9324737/

Chris Zhong (1):
  drm/rockchip: cdn-dp: add cdn DP support for rk3399

Guenter Roeck (2):
  drm/rockchip: cdn-dp: Load firmware if no monitor connected
  drm/rockchip: cdn-dp: Do not run worker while suspended

 drivers/gpu/drm/rockchip/Kconfig            |   10 +
 drivers/gpu/drm/rockchip/Makefile           |    2 +
 drivers/gpu/drm/rockchip/cdn-dp-core.c      | 1243 +++++++++++++++++++++++++++
 drivers/gpu/drm/rockchip/cdn-dp-core.h      |  111 +++
 drivers/gpu/drm/rockchip/cdn-dp-reg.c       |  979 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/cdn-dp-reg.h       |  483 +++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |   13 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |    9 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c |    2 +
 9 files changed, 2849 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/rockchip/cdn-dp-core.c
 create mode 100644 drivers/gpu/drm/rockchip/cdn-dp-core.h
 create mode 100644 drivers/gpu/drm/rockchip/cdn-dp-reg.c
 create mode 100644 drivers/gpu/drm/rockchip/cdn-dp-reg.h

-- 
2.8.0.rc3.226.g39d4020
