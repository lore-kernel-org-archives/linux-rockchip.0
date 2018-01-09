From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH v7 00/10] rockchip: kevin: Enable edp display
Date: Tue,  9 Jan 2018 15:48:45 +0100
Message-ID: <20180109144853.32536-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Archit Taneja <architt@codeaurora.org>, Daniel Vetter <daniel.vetter@intel.com>, Neil Armstrong <narmstrong@baylibre.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

This patchset makes edp display work on Chromebook kevin.

This patchset has been originally posted by Jeffy Chen and the 2 first
commits from the previous version (v6) are already merged in mainline.
This v7 has been rebased on top of next-20180108 and a few conflicts
have been fixed as well.

v7:
Rebased on top of next-20180108 and fixed conflicts
Fixed a few warnings reported by checkpatch

Jeffy Chen (10):
  arm64: dts: rockchip: Enable edp disaplay on kevin
  drm/rockchip: analogix_dp: Remove unnecessary init code
  drm/bridge: analogix: Do not use device's drvdata
  drm/bridge: analogix_dp: Fix connector and encoder cleanup
  drm/rockchip: analogix_dp: Add a sanity check for
    rockchip_drm_psr_register()
  drm/rockchip: dw-mipi-dsi: Fix error handling path
  drm/rockchip: inno_hdmi: Fix error handling path
  drm/bridge/synopsys: dw-hdmi: Add missing bridge detach
  drm/bridge/synopsys: dw-hdmi: Do not use device's drvdata
  drm/rockchip: dw_hdmi: Fix error handling path

 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts  | 29 +++++++
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       | 16 ++++
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 52 +++++-------
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          | 53 ++++++------
 drivers/gpu/drm/exynos/exynos_dp.c                 | 29 ++++---
 drivers/gpu/drm/imx/dw_hdmi-imx.c                  | 22 +++--
 drivers/gpu/drm/meson/meson_dw_hdmi.c              | 20 +++--
 drivers/gpu/drm/rcar-du/rcar_dw_hdmi.c             | 14 +++-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    | 95 +++++++++++-----------
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c             | 21 +++--
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 39 +++++----
 drivers/gpu/drm/rockchip/inno_hdmi.c               | 22 +++--
 include/drm/bridge/analogix_dp.h                   | 19 +++--
 include/drm/bridge/dw_hdmi.h                       | 17 ++--
 14 files changed, 265 insertions(+), 183 deletions(-)

-- 
2.7.4
