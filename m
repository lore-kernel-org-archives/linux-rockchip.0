From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 0/7] Add support RK3328 drm hdmi
Date: Sat, 30 Sep 2017 09:41:53 +0800
Message-ID: <1506735713-147081-1-git-send-email-algea.cao@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

These patches add support drm hdmi in RK3328 and has been tested in RK development
board. We add dev_type to distinguish different rockchip chips. Hdmi phy or some regs
configuration can't be switched according to dev_type, that hdmi driver's compatibility
will be better.

Algea Cao (7):
  drm/rockchip: dw_hdmi: update dw_hdmi_rockchip_dt_ids
  drm/rockchip: dw_hdmi: add device type
  drm: bridge: dw-hdmi: change hdmi phy hpd read function to export
  drm/rockchip: dw_hdmi: add inno hdmi phy ops
  drm/rockchip: dw_hdmi: add hclk_vio
  drm/rockchip: dw_hdmi: update dw-hdmi encoder enable
  drm: bridge: dw-hdmi: get phy ops by device type

 .../bindings/display/rockchip/dw_hdmi-rockchip.txt |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |  11 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 161 ++++++++++++++++++++-
 include/drm/bridge/dw_hdmi.h                       |  13 +-
 4 files changed, 178 insertions(+), 8 deletions(-)

-- 
2.7.4
