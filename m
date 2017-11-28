From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v2 0/3] Update ROCKCHIP DSI driver that uses dw-mipi-dsi bridge
Date: Tue, 28 Nov 2017 09:55:22 +0800
Message-ID: <1511834125-7756-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, mka@chromium.org, hoegsberg@gmail.com, architt@codeaurora.org, philippe.cornu@st.com, yannick.fertre@st.com, hl@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

We now have a generic dw-mipi-dsi bridge driver.So we send
this patchs to moving rockchip dw-mipi-dsi driver to that
in order to add new features(dual mipi support).
Update ROCKCHIP DSI controller driver that uses the Synopsys
DesignWare MIPI DSI host controller bridge.

ChangeLog:
v2:
   add err_pllref、remove unnecessary encoder.enable & disable
   correct spelling mistakes


Nickey Yang (3):
  dt-bindings: display: rockchip: update DSI controller
  drm/rockchip: Add ROCKCHIP DW MIPI DSI controller driver
  arm64: dts: rockchip: update mipi node for RK3399

 .../display/rockchip/dw_mipi_dsi_rockchip.txt      |   23 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |    8 +-
 drivers/gpu/drm/rockchip/Kconfig                   |    2 +-
 drivers/gpu/drm/rockchip/Makefile                  |    2 +-
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c             | 1349 --------------------
 drivers/gpu/drm/rockchip/dw-mipi-dsi_rockchip.c    |  756 +++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |    2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |    2 +-
 8 files changed, 784 insertions(+), 1360 deletions(-)
 delete mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi.c
 create mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi_rockchip.c

-- 
1.9.1
