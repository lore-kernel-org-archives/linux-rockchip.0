From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 0/4] iclk: rockchip: add CLK_IGNORE_UNUSED flag for some
 clks
Date: Thu, 16 Mar 2017 16:44:50 +0800
Message-ID: <1489653894-2440-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de
Cc: huangtao@rock-chips.com, mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, xxx@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Elaine Zhang (4):
  clk: rockchip: rk3036: add CLK_IGNORE_UNUSED flag for pclk_ddrupctl
  clk: rockchip: rk3228: add CLK_IGNORE_UNUSED flag for some clks
  clk: rockchip: rk3288: add CLK_IGNORE_UNUSED flag for some clks
  clk: rockchip: rk3368: add CLK_IGNORE_UNUSED flag for some clks

 drivers/clk/rockchip/clk-rk3036.c |  2 +-
 drivers/clk/rockchip/clk-rk3228.c | 66 ++++++++++++++++++++-------------------
 drivers/clk/rockchip/clk-rk3288.c | 42 ++++++++++++-------------
 drivers/clk/rockchip/clk-rk3368.c | 12 +++----
 4 files changed, 62 insertions(+), 60 deletions(-)

-- 
1.9.1
