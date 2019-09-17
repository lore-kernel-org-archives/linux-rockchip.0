From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/5] clk: rockchip: Add div50 clock-ids for sdmmc on px30 and nandc
Date: Tue, 17 Sep 2019 10:18:59 +0200
Message-ID: <20190917081903.25139-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, finley.xiao@rock-chips.com, zhangqing@rock-chips.com, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

From: Finley Xiao <finley.xiao@rock-chips.com>

EMMC and SDIO already have these clock-ids (still unused) only sdmmc is
missing them, so fix that.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/dt-bindings/clock/px30-cru.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/px30-cru.h b/include/dt-bindings/clock/px30-cru.h
index 00101479f7c4..5b1416fcde6f 100644
--- a/include/dt-bindings/clock/px30-cru.h
+++ b/include/dt-bindings/clock/px30-cru.h
@@ -85,6 +85,8 @@
 #define SCLK_EMMC_DIV50		83
 #define SCLK_DDRCLK		84
 #define SCLK_UART1_SRC		85
+#define SCLK_SDMMC_DIV		86
+#define SCLK_SDMMC_DIV50	87
 
 /* dclk gates */
 #define DCLK_VOPB		150
-- 
2.20.1
