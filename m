From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [RESEND PATCH v2 0/5] Add more clock compatible features and support
 the RK3399 clock
Date: Tue,  1 Mar 2016 18:14:30 +0800
Message-ID: <1456827275-8035-1-git-send-email-zhengxing@rock-chips.com>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, elaine.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


Hi,
  The patch series add support more mux parameters and multiple
clock providers for the rockchip features of the clock framework,
and support the clock controller for the RK3399.


Changes in v2:
- rename the aplll/apllb to lpll/bpll
- add drv/sample clock nodes for sdmmc/sdio

Xing Zheng (5):
  clk: rockchip: add more mux parameters for new pll sources
  clk: rockchip: Add support for multiple clock providers
  clk: rockchip: add new pll-type for rk3399 and similar socs
  clk: rockchip: add a COMPOSITE_FRACMUX_NOGATE type
  clk: rockchip: add clock controller for the RK3399

 drivers/clk/rockchip/Makefile     |    1 +
 drivers/clk/rockchip/clk-cpu.c    |   14 +-
 drivers/clk/rockchip/clk-pll.c    |  309 +++++++-
 drivers/clk/rockchip/clk-rk3036.c |   20 +-
 drivers/clk/rockchip/clk-rk3188.c |   54 +-
 drivers/clk/rockchip/clk-rk3228.c |   20 +-
 drivers/clk/rockchip/clk-rk3288.c |   22 +-
 drivers/clk/rockchip/clk-rk3368.c |   27 +-
 drivers/clk/rockchip/clk-rk3399.c | 1553 +++++++++++++++++++++++++++++++++++++
 drivers/clk/rockchip/clk.c        |  148 ++--
 drivers/clk/rockchip/clk.h        |   96 ++-
 11 files changed, 2140 insertions(+), 124 deletions(-)
 create mode 100644 drivers/clk/rockchip/clk-rk3399.c

-- 
1.7.9.5
