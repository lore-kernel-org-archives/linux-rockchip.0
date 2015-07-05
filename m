From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v3 0/7] clk: rockchip: add support for the clock-tree of the
 rk3368
Date: Sun,  5 Jul 2015 11:00:13 +0200
Message-ID: <1436086820-3757-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This is the respin of the no-yet-applied parts of the rk3368 clock support.

It definitly needs the clock-changes that went into the mainline kernel
during the merge window (constifying stuff etc) and I'd need the
dt-binding header in a stable branch to be included into armsoc too.


changes since v2:
- drop patches already applied
- address comments from Stephen Boyd:
  - no dump recalc_rate callback
  - missing header includes
  - style issues (parentheses and saving some lines)
- fix similar issues in the already included code
changes since v1:
- add CLK_SET_RATE_PARENT to sclk_mac to provide sane rates
  when using a rmii phy with soc-side clock generation.
  Both as fix for the 3288 and in the newly added rk3368.


Heiko Stuebner (7):
  clk: rockchip: add support for phase inverters
  clk: rockchip: fix issues in the mmc-phase clock
  clk: rockchip: define the inverters of rk3066/rk3188 and rk3288
  dt-bindings: add documentation of rk3668 clock controller
  clk: rockchip: add dt-binding header for rk3368
  clk: rockchip: add missing include guards
  clk: rockchip: add rk3368 clock controller

 .../bindings/clock/rockchip,rk3368-cru.txt         |  61 ++
 drivers/clk/rockchip/Makefile                      |   2 +
 drivers/clk/rockchip/clk-inverter.c                | 116 +++
 drivers/clk/rockchip/clk-mmc-phase.c               |   6 +-
 drivers/clk/rockchip/clk-rk3188.c                  |   9 +-
 drivers/clk/rockchip/clk-rk3288.c                  |   7 +-
 drivers/clk/rockchip/clk-rk3368.c                  | 881 +++++++++++++++++++++
 drivers/clk/rockchip/clk.c                         |   7 +
 drivers/clk/rockchip/clk.h                         |  36 +
 include/dt-bindings/clock/rk3066a-cru.h            |   5 +
 include/dt-bindings/clock/rk3188-cru-common.h      |   5 +
 include/dt-bindings/clock/rk3188-cru.h             |   5 +
 include/dt-bindings/clock/rk3288-cru.h             |   5 +
 include/dt-bindings/clock/rk3368-cru.h             | 384 +++++++++
 14 files changed, 1524 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
 create mode 100644 drivers/clk/rockchip/clk-inverter.c
 create mode 100644 drivers/clk/rockchip/clk-rk3368.c
 create mode 100644 include/dt-bindings/clock/rk3368-cru.h

-- 
2.1.4
