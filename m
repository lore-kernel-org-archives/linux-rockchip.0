From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] rockchip clock changes for 4.11 part1
Date: Thu, 19 Jan 2017 19:22:51 +0100
Message-ID: <11273775.I1nKIbzby6@phil>
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
To: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mike, Stephen,

please find below the first part of general clock changes for 4.11.
It is based on v4.10-rc2 this time, as -rc1 ended up with a bug that
broke compilation of the whole of arm64 - fixed in [0]. Hope that is
ok with you.

So if nothing stands out, please pull.

Thanks
Heiko

[0] https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=b4b8664d291ac1998e0f0bcdc96b6397f0fe68b3


The following changes since commit 0c744ea4f77d72b3dcebb7a8f2684633ec79be88:

  Linux 4.10-rc2 (2017-01-01 14:31:53 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.11-rockchip-clk1

for you to fetch changes up to 1a0abcd634dc3caf0d15cb8625e3f43d77b37031:

  dt-bindings: clk: add rockchip,grf property for RK3399 (2017-01-13 20:02:27 +0100)

----------------------------------------------------------------
A new clock-type for the 1-2 muxes per soc that are for whatever reason
controlled through the General Register Files, support for the rk3328
clock-controller (including a new pll-type) and the usual clock ids and
some fixes.

----------------------------------------------------------------
Douglas Anderson (1):
      clk: rockchip: Remove useless init of "grf" to -EPROBE_DEFER

Elaine Zhang (4):
      clk: rockchip: add new pll-type for rk3328
      clk: rockchip: add dt-binding header for rk3328
      dt-bindings: add bindings for rk3328 clock controller
      clk: rockchip: add clock controller for rk3328

Heiko Stuebner (6):
      clk: rockchip: add a clock-type for muxes based in the grf
      clk: rockchip: describe aclk_vcodec using the new muxgrf type on rk3288
      Merge branch 'v4.11-shared/clkids' into v4.11-clk/next
      clk: rockchip: add clock ids for memory controller parts on rk3066/rk3188
      Merge branch 'v4.11-shared/clkids' into v4.11-clk/next
      clk: rockchip: use clock ids for memory controller parts on rk3066/rk3188

Jacob Chen (2):
      clk: rockchip: add rk3288 isp_in clock ids
      clk: rockchip: use rk3288 isp_in clock ids

Xing Zheng (1):
      dt-bindings: clk: add rockchip,grf property for RK3399

 .../bindings/clock/rockchip,rk3328-cru.txt         |  57 ++
 .../bindings/clock/rockchip,rk3399-cru.txt         |   6 +
 drivers/clk/rockchip/Makefile                      |   2 +
 drivers/clk/rockchip/clk-muxgrf.c                  | 102 +++
 drivers/clk/rockchip/clk-pll.c                     |  16 +-
 drivers/clk/rockchip/clk-rk3188.c                  |   4 +-
 drivers/clk/rockchip/clk-rk3288.c                  |  13 +-
 drivers/clk/rockchip/clk-rk3328.c                  | 895 +++++++++++++++++++++
 drivers/clk/rockchip/clk.c                         |   8 +-
 drivers/clk/rockchip/clk.h                         |  40 +
 include/dt-bindings/clock/rk3188-cru-common.h      |   2 +
 include/dt-bindings/clock/rk3288-cru.h             |   1 +
 include/dt-bindings/clock/rk3328-cru.h             | 400 +++++++++
 13 files changed, 1533 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
 create mode 100644 drivers/clk/rockchip/clk-muxgrf.c
 create mode 100644 drivers/clk/rockchip/clk-rk3328.c
 create mode 100644 include/dt-bindings/clock/rk3328-cru.h
