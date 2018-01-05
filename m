From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 2/2] phy: rockchip-emmc: use regmap_read_poll_timeout to
 poll dllrdy
Date: Thu, 4 Jan 2018 18:16:37 -0800
Message-ID: <20180105021637.GB168398@google.com>
References: <1514859720-151161-2-git-send-email-shawn.lin@rock-chips.com>
 <20180105020749.GA166692@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180105020749.GA166692@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>, Ziyuan Xu <xzy.xu@rock-chips.com>, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Sorry for the spam...one more thought:

On Thu, Jan 04, 2018 at 06:07:51PM -0800, Brian Norris wrote:
> On Tue, Jan 02, 2018 at 10:22:00AM +0800, Shawn Lin wrote:
> > Just use the API instead of open-coding it, no functional change
> > intended.
> > 
> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > ---
> > 
> >  drivers/phy/rockchip/phy-rockchip-emmc.c | 21 +++++++--------------
> >  1 file changed, 7 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
> > index 512a6ef..c65979b 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> > @@ -79,6 +79,9 @@
> >  #define PHYCTRL_IS_CALDONE(x) \
> >  	((((x) >> PHYCTRL_CALDONE_SHIFT) & \
> >  	  PHYCTRL_CALDONE_MASK) == PHYCTRL_CALDONE_DONE)
> > +#define PHYCTRL_IS_DLLRDY(x) \
> > +	((((x) >> PHYCTRL_DLLRDY_SHIFT) & \
> > +	  PHYCTRL_DLLRDY_MASK) == PHYCTRL_DLLRDY_DONE)
> >  
> >  struct rockchip_emmc_phy {
> >  	unsigned int	reg_offset;
> > @@ -93,7 +96,6 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
> >  	unsigned int dllrdy;
> >  	unsigned int freqsel = PHYCTRL_FREQSEL_200M;
> >  	unsigned long rate;
> > -	unsigned long timeout;
> >  
> >  	/*
> >  	 * Keep phyctrl_pdb and phyctrl_endll low to allow
> > @@ -222,19 +224,10 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
> >  	 *   only at boot / resume.  In both cases, eMMC is probably on the
> >  	 *   critical path so busy waiting a little extra time should be OK.
> 
> ^^ The above comments talk about busy-waiting, keeping this short, and
> critical paths. With a sleeping implementation (like
> regmap_read_poll_timeout()) that doesn't quite match, does it? I'd think
> you might at least change the wording a little to avoid calling it "busy wait".
> 
> Brian
> 
> >  	 */
> > -	timeout = jiffies + msecs_to_jiffies(50);
> > -	do {
> > -		udelay(1);
> > -
> > -		regmap_read(rk_phy->reg_base,
> > -			rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> > -			&dllrdy);
> > -		dllrdy = (dllrdy >> PHYCTRL_DLLRDY_SHIFT) & PHYCTRL_DLLRDY_MASK;
> > -		if (dllrdy == PHYCTRL_DLLRDY_DONE)
> > -			break;
> > -	} while (!time_after(jiffies, timeout));
> > -
> > -	if (dllrdy != PHYCTRL_DLLRDY_DONE) {
> > +	if (regmap_read_poll_timeout(rk_phy->reg_base,

regmap_read_poll_timeout() checks for regmap_read() errors and aborts on
error, so it's misleading to just report ETIMEDOUT below. Why don't you
save 'ret', print it in the pr_err() message, and propagate the error
code?

Same for patch 1.

Brian

> > +				     rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> > +				     dllrdy, PHYCTRL_IS_DLLRDY(dllrdy),
> > +				     1, 50 * USEC_PER_MSEC)) {
> >  		pr_err("rockchip_emmc_phy_power: dllrdy timeout.\n");
> >  		return -ETIMEDOUT;
> >  	}
