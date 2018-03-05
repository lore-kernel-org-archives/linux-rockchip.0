From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH] soc: rockchip: power-domain: Add a sanity check on
 pd->num_clks
Date: Mon,  5 Mar 2018 17:17:22 +0800
Message-ID: <20180305091722.22246-1-jeffy.chen@rock-chips.com>
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
To: linux-kernel@vger.kernel.org
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-rockchip@lists.infradead.org, Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The of_count_phandle_with_args() can fail and return error(for example,
rk3399 pd_vio doesn't have clocks). That would break the pd probe.

Add a sanity check on pd->num_clks to avoid that.

Fixes: 65084121d59d ("soc: rockchip: power-domain: use clk_bulk APIs")
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

 drivers/soc/rockchip/pm_domains.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index ad96ddeaeb78..fd58fd475950 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -402,11 +402,16 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 
 	pd->num_clks = of_count_phandle_with_args(node, "clocks",
 						  "#clock-cells");
-
-	pd->clks = devm_kcalloc(pmu->dev, pd->num_clks, sizeof(*pd->clks),
-				GFP_KERNEL);
-	if (!pd->clks)
-		return -ENOMEM;
+	if (pd->num_clks > 0) {
+		pd->clks = devm_kcalloc(pmu->dev, pd->num_clks,
+					sizeof(*pd->clks), GFP_KERNEL);
+		if (!pd->clks)
+			return -ENOMEM;
+	} else {
+		dev_dbg(pmu->dev, "%s: don't have clocks: %d\n",
+			node->name, pd->num_clks);
+		pd->num_clks = 0;
+	}
 
 	for (i = 0; i < pd->num_clks; i++) {
 		pd->clks[i].clk = of_clk_get(node, i);
-- 
2.11.0
