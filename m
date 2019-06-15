From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/3] clk: rockchip: add clock id for watchdog pclk on rk3328
Date: Sat, 15 Jun 2019 17:30:30 +0200
Message-ID: <20190615153032.27772-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, papadakospan@gmail.com, sboyd@kernel.org, mturquette@baylibre.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Needed to export that added clock.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/dt-bindings/clock/rk3328-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3328-cru.h b/include/dt-bindings/clock/rk3328-cru.h
index afb811340382..555b4ff660ae 100644
--- a/include/dt-bindings/clock/rk3328-cru.h
+++ b/include/dt-bindings/clock/rk3328-cru.h
@@ -164,6 +164,7 @@
 #define PCLK_DCF		233
 #define PCLK_SARADC		234
 #define PCLK_ACODECPHY		235
+#define PCLK_WDT		236
 
 /* hclk gates */
 #define HCLK_PERI		308
-- 
2.20.1
