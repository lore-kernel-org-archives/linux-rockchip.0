From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [RFC PATCH v2 0/4] Init runtime PM support for dw_mmc
Date: Fri, 30 Sep 2016 16:48:33 +0800
Message-ID: <1475225317-2815-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-mmc-owner@vger.kernel.org>
Sender: linux-mmc-owner@vger.kernel.org
To: Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org, Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org


Hi Jaehoon and Ulf,

This a patchset going to support runtime PM for dw_mmc.
Basically it is a prototype design with some redundant
code there. But I think it's okay to send it out for sure
I am not heading in the wrong direction.

For v2, it could support to disable biu_clk and power-off genpd
if we find the gpio cd is used.



Shawn Lin (4):
  mmc: dw_mmc: add runtime PM callback
  mmc: dw_mmc-rockchip: add runtime PM support
  mmc: core: expose the capability of gpio card detect
  mmc: dw_mmc-rockchip: disable biu clk and genpd if possible

 drivers/mmc/core/slot-gpio.c       |  8 +++++
 drivers/mmc/host/dw_mmc-rockchip.c | 73 ++++++++++++++++++++++++++++++++++++--
 drivers/mmc/host/dw_mmc.c          | 60 +++++++++++++++++++++++++++++--
 drivers/mmc/host/dw_mmc.h          |  4 ++-
 include/linux/mmc/slot-gpio.h      |  1 +
 5 files changed, 140 insertions(+), 6 deletions(-)

-- 
2.3.7


