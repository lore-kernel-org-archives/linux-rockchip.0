From: Yakir Yang <ykk@rock-chips.com>
Subject: [PATCH v4 0/3] Improve eys-diagram & single-ended electric test for rk3288 HDMI
Date: Tue, 31 Mar 2015 23:50:27 -0400
Message-ID: <1427860227-12042-1-git-send-email-ykk@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King <rmk+kernel@arm.linux.org.uk>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Fabio Estevam <fabio.estevam@freescale.com>, Yakir Yang <ykk@rock-chips.com>, djkurtz@chromium.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Dear all,

RK3288 hdmi eye-diagram test would fail when pixel clock is 148.5MHz,
and single-ended test would failed when display mode is 74.25MHz.

To fix such problems, we make those patch set:
- Fix some code style, leave space for next patches.
- Separate VLEVLCTRL setting into platform driver.
- Improve the electrical parameter that relate to eye-diagram test &
  signel-ended test.
  Turn on the Transmitter Trailer-B and improve slopeboost to 10%-20%
  decrease. Set CKLVL to 18 and TXLVL to 19 if pixel clock is 74.25MHz.
  Set CKLVL to 13 and TXLVL to 20 if pixel clock is 148.5MHz.


Changes in v4:
- separate VLEVCTRL setting into platform driver
- combine the modification of electrical parameter for eye-diagram
  & single-ended test to an separate patch.

Changes in v3:
- make commit message more readable
- for pixel clock less than 148.5MHz, set txlvl to 20.

Changes in v2:
- set slopeboost back to 10%-20%, then rasing/falling time would pass.
- for pixel clock less then 74.25MHz, set txlvl to 19 and cklvl to 18.

Yakir Yang (3):
  drm: bridge/dw_hdmi: fixed codec style
  drm: bridge/dw_hdmi: separate VLEVCTRL settting into platform driver
  drm: rockchip/dw_hdmi-rockchip: improve for HDMI electrical test

 drivers/gpu/drm/bridge/dw_hdmi.c            | 20 ++++++++++----------
 drivers/gpu/drm/imx/dw_hdmi-imx.c           | 12 ++++++------
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 +++++++-------
 include/drm/bridge/dw_hdmi.h                |  5 +++--
 4 files changed, 26 insertions(+), 25 deletions(-)

-- 
2.1.2
