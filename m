From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL] Rockchip clock fix for 5.7
Date: Wed, 06 May 2020 02:28:40 +0200
Message-ID: <2256140.alkMTrVvHO@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mike, Stephen,

please find below a rockchip clock fix for 5.7
Please pull

Thanks
Heiko

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-clk-fixes1

for you to fetch changes up to cec9d101d70a3509da9bd2e601e0b242154ce616:

  clk: rockchip: fix incorrect configuration of rk3228 aclk_gpu* clocks (2020-04-13 09:35:24 +0200)

----------------------------------------------------------------
Fix for wrongly defines rk3228 aclk_gpu*

----------------------------------------------------------------
Justin Swartz (1):
      clk: rockchip: fix incorrect configuration of rk3228 aclk_gpu* clocks

 drivers/clk/rockchip/clk-rk3228.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)
