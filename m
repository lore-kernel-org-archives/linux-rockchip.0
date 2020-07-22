From: Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2] clk: rockchip: add sclk_mac_lbtest to rk3188_critical_clocks
Date: Wed, 22 Jul 2020 18:18:20 +0200
Message-ID: <20200722161820.5316-1-knaerzche@gmail.com>
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Alex Bee <knaerzche@gmail.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Since the loopbacktest clock is not exported and is not touched in the
driver, it has to be added to rk3188_critical_clocks to be protected from
being disabled and in order to get the emac working.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

Changes in v2:
- add sclk_mac_lbtest to rk3188_critical_clocks instead of adding the
  CLOCK_IGNORE_UNUSED flag

 drivers/clk/rockchip/clk-rk3188.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 77aebfb1d6d5..730020fcc7fe 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -751,6 +751,7 @@ static const char *const rk3188_critical_clocks[] __initconst = {
 	"pclk_peri",
 	"hclk_cpubus",
 	"hclk_vio_bus",
+	"sclk_mac_lbtest",
 };
 
 static struct rockchip_clk_provider *__init rk3188_common_clk_init(struct device_node *np)
-- 
2.17.1
