From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v2 0/4] make some special clk as critical_clocks
Date: Tue, 28 Mar 2017 18:06:50 +0800
Message-ID: <1490695614-3220-1-git-send-email-zhangqing@rock-chips.com>
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
To: heiko@sntech.de, xf@rock-chips.com
Cc: huangtao@rock-chips.com, mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, xxx@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

change in v2:
fix up some clks which have their own driver, not need to set as critical clocks

Elaine Zhang (4):
  clk: rockchip: rk3036: make pclk_ddrupctl as critical_clock
  clk: rockchip: rk3228: make noc and some special clk as
    critical_clocks
  clk: rockchip: rk3288: make noc and some special clk as
    critical_clocks
  clk: rockchip: rk3368: make some special clk as critical_clocks

 drivers/clk/rockchip/clk-rk3036.c |  1 +
 drivers/clk/rockchip/clk-rk3228.c | 30 +++++++++++++++++++++++++++++-
 drivers/clk/rockchip/clk-rk3288.c | 14 ++++++++++----
 drivers/clk/rockchip/clk-rk3368.c |  5 ++++-
 4 files changed, 44 insertions(+), 6 deletions(-)

-- 
1.9.1
