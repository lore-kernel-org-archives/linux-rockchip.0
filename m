From: Xing Zheng <zhengxing@rock-chips.com>
Subject: [RESEND PATCH v2 5/8] clk: rockchip: rk3399: fix incorrect aclk_emmc
 source gate bits
Date: Mon,  1 Aug 2016 17:56:43 +0800
Message-ID: <1470045403-31960-1-git-send-email-zhengxing@rock-chips.com>
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
Cc: huangtao@rock-chips.com, zhangqing@rock-chips.com, zhengxing@rock-chips.com, mturquette@baylibre.com, briannorris@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Dues to incorrect diagram, we need to fix incorrect bits for
(c/g)pll_aclk_emmc_src:
cpll_aclk_emmc_src --> G6[13]
gpll_aclk_emmc_src --> G6[12]

Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
---

Changes in v2: None

 drivers/clk/rockchip/clk-rk3399.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 8bf0d19..44e673e 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -923,9 +923,9 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 			RK3399_CLKGATE_CON(6), 14, GFLAGS),
 
 	GATE(0, "cpll_aclk_emmc_src", "cpll", CLK_IGNORE_UNUSED,
-			RK3399_CLKGATE_CON(6), 12, GFLAGS),
-	GATE(0, "gpll_aclk_emmc_src", "gpll", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(6), 13, GFLAGS),
+	GATE(0, "gpll_aclk_emmc_src", "gpll", CLK_IGNORE_UNUSED,
+			RK3399_CLKGATE_CON(6), 12, GFLAGS),
 	COMPOSITE_NOGATE(ACLK_EMMC, "aclk_emmc", mux_aclk_emmc_p, CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(21), 7, 1, MFLAGS, 0, 5, DFLAGS),
 	GATE(ACLK_EMMC_CORE, "aclk_emmccore", "aclk_emmc", CLK_IGNORE_UNUSED,
-- 
1.7.9.5
