From: Nathan Huckleberry <nhuck@google.com>
Subject: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 27 Jun 2019 15:22:20 -0700
Message-ID: <20190627222220.89175-1-nhuck@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, andy.yan@rock-chips.com, zhangqing@rock-chips.com
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>, clang-built-linux@googlegroups.com
List-Id: linux-rockchip.vger.kernel.org

Clang produces the following warning

drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
'mux_pll_src_3plls_p' [-Wunused-const-variable]
PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };

Looks like this variable was never used. Deleting it to remove the
warning.

Cc: clang-built-linux@googlegroups.com
Link: https://github.com/ClangBuiltLinux/linux/issues/524
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 drivers/clk/rockchip/clk-rv1108.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
index 96cc6af5632c..5947d3192866 100644
--- a/drivers/clk/rockchip/clk-rv1108.c
+++ b/drivers/clk/rockchip/clk-rv1108.c
@@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)	= { "usbphy", "xin24m" };
 PNAME(mux_hdmiphy_phy_p)	= { "hdmiphy", "xin24m" };
 PNAME(mux_dclk_hdmiphy_pre_p)	= { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
 PNAME(mux_pll_src_4plls_p)	= { "dpll", "gpll", "hdmiphy", "usb480m" };
-PNAME(mux_pll_src_3plls_p)	= { "apll", "gpll", "dpll" };
 PNAME(mux_pll_src_2plls_p)	= { "dpll", "gpll" };
 PNAME(mux_pll_src_apll_gpll_p)	= { "apll", "gpll" };
 PNAME(mux_aclk_peri_src_p)	= { "aclk_peri_src_gpll", "aclk_peri_src_dpll" };
-- 
2.22.0.410.gd8fdbe21b5-goog
