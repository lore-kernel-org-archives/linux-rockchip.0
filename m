From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip clock updates for 4.18
Date: Thu, 24 May 2018 15:16:06 +0200
Message-ID: <6125058.CyqeWxRe4B@phil>
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

please find below the pull request for 4.18 Rockchip clock updates.
As the tag describes this contains two cleanups for an open-coded
search and removing the old dt-based gate-clocks.

Please pull
Heiko


The following changes since commit 60cc43fc888428bb2f18f08997432d426a243338:

  Linux 4.17-rc1 (2018-04-15 18:24:20 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.18-rockchip-clk-1

for you to fetch changes up to 1d646229f28d2c413572905f03f71af33b903cc5:

  clk: rockchip: remove deprecated gate-clk code and dt-binding (2018-05-23 13:19:06 +0200)

----------------------------------------------------------------
Conversion to match_string helper of open-coded string comparison
and removal of the initial devicetree-based gate-clocks, which were
deprecated since 2014.

----------------------------------------------------------------
Heiko Stuebner (1):
      clk: rockchip: remove deprecated gate-clk code and dt-binding

Yisheng Xie (1):
      clk: rockchip: use match_string() helper

 .../devicetree/bindings/clock/rockchip.txt         | 77 -----------------
 drivers/clk/rockchip/Makefile                      |  1 -
 drivers/clk/rockchip/clk-rockchip.c                | 98 ----------------------
 drivers/clk/rockchip/clk.c                         | 16 ++--
 4 files changed, 5 insertions(+), 187 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip.txt
 delete mode 100644 drivers/clk/rockchip/clk-rockchip.c
