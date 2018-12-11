From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip clock updates for 4.21
Date: Tue, 11 Dec 2018 20:58:26 +0100
Message-ID: <4187870.lCvQibHAte@phil>
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

looks I can re-use my introduction from 4.20 - no big changes again this
time. Some minor clock register fixes, a new critical clock and a new
clock dt-export.

So please pull.


Thanks
Heiko


The following changes since commit 651022382c7f8da46cb4872a545ee1da6d097d2a:

  Linux 4.20-rc1 (2018-11-04 15:37:52 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.21-rockchip-clk-1

for you to fetch changes up to d0618247a80f0c1c5a522b93888f20d8f034ec09:

  clk: rockchip: add clock-id to gate of ACODEC for rk3328 (2018-11-26 14:22:12 +0100)

----------------------------------------------------------------
Clock register fixes for rk3188 and rk3328 one new critical clock
for rk3188 and a fixed clock id (double used number) + a new one
for rk3328.

----------------------------------------------------------------
Finley Xiao (1):
      clk: rockchip: fix rk3188 sclk_smc gate data

Heiko Stuebner (2):
      clk: rockchip: fix rk3188 sclk_mac_lbtest parameter ordering
      Merge branch 'v4.21-shared/clkids' into v4.21-clk/next

Johan Jonker (1):
      clk: rockchip: fix typo in rk3188 spdif_frac parent

Katsuhiro Suzuki (4):
      clk: rockchip: fix I2S1 clock gate register for rk3328
      clk: rockchip: fix ID of 8ch clock of I2S1 for rk3328
      clk: rockchip: add clock ID of ACODEC for rk3328
      clk: rockchip: add clock-id to gate of ACODEC for rk3328

Mark Yao (1):
      clk: rockchip: make rk3188 hclk_vio_bus critical

 drivers/clk/rockchip/clk-rk3188.c      | 13 +++++++------
 drivers/clk/rockchip/clk-rk3328.c      |  4 ++--
 include/dt-bindings/clock/rk3328-cru.h |  3 ++-
 3 files changed, 11 insertions(+), 9 deletions(-)
