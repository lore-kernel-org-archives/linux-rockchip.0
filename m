From: Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 0/2] add new DRM_DEV_WARN macro
Date: Thu, 14 Nov 2019 16:24:34 +0300
Message-ID: <20191114132436.7232-1-wambui.karugax@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This adds a new DRM_DEV_WARN helper macro for warnings log output that include
device pointers. It also includes the use of the DRM_DEV_WARN macro in
drm/rockchip to replace dev_warn.

Wambui Karuga (2):
  drm/print: add DRM_DEV_WARN macro
  drm/rockchip: use DRM_DEV_WARN macro in debug output

 drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
 include/drm/drm_print.h              | 9 +++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
2.17.1
