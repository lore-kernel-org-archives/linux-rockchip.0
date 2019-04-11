From: Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH] clk: rockchip: rk3288: Limit use of USB PHY clock to USB
Date: Thu, 11 Apr 2019 10:59:17 -0700
Message-ID: <20190411175917.173566-1-mka@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

The USB PHY clock can be configured as (grand) parent of uart0_sclk and
sclk_gpu. It has been observed that UART0 doesn't work reliably in high
speed mode with the PHY clock as input when certain USB devices are
plugged to the USB HOST1 port (see https://crrev.com/c/320543).

Prefix the name of the PHY clock with a '.' in the non-USB muxes to
effectively remove the clock as input from these muxes.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 drivers/clk/rockchip/clk-rk3288.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 5a67b7869960..677bc5485201 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -200,8 +200,8 @@ PNAME(mux_aclk_cpu_src_p)	= { "cpll_aclk_cpu", "gpll_aclk_cpu" };
 PNAME(mux_pll_src_cpll_gpll_p)		= { "cpll", "gpll" };
 PNAME(mux_pll_src_npll_cpll_gpll_p)	= { "npll", "cpll", "gpll" };
 PNAME(mux_pll_src_cpll_gpll_npll_p)	= { "cpll", "gpll", "npll" };
-PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", "usbphy480m_src" };
-PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", "usbphy480m_src", "npll" };
+PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", ".usbphy480m_src" };
+PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", ".usbphy480m_src", "npll" };
 
 PNAME(mux_mmc_src_p)	= { "cpll", "gpll", "xin24m", "xin24m" };
 PNAME(mux_i2s_pre_p)	= { "i2s_src", "i2s_frac", "ext_i2s", "xin12m" };
-- 
2.21.0.392.gf8f6787159e-goog
