From: Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] clk: rockchip: Fix initialization of mux_pll_src_4plls_p
Date: Sun,  9 Aug 2020 21:40:20 -0700
Message-ID: <20200810044020.2063350-1-natechancellor@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

A new warning in Clang points out that the initialization of
mux_pll_src_4plls_p appears incorrect:

../drivers/clk/rockchip/clk-rk3228.c:140:58: warning: suspicious
concatenation of string literals in an array initialization; did you
mean to separate the elements with a comma? [-Wstring-concatenation]
PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
                                                              ^
                                                             ,
../drivers/clk/rockchip/clk-rk3228.c:140:48: note: place parentheses
around the string literal to silence warning
PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
                                                    ^
1 warning generated.

Given the name of the variable and the same variable name in rv1108, it
seems that this should have been four distinct elements. Fix it up by
adding the comma as suggested.

Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")
Link: https://github.com/ClangBuiltLinux/linux/issues/1123
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/rockchip/clk-rk3228.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index d7243c09cc84..47d6482dda9d 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -137,7 +137,7 @@ PNAME(mux_usb480m_p)		= { "usb480m_phy", "xin24m" };
 PNAME(mux_hdmiphy_p)		= { "hdmiphy_phy", "xin24m" };
 PNAME(mux_aclk_cpu_src_p)	= { "cpll_aclk_cpu", "gpll_aclk_cpu", "hdmiphy_aclk_cpu" };
 
-PNAME(mux_pll_src_4plls_p)	= { "cpll", "gpll", "hdmiphy" "usb480m" };
+PNAME(mux_pll_src_4plls_p)	= { "cpll", "gpll", "hdmiphy", "usb480m" };
 PNAME(mux_pll_src_3plls_p)	= { "cpll", "gpll", "hdmiphy" };
 PNAME(mux_pll_src_2plls_p)	= { "cpll", "gpll" };
 PNAME(mux_sclk_hdmi_cec_p)	= { "cpll", "gpll", "xin24m" };
-- 
2.28.0
