From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v3 2/7] clk: rockchip: rk3399: export 480M_SRC clock id for
 usbphy0/usbphy1
Date: Tue,  2 Aug 2016 15:19:56 +0800
Message-ID: <1470122401-31934-3-git-send-email-zhengxing@rock-chips.com>
References: <1470122401-31934-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1470122401-31934-1-git-send-email-zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Export these source clocks for usbphy.

Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

---

Changes in v3: None
Changes in v2: None

 drivers/clk/rockchip/clk-rk3399.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 8059a8d..316f5f4 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -403,9 +403,9 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	GATE(SCLK_USB2PHY1_REF, "clk_usb2phy1_ref", "xin24m", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(6), 6, GFLAGS),
 
-	GATE(0, "clk_usbphy0_480m_src", "clk_usbphy0_480m", CLK_IGNORE_UNUSED,
+	GATE(SCLK_USBPHY0_480M_SRC, "clk_usbphy0_480m_src", "clk_usbphy0_480m", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(13), 12, GFLAGS),
-	GATE(0, "clk_usbphy1_480m_src", "clk_usbphy1_480m", CLK_IGNORE_UNUSED,
+	GATE(SCLK_USBPHY1_480M_SRC, "clk_usbphy1_480m_src", "clk_usbphy1_480m", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(13), 12, GFLAGS),
 	MUX(0, "clk_usbphy_480m", mux_usbphy_480m_p, CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(14), 6, 1, MFLAGS),
-- 
1.7.9.5
