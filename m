From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL RESEND] Rockchip clock updates for 5.2
Date: Wed, 24 Apr 2019 19:36:37 +0200
Message-ID: <2075886.jWuYUtlPVG@phil>
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

please find below rockchip clock changes for 5.2
with quite a bit of attention for the rk3288.

Please pull

Thanks
Heiko

[RESEND because I used a wrong email address for Stephen]

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-clk-1

for you to fetch changes up to f4033db5b84ebe4b32c25ba2ed65ab20b628996a:

  clk: rockchip: undo several noc and special clocks as critical on rk3288 (2019-04-23 12:17:11 +0200)

----------------------------------------------------------------
Clock fixes for rk3328 and rk3288 and a new sub-type for an upcoming
soc where mux and divider are not necessarily in the same register
anymore.

----------------------------------------------------------------
Douglas Anderson (4):
      clk: rockchip: Make rkpwm a critical clock on rk3288
      clk: rockchip: Fix video codec clocks on rk3288
      clk: rockchip: Turn on "aclk_dmac1" for suspend on rk3288
      clk: rockchip: undo several noc and special clocks as critical on rk3288

Finley Xiao (1):
      clk: rockchip: add a COMPOSITE_DIV_OFFSET clock-type

Jonas Karlman (1):
      clk: rockchip: fix wrong clock definitions for rk3328

Matthias Kaehlcke (1):
      clk: rockchip: Limit use of USB PHY clock to USB on rk3288

 drivers/clk/rockchip/clk-rk3288.c | 36 ++++++++++++++++++++++--------------
 drivers/clk/rockchip/clk-rk3328.c | 18 +++++++++---------
 drivers/clk/rockchip/clk.c        |  9 ++++++---
 drivers/clk/rockchip/clk.h        | 23 +++++++++++++++++++++++
 4 files changed, 60 insertions(+), 26 deletions(-)
