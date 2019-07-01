From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip clock updates for 5.3
Date: Mon, 01 Jul 2019 11:36:17 +0200
Message-ID: <3855405.N158XnxgeL@phil>
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
To: mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mike, Stephen,

please find below rockchip clock changes for 5.3

Please pull

Thanks
Heiko

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-clk1

for you to fetch changes up to 794e94ca83450c436313df18291e139cf5f9121f:

  clk: rockchip: export HDMIPHY clock on rk3228 (2019-06-27 11:02:28 +0200)

----------------------------------------------------------------
New clock-ids+exports for two clocks, cleanup for some boilerplate code
for clocks we cannot really control from the kernel, but want to define
separately to match the hardware-description (watchdog in secure-grf).
Improvement in mmc phase calculation and cleanup of some rate defintions.

----------------------------------------------------------------
Douglas Anderson (4):
      clk: rockchip: Use clk_hw_get_rate() in MMC phase calculation
      clk: rockchip: Don't yell about bad mmc phases when getting
      clk: rockchip: Slightly more accurate math in rockchip_mmc_get_phase()
      clk: rockchip: Remove 48 MHz PLL rate from rk3288

Heiko Stuebner (7):
      clk: rockchip: add a type from SGRF-controlled gate clocks
      clk: rockchip: convert pclk_wdt boilerplat to new SGRF_GATE macro
      clk: rockchip: add clock id for watchdog pclk on rk3328
      clk: rockchip: add clock id for hdmi_phy special clock on rk3228
      Merge branch 'v5.3-shared/clk-ids' into v5.3-clk/next
      clk: rockchip: add watchdog pclk on rk3328
      clk: rockchip: export HDMIPHY clock on rk3228

Justin Swartz (1):
      clk: rockchip: add 1.464GHz cpu-clock rate to rk3228

 drivers/clk/rockchip/clk-mmc-phase.c   | 14 ++++++--------
 drivers/clk/rockchip/clk-px30.c        | 12 +++---------
 drivers/clk/rockchip/clk-rk3228.c      |  3 ++-
 drivers/clk/rockchip/clk-rk3288.c      | 13 +++----------
 drivers/clk/rockchip/clk-rk3328.c      |  3 +++
 drivers/clk/rockchip/clk-rk3368.c      | 12 +++---------
 drivers/clk/rockchip/clk-rk3399.c      | 12 +++---------
 drivers/clk/rockchip/clk.h             |  4 ++++
 include/dt-bindings/clock/rk3228-cru.h |  1 +
 include/dt-bindings/clock/rk3328-cru.h |  1 +
 10 files changed, 29 insertions(+), 46 deletions(-)
