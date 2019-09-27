From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v3 2/5] clk: rockchip: fix up the frac clk get rate error
Date: Fri, 27 Sep 2019 11:00:41 +0800
Message-ID: <1569553244-3165-3-git-send-email-zhangqing@rock-chips.com>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org, mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

support fractional divider with only one level parent clock

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index fac5a4a3f5c3..8f77c3f9fab7 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -190,16 +190,21 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
 	    (fd->max_prate && fd->max_prate < p_rate)) {
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
-		p_parent_rate = clk_hw_get_rate(p_parent);
-		*parent_rate = p_parent_rate;
-		if (fd->max_prate && p_parent_rate > fd->max_prate) {
-			div = DIV_ROUND_UP(p_parent_rate, fd->max_prate);
-			*parent_rate = p_parent_rate / div;
+		if (!p_parent) {
+			*parent_rate = p_rate;
+		} else {
+			p_parent_rate = clk_hw_get_rate(p_parent);
+			*parent_rate = p_parent_rate;
+			if (fd->max_prate && p_parent_rate > fd->max_prate) {
+				div = DIV_ROUND_UP(p_parent_rate,
+						   fd->max_prate);
+				*parent_rate = p_parent_rate / div;
+			}
 		}
 
 		if (*parent_rate < rate * 20) {
-			pr_err("%s parent_rate(%ld) is low than rate(%ld)*20, fractional div is not allowed\n",
-			       clk_hw_get_name(hw), *parent_rate, rate);
+			pr_warn("%s p_rate(%ld) is low than rate(%ld)*20, use integer or half-div\n",
+				clk_hw_get_name(hw), *parent_rate, rate);
 			*m = 0;
 			*n = 1;
 			return;
-- 
1.9.1
