From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v4 0/3] Update ROCKCHIP DSI driver that uses dw-mipi-dsi bridge
Date: Fri,  1 Dec 2017 11:58:02 +0800
Message-ID: <1512100685-4015-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com, seanpaul@chromium.org, briannorris@chromium.org, mka@chromium.org, hoegsberg@gmail.com, architt@codeaurora.org, philippe.cornu@st.com, yannick.fertre@st.com, hl@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
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
v3:
   add Brian's patch "drm/bridge/synopsys: stop clobbering drvdata"
   (Link:https://patchwork.kernel.org/patch/10078493/)
   adjust drm/stm/dsi code for above
   drm/rockchip: Add ROCKCHIP DW MIPI DSI controller driver:
       call dw_mipi_dsi_unbind() in dw_mipi_dsi_rockchip_unbind()
       fix typo, use of_device_get_match_data(),
       change some ‘bind()’ logic into 'probe()'
       add 'dev_set_drvdata()'
v4:
   keep "drm/stm: dsi: Adjust dw_mipi_dsi_probe and remove"
   into Brians "drm/bridge/synopsys: stop clobbering drvdata"
   add review tag and add some comments 

Nickey Yang (3):
  drm/bridge/synopsys: dsi: stop clobbering drvdata
  dt-bindings: display: rockchip: update DSI controller
  drm/rockchip: Add ROCKCHIP DW MIPI DSI controller driver

 .../display/rockchip/dw_mipi_dsi_rockchip.txt      |   23 +-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c      |   36 +-
 drivers/gpu/drm/rockchip/Kconfig                   |    2 +-
 drivers/gpu/drm/rockchip/Makefile                  |    2 +-
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c             | 1349 --------------------
 drivers/gpu/drm/rockchip/dw-mipi-dsi_rockchip.c    |  777 +++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |    2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |    2 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c              |    8 +-
 include/drm/bridge/dw_mipi_dsi.h                   |   17 +-
 10 files changed, 831 insertions(+), 1387 deletions(-)
 delete mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi.c
 create mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi_rockchip.c

-- 
1.9.1
