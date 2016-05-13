From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 2/4] phy: rockchip-emmc: configure frequency range and
 drive impedance
Date: Fri, 13 May 2016 14:04:40 -0700
Message-ID: <20160513210440.GA99074@google.com>
References: <1463092986-61777-1-git-send-email-briannorris@chromium.org>
 <1463092986-61777-2-git-send-email-briannorris@chromium.org>
 <3695875b-09c3-cd80-3062-55d985e51f70@rock-chips.com>
 <CAD=FV=UwocUy_bOUrJZB47taHWdV1KGkvi5CyZf74Y8cvGgVmw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=UwocUy_bOUrJZB47taHWdV1KGkvi5CyZf74Y8cvGgVmw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, May 13, 2016 at 11:46:33AM -0700, Doug Anderson wrote:
> On Thu, May 12, 2016 at 6:02 PM, Shawn Lin <shawn.lin@rock-chips.com> wrote:
> > On 2016/5/13 6:43, Brian Norris wrote:
> >> @@ -154,6 +167,20 @@ static int rockchip_emmc_phy_power_on(struct phy
> >> *phy)
> >>         struct rockchip_emmc_phy *rk_phy = phy_get_drvdata(phy);
> >>         int ret = 0;
> >>
> >> +       /* DLL operation: 170 to 200 MHz */
> >
> >
> > What is 170 here? Should we expose them to dt instead of hardcoding
> > them?
> 
> This was probably my fault.  I did some searching and found
> <https://arasan.com/wp-content/media/eMMC-5-1-Total-Solution_Rev-1-3.pdf>.
> It appears to be docs for a similar (but not identical) PHY.  We were
> looking at it to try to get more clarity on some bits that were hard
> to understand in the docs we had.
> 
> In that doc there appear to be 3 bits for selecting the DLL operation
> and they have ranges defined.  In Rockchip's PHY there are only 2
> bits.  Thus things don't map totally properly.
> 
> Anyway, comment should probably be removed.

[...]

> So overall:
> 
> * Should re-spin and remove the comment about 170 MHz.
> 
> * I think this could land as-is other than the comment.

Right, will fix the first bullet point.

Brian
