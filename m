From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip clock updates for 5.1
Date: Fri, 01 Feb 2019 12:17:47 +0100
Message-ID: <48408534.cOKhDiQbmB@phil>
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

looks I can re-use my introduction from 4.20 and 5.0 - no big changes
again this time.

A rate_parent flag and some fixup for the fractional part of a PLL

So please pull.


Thanks
Heiko

The following changes since commit bfeffd155283772bbe78c6a05dec7c0128ee500c:

  Linux 5.0-rc1 (2019-01-06 17:08:20 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.1-rockchip-clk1

for you to fetch changes up to 491b00ff699356a8dab10eb517a1b44205514c9e:

  clk: rockchip: add CLK_SET_RATE_PARENT for rk3066 lcdc dclks (2019-01-07 09:17:15 +0100)

----------------------------------------------------------------
Fix for PLL rate calculation on rk3328 and SET_RATE_PARENT flag
for the display clock on rk3066.

----------------------------------------------------------------
Finley Xiao (1):
      clk: rockchip: add CLK_SET_RATE_PARENT for rk3066 lcdc dclks

Katsuhiro Suzuki (1):
      clk: rockchip: fix frac settings of GPLL clock for rk3328

 drivers/clk/rockchip/clk-rk3188.c |  4 ++--
 drivers/clk/rockchip/clk-rk3328.c | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)
