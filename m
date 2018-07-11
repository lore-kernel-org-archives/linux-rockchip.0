From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip clock updates for 4.19
Date: Wed, 11 Jul 2018 16:22:04 +0200
Message-ID: <9241272.zrLup0OXSE@phil>
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

please find below the pull request for 4.19 Rockchip clock updates.
As the tag describes this contains the px30 clock controller including
its new clock type of a "half-divider", as well as a small fix for wrong
register values that is present since the beginning of rk3399 support.

Please pull
Heiko


The following changes since commit ce397d215ccd07b8ae3f71db689aedb85d56ab40:

  Linux 4.18-rc1 (2018-06-17 08:04:49 +0900)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.19-rockchip-clk1

for you to fetch changes up to a64ad008980c65d38e6cf6858429c78e6b740c41:

  clk: rockchip: fix clk_i2sout parent selection bits on rk3399 (2018-07-08 00:19:19 +0200)

----------------------------------------------------------------
Support for Rockchip's PX30 SoC including its new half-divider
clock type that is doing freq_out = 2*freq_in / (2*div + 3).
As well as a register-bit fix for the rk3399 i2sout clock.

----------------------------------------------------------------
Alberto Panizzo (1):
      clk: rockchip: fix clk_i2sout parent selection bits on rk3399

Elaine Zhang (4):
      clk: rockchip: add dt-binding header for px30
      dt-bindings: add bindings for px30 clock controller
      clk: rockchip: add support for half divider
      clk: rockchip: add clock controller for px30

Heiko Stuebner (1):
      Merge branch 'v4.19-shared/clkids' into v4.19-clk/next

 .../bindings/clock/rockchip,px30-cru.txt           |   65 ++
 drivers/clk/rockchip/Makefile                      |    2 +
 drivers/clk/rockchip/clk-half-divider.c            |  227 +++++
 drivers/clk/rockchip/clk-px30.c                    | 1039 ++++++++++++++++++++
 drivers/clk/rockchip/clk-rk3399.c                  |    2 +-
 drivers/clk/rockchip/clk.c                         |   10 +
 drivers/clk/rockchip/clk.h                         |  126 ++-
 include/dt-bindings/clock/px30-cru.h               |  389 ++++++++
 8 files changed, 1858 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
 create mode 100644 drivers/clk/rockchip/clk-half-divider.c
 create mode 100644 drivers/clk/rockchip/clk-px30.c
 create mode 100644 include/dt-bindings/clock/px30-cru.h
