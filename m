From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] clk: rockchip: convert rk3399 pll type to use readl_poll_timeout
Date: Tue, 28 Jan 2020 17:29:05 +0100
Message-ID: <12366580.SORy7UBWfn@phil>
References: <20200128100204.1318450-1-heiko@sntech.de> <f8001dbb-ebbc-ebe3-d1db-c75d3888fd38@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <f8001dbb-ebbc-ebe3-d1db-c75d3888fd38@arm.com>
Sender: linux-clk-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-clk@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 28. Januar 2020, 16:28:44 CET schrieb Robin Murphy:
> On 28/01/2020 10:02 am, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > Instead of open coding the polling of the lock status, use the
> > handy readl_poll_timeout for this. As the pll locking is normally
> > blazingly fast and we don't want to incur additional delays, we're
> > not doing any sleeps similar to for example the imx clk-pllv4
> > and define a very safe but still short timeout of 1ms.
> > 
> > Suggested-by: Stephen Boyd <sboyd@kernel.org>
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > ---
> >   drivers/clk/rockchip/clk-pll.c | 21 ++++++++++-----------
> >   1 file changed, 10 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> > index 198417d56300..43c9fd0086a2 100644
> > --- a/drivers/clk/rockchip/clk-pll.c
> > +++ b/drivers/clk/rockchip/clk-pll.c
> > @@ -585,19 +585,18 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
> >   static int rockchip_rk3399_pll_wait_lock(struct rockchip_clk_pll *pll)
> >   {
> >   	u32 pllcon;
> > -	int delay = 24000000;
> > +	int ret;
> >   
> > -	/* poll check the lock status in rk3399 xPLLCON2 */
> > -	while (delay > 0) {
> > -		pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
> > -		if (pllcon & RK3399_PLLCON2_LOCK_STATUS)
> > -			return 0;
> > +	/*
> > +	 * Lock time typical 250, max 500 input clock cycles @24MHz
> > +	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
> > +	 */
> > +	ret = readl_poll_timeout(pll->reg_base + RK3399_PLLCON(2), pllcon,
> > +				 pllcon & RK3399_PLLCON2_LOCK_STATUS, 0, 1000);
> 
> Note that the existing I/O accessor was readl_relaxed(), but using plain 
> readl_poll_timeout() switches it to regular readl(). It may well not 
> matter, but since it's not noted as an intentional change it seemed 
> worth pointing out.

So we end up with an additional __iormb() after each readl_relaxed call.
So except for a small speed-penalty per iteration is there some other
memory-barrier wirednes that could come into play? (Somehow I always
forget the contents of Will's memory-barrier talks after a time)


From a bit of non-scientific testing, rk3328 seems to need at max 20
iterations in the wait_lock loop for the pll to lock, when doing cpufreq
scaling.

While interestingly px30 takes somewhere between 900 and 2000 iterations
on the same pll type.
[Though sleeps are not really possible anyway due to pll rates also getting
set during of_clk_register early during boot which results in errors about
scheduling the idle thread, so in the end it doesn't really matter]

Heiko
