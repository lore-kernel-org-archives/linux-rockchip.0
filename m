From: Xing Zheng <zhengxing@rock-chips.com>
Subject: [RESEND PATCH v2 7/8] clk: rockchip: rk3399: delete the
 CLK_IGNORE_UNUSED for aclk_pcie
Date: Mon,  1 Aug 2016 17:58:09 +0800
Message-ID: <1470045489-32028-1-git-send-email-zhengxing@rock-chips.com>
References: <1470045224-31854-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1470045224-31854-1-git-send-email-zhengxing@rock-chips.com>
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
Cc: huangtao@rock-chips.com, zhangqing@rock-chips.com, zhengxing@rock-chips.com, mturquette@baylibre.com, briannorris@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Elaine Zhang <zhangqing@rock-chips.com>

allow aclk_pcie and aclk_perf_pcie disabled when unused.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>

---

Changes in v2: None

 drivers/clk/rockchip/clk-rk3399.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 580abf1..071eb96 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -848,9 +848,9 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 			RK3399_CLKSEL_CON(14), 12, 2, DFLAGS,
 			RK3399_CLKGATE_CON(5), 4, GFLAGS),
 
-	GATE(ACLK_PERF_PCIE, "aclk_perf_pcie", "aclk_perihp", CLK_IGNORE_UNUSED,
+	GATE(ACLK_PERF_PCIE, "aclk_perf_pcie", "aclk_perihp", 0,
 			RK3399_CLKGATE_CON(20), 2, GFLAGS),
-	GATE(ACLK_PCIE, "aclk_pcie", "aclk_perihp", CLK_IGNORE_UNUSED,
+	GATE(ACLK_PCIE, "aclk_pcie", "aclk_perihp", 0,
 			RK3399_CLKGATE_CON(20), 10, GFLAGS),
 	GATE(0, "aclk_perihp_noc", "aclk_perihp", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(20), 12, GFLAGS),
-- 
1.7.9.5
