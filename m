From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/4] rockchip: fix serial output on rk3036
Date: Tue, 28 Feb 2017 18:25:50 +0100
Message-ID: <1641374.43nVGhYm9v@phil>
References: <20170228051420.7214-1-heiko@sntech.de>
 <20170228073240.GJ25384@codeaurora.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170228073240.GJ25384-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 27. Februar 2017, 23:32:40 CET schrieb Stephen Boyd:
> On 02/28, Heiko Stuebner wrote:
> > Recent changes to the 8250-dw variant revealed issues concerning
> > how the clock rates are handled on the rk3036 uart.
> > 
> > For one, there was an error in the clock declaration, but also the
> > shared uart-pll-select-mux also as default got supplied from the apll
> > that also supplies the cpu and thus gets frequency scaled.
> > 
> > The patches in this series remedy this and make the debug uart
> > function again on 4.10 + current merge window.
> 
> What's the merge path? The last patch is sort of questionable
> because it fixes a regression by changing assigned clocks in DT,
> which doesn't really make sense from a DT perspective (it should
> have been right already or can be configured from the clk driver
> itself in software).

yeah, I was (and somewhat still am) debating on the dt vs. clk driver 
positioning. As you can see, there are multiple sources, most of them are 
somewhat questionable. I.e. apll and dpll are the cpu + ddr supplies and we 
will want to do ddr-scaling at some point too.

So the gpll really is the only really sane option and I guess simply doing it 
in the driver (similar to what rk3188 does) might be better.
If some boards really want to select a different source, they then can do that 
via assigned-clocks in the board-dts.
