From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip clock updates for 4.20
Date: Thu, 18 Oct 2018 00:24:45 +0200
Message-ID: <2902149.RM7SpLEE3J@phil>
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
To: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mike, Stephen,

no big changes again this time. Mainly 2 fixes and a bit of housekeeping.
So if it's not too late, please pull


Thanks
Heiko


The following changes since commit 5b394b2ddf0347bef56e50c69a58773c94343ff3:

  Linux 4.19-rc1 (2018-08-26 14:11:59 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.20-rockchip-clk1

for you to fetch changes up to 665636b2940d0897c4130253467f5e8c42eea392:

  clk: rockchip: Fix static checker warning in rockchip_ddrclk_get_parent call (2018-10-17 15:12:51 +0200)

----------------------------------------------------------------
Fixes for static checker warning and a wrong shift value for the mmc
on rk3328, as well as setting a hdmi-id on rk3066 for a later driver
for the hdmi encoder on it and some adapted rk3288 pll rates to support
more and better hdmi rates.

----------------------------------------------------------------
Enric Balletbo i Serra (1):
      clk: rockchip: Fix static checker warning in rockchip_ddrclk_get_parent call

Heiko Stuebner (2):
      clk: rockchip: add clock-id for HCLK_HDMI on rk3066
      clk: rockchip: use the newly added clock-id for hdmi on RK3066

Urja Rannikko (1):
      clk: rockchip: improve rk3288 pll rates for better hdmi output

Ziyuan Xu (1):
      clk: rockchip: fix wrong mmc sample phase shift for rk3328

 drivers/clk/rockchip/clk-ddr.c                |  4 ----
 drivers/clk/rockchip/clk-rk3188.c             |  2 +-
 drivers/clk/rockchip/clk-rk3288.c             | 29 +++++++++++++++++++++++----
 drivers/clk/rockchip/clk-rk3328.c             |  8 ++++----
 include/dt-bindings/clock/rk3188-cru-common.h |  3 ++-
 5 files changed, 32 insertions(+), 14 deletions(-)
