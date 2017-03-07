From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 2/2] clk: rockchip: rk3368: add some clks as critical
Date: Tue,  7 Mar 2017 17:50:11 +0800
Message-ID: <1488880211-21133-2-git-send-email-zhangqing@rock-chips.com>
References: <1488880211-21133-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1488880211-21133-1-git-send-email-zhangqing@rock-chips.com>
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
Cc: mark.rutland@arm.com, huangtao@rock-chips.com, mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>, sboyd@codeaurora.org, xxx@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

make pclk_pd_alive, pclk_peri, hclk_peri as critical

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-rk3368.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 139d418f448e..024762d3214d 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -858,6 +858,9 @@ enum rk3368_plls {
 	 */
 	"pclk_pwm1",
 	"pclk_pd_pmu",
+	"pclk_pd_alive",
+	"pclk_peri",
+	"hclk_peri",
 };
 
 static void __init rk3368_clk_init(struct device_node *np)
-- 
1.9.1
