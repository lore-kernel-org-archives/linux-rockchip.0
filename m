From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: [PATCH 2/2] clk: rockchip: limit clock rate in the
 rockchip_fractional_approximation()
Date: Thu, 21 Dec 2017 19:04:42 +0300
Message-ID: <1513872282-5370-3-git-send-email-al.kochet@gmail.com>
References: <1513872282-5370-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1513872282-5370-1-git-send-email-al.kochet@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>, Elaine Zhang <zhangqing@rock-chips.com>, Stephen Boyd <sboyd@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>, Alexander Kochetkov <al.kochet@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

rockchip_fractional_approximation() can choose clock rate that can
be larger than one configured using clk_set_max_rate(). Request
to setup correct clock rate whose parent rate will be adjusted
to out of range value will fail with -EINVAL.

Fixes: commit 5d890c2df900 ("clk: rockchip: add special approximation
to fix up fractional clk's jitter").

Signed-off-by: Alexander Kochetkov <al.kochet@gmail.com>
---
 drivers/clk/rockchip/clk.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 35dbd63..3c1fb0d 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -175,6 +175,7 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
 	unsigned long p_rate, p_parent_rate;
+	unsigned long min_rate = 0, max_rate = 0;
 	struct clk_hw *p_parent;
 	unsigned long scale;
 
@@ -182,6 +183,12 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
 		p_parent_rate = clk_hw_get_rate(p_parent);
+		clk_hw_get_boundaries(clk_hw_get_parent(hw),
+			&min_rate, &max_rate);
+		if (p_parent_rate < min_rate)
+			p_parent_rate = min_rate;
+		if (p_parent_rate > max_rate)
+			p_parent_rate = max_rate;
 		*parent_rate = p_parent_rate;
 	}
 
-- 
1.7.9.5
