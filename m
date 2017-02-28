From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v2 0/2] rockchip: fix serial output on rk3036
Date: Tue, 28 Feb 2017 19:12:12 +0100
Message-ID: <20170228181214.6413-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Recent changes to the 8250-dw variant revealed issues concerning
how the clock rates are handled on the rk3036 uart.

For one, there was an error in the clock declaration, but also the
shared uart-pll-select-mux also as default got supplied from the apll
that also supplies the cpu and thus gets frequency scaled.

The patches in this series remedy this and make the debug uart
function again on 4.10 + current merge window.


As for the merge-path, I've now tested all Rockchip socs I have access
to (3036, 3288, 3368, 3399) and didn't find any more clock-related issues
with the merge-window as of today. So if no other subtle issue turns up
this week, these should be all fixes for the 4.11 cycle.
So these 2 patches could be picked up by clock-maintainers directly if
so desired, or I can send a pull request after the merge-window closes
and we're save to say that nothing else broke.


changes in v2:
- Fixes tag for the missing ","
- do reparenting in the driver itself
- drop clock-id addition, as they're not needed for the fix anymore

Heiko Stuebner (2):
  clk: rockchip: add "," to mux_pll_src_apll_dpll_gpll_usb480m_p on
    rk3036
  clk: rockchip: Make uartpll a child of the gpll on rk3036

 drivers/clk/rockchip/clk-rk3036.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

-- 
2.11.0
