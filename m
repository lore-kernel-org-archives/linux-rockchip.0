From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip clock updates for 5.4
Date: Mon, 11 Nov 2019 01:45:05 +0100
Message-ID: <2139639.gTPWsosUxc@phil>
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

please find below rockchip clock changes for 5.5
Please pull

Thanks
Heiko

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git v5.5-rockchip-clk-1

for you to fetch changes up to 3b0b4ebfd761943179fe03b107f66c72c3b5c8d4:

  clk: rockchip: protect the pclk_usb_grf as critical on px30 (2019-11-05 20:53:42 +0100)

----------------------------------------------------------------
Adding a missing static declaration for clk_half_divider_ops
and a number of improvements for the px30 clock tree.

----------------------------------------------------------------
Ben Dooks (Codethink) (1):
      clk: rockchip: make clk_half_divider_ops static

Finley Xiao (2):
      clk: rockchip: Add div50 clock-ids for sdmmc on px30 and nandc
      clk: rockchip: Add div50 clocks for px30 sdmmc, emmc, sdio and nandc

Heiko Stuebner (3):
      clk: rockchip: move px30 critical clocks to correct clock controller
      clk: rockchip: add video-related niu clocks as critical on px30
      clk: rockchip: protect the pclk_usb_grf as critical on px30

 drivers/clk/rockchip/clk-half-divider.c |  3 +-
 drivers/clk/rockchip/clk-px30.c         | 70 ++++++++++++++++++++++++++-------
 include/dt-bindings/clock/px30-cru.h    |  2 +
 3 files changed, 59 insertions(+), 16 deletions(-)
