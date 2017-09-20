From: John Keeping <john@keeping.me.uk>
Subject: Re: [PATCH 1/7] drm/rockchip/dsi: correct Feedback divider setting
Date: Wed, 20 Sep 2017 13:07:22 +0100
Message-ID: <20170920120722.GJ1601@john.keeping.me.uk>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
 <20170919180025.apb4aq7ca3filh6c@art_vandelay>
 <20170919181751.GA38656@google.com>
 <20170919202740.2ku56pefrj3wyskw@art_vandelay>
 <20170920100851.GI1601@john.keeping.me.uk>
 <03620f73-29f0-aba4-dcb4-ccb02d5fad9a@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <03620f73-29f0-aba4-dcb4-ccb02d5fad9a@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: hl <hl@rock-chips.com>
Cc: Sean Paul <seanpaul@chromium.org>, mark.rutland@arm.com, bivvy.bi@rock-chips.com, airlied@linux.ie, Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Nickey Yang <nickey.yang@rock-chips.com>, robh+dt@kernel.org, zyw@rock-chips.com, xbl@rock-chips.com, mark.yao@rock-chips.com, heiko@sntech.de
List-Id: linux-rockchip.vger.kernel.org

On Wed, Sep 20, 2017 at 07:08:11PM +0800, hl wrote:
> 
> 
> On Wednesday, September 20, 2017 06:08 PM, John Keeping wrote:
> > On Tue, Sep 19, 2017 at 01:27:40PM -0700, Sean Paul wrote:
> >> On Tue, Sep 19, 2017 at 11:19:01AM -0700, Brian Norris wrote:
> >>> Hi Sean,
> >>>
> >>> On Tue, Sep 19, 2017 at 11:00:25AM -0700, Sean Paul wrote:
> >>>> On Mon, Sep 18, 2017 at 05:05:33PM +0800, Nickey Yang wrote:
> >>>>> This patch correct Feedback divider setting:
> >>>>> 1、Set Feedback divider [8:5] when HIGH_PROGRAM_EN
> >>>>> 2、Due to the use of a "by 2 pre-scaler," the range of the
> >>>>> feedback multiplication Feedback divider is limited to even
> >>>>> division numbers, and Feedback divider must be greater than
> >>>>> 12, less than 1000.
> >>>>> 3、Make the previously configured Feedback divider(LSB)
> >>>>> factors effective
> >>>>>
> >>>>> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> >>>>> ---
> >>>>>   drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 83 ++++++++++++++++++++++------------
> >>>>>   1 file changed, 54 insertions(+), 29 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> >>>>> index 9a20b9d..52698b7 100644
> >>>>> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> >>>>> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> >>>>> @@ -228,7 +228,7 @@
> >>>>>   #define LOW_PROGRAM_EN		0
> >>>>>   #define HIGH_PROGRAM_EN		BIT(7)
> >>>>>   #define LOOP_DIV_LOW_SEL(val)	(((val) - 1) & 0x1f)
> >>>>> -#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0x1f)
> >>>>> +#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0xf)
> >>>>>   #define PLL_LOOP_DIV_EN		BIT(5)
> >>>>>   #define PLL_INPUT_DIV_EN	BIT(4)
> >>>>>   
> >>>>> @@ -461,6 +461,7 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
> >>>>>   	dw_mipi_dsi_phy_write(dsi, 0x17, INPUT_DIVIDER(dsi->input_div));
> >>>>>   	dw_mipi_dsi_phy_write(dsi, 0x18, LOOP_DIV_LOW_SEL(dsi->feedback_div) |
> >>>>>   					 LOW_PROGRAM_EN);
> >>>>> +	dw_mipi_dsi_phy_write(dsi, 0x19, PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
> >>>> You do the same write 2 lines down. Are both needed? It would be nice if the
> >>>> register names were also defined, so this is easier to read.
> >>> If I'm reading correctly, I think this is what Nickey meant by:
> >>>
> >>> "3、Make the previously configured Feedback divider(LSB)
> >>> factors effective"
> >>>
> >>> . My reading of the databook is that this step finalizes the previous
> >>> two writes (to test code 0x17 and 0x18).
> >>>
> >>> Given this was buggy (?) previously, it does seem like having some extra
> >>> language to document this could help. Register names (or "test codes",
> >>> per the docs?) could help, but additionally, maybe a few more comments.
> >>>
> >> Ah, yeah, thanks for the explanation. It's not clear that this latches the
> >> values above. I think register names and comments would be immensely helpful.
> > According to the databook, 0x19 controls whether the loop/input dividers
> > are derived from the hsfreqrange configuration or use the values in 0x17
> > and 0x18.  I can't see why writing the same value to this register
> > multiple times is necessary.
> According to databook, set 0x19 to 0x30 make the previously configured 
> N(0x17) and M(0x18)
> factors effective, 0x18 need to be setted by twice, since we need to set 
> 0x18 LSB and MSB separately,
> As we test, after set 0x18 LSB, if we do not set 0x19 immediately to 
> make the configrued effective,
> when we set 0x18 MSB, the 0x18 LSB value will gone, and we will get 
> wrong pll frequency. Anyway,
> I think should add some comment here to clear that.

That's surprising, the examples in sections 6.2.1 and 6.2.2 of the
databook I have both show the high and low parts of 0x18 being written
before 0x19 is set.

When reading 0x18 are you setting bit 7 in TESTDIN correctly in order to
select the correct bits of the feedback divider?

> >
> >>>>>   	dw_mipi_dsi_phy_write(dsi, 0x18, LOOP_DIV_HIGH_SEL(dsi->feedback_div) |
> >>>>>   					 HIGH_PROGRAM_EN);
> >>>>>   	dw_mipi_dsi_phy_write(dsi, 0x19, PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
> >>> [...]
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> 
