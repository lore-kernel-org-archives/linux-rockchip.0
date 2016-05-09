From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [RFC PATCH 2/3] clk: adjust clocks to their requested rate after
 parent changes
Date: Mon, 9 May 2016 08:49:43 -0700
Message-ID: <CAD=FV=VBiUvRxh4b50eHdToywyzhvsi0nX_fLv1pJKrNiOuoZg@mail.gmail.com>
References: <1462206982-10444-1-git-send-email-heiko@sntech.de>
 <1462206982-10444-3-git-send-email-heiko@sntech.de>
 <CAD=FV=X6at49s-8Wh3+RnLwNQr5RqDMvfJJF+TwvuhnurmQk1w@mail.gmail.com>
 <2927458.4ozSLghtXU@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2927458.4ozSLghtXU@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, zhangqing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-clk <linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, May 9, 2016 at 4:40 AM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> Am Donnerstag, 5. Mai 2016, 17:35:03 schrieb Doug Anderson:
>> Heiko,
>>
>> On Mon, May 2, 2016 at 9:36 AM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
>> > Given a hirarchy of clk1 -> [div] -> clk2, when the rate of clk1 gets
>> > changed, clk2 changes as well as the divider stays the same. There may
>> > be cases where a user of clk2 needs it at a specific rate, so clk2
>> > needs to be readjusted for the changed rate of clk1.
>> >
>> > So if a rate was requested for the clock, and its rate changed during
>> > the underlying rate-change, with this change the clock framework now
>> > tries to readjust the rate back to/near the requested one.
>> >
>> > The whole process is protected by a new clock-flag to not force this
>> > behaviour change onto every clock defined in the ccf.
>>
>> I'm not an expert on CCF details, but presumably you need to be really
>> careful here.  Is there any way you could get an infinite loop here
>> where you ping-pong between two people trying to control their parent
>> clock?  Right now I see mutual recursion between
>> clk_core_set_rate_nolock() and clk_change_rate() and no base case.
>>
>> Specifically if there's a path (because of CLK_SET_RATE_PARENT) where
>> setting a clock rate on "clk2" in your example can cause a rate change
>> of "clk1" I worry that we'll be in trouble.  Maybe a requirement of
>> your patch is that no such path exists?  ...or maybe something in the
>> code prevents this...
>
> This was one of my worries as well, which is why the flag exists in the first
> place, right now offloading the requirement to check for such conflict cases to
> the clock-tree creator.

If that's the case, it needs to be documented somewhere.  Without some
documentation this flag sounds like a flag that everyone would of
course want everywhere.


> I think one possible test to add could be to check for conflicts between
> CLK_SET_RATE_PARENT and this new flag.
>
> Aka in clk-init once encountering the CLK_KEEP_REQRATE, go up through parent
> clocks as long as CLK_SET_RATE_PARENT is set and if we encounter a parent
> with num_children > 1 (aka a shared base-clock, like a PLL on rockchip)
> unset CLK_KEEP_REQRATE, as it would like introduce that ping-pong game.
>
> Hmm, although this test would also fire in cases like Rockchip's fractional
> dividers, where there is the common pll-select-mux+divider and after that
> the mux selecting between that or having the fractional-divider in between
> as well.
>
> I guess it can get hairy to detect such cases sucessfully.

Wouldn't this logic work?

1. Walk up through parents as long as CLK_SET_RATE_PARENT is set.  Add
to "ancestors" list.

2. Walk down through children of "ancestors" as long as
CLK_SET_RATE_PARENT is set in the child.

3. If CLK_KEEP_REQRATE is found in one of those children and we're not
the original clock then it's an error.


Actually, though, it seems like there's a much easier rule.  For now,
just make CLK_SET_RATE_PARENT and CLK_KEEP_REQRATE mutually exclusive.
You can choose to react to your parent's rate or you can choose to
affect your parent's rate, but not both.

In your current patch 3/3 you actually set both, but I don't think you
really need to do you?


>> > Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>> > ---
>> >
>> >  drivers/clk/clk.c            | 13 +++++++++++--
>> >  include/linux/clk-provider.h |  1 +
>> >  2 files changed, 12 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>> > index 65e0aad..22be369 100644
>> > --- a/drivers/clk/clk.c
>> > +++ b/drivers/clk/clk.c
>> > @@ -1410,6 +1410,9 @@ static struct clk_core
>> > *clk_propagate_rate_change(struct clk_core *core,>
>> >         return fail_clk;
>> >
>> >  }
>> >
>> > +static int clk_core_set_rate_nolock(struct clk_core *core,
>> > +                                   unsigned long req_rate);
>> > +
>> >
>> >  /*
>> >
>> >   * walk down a subtree and set the new rates notifying the rate
>> >   * change on the way
>> >
>> > @@ -1494,6 +1497,12 @@ static void clk_change_rate(struct clk_core
>> > *core)
>> >
>> >         /* handle the new child who might not be in core->children yet
>> >         */
>> >         if (core->new_child)
>> >
>> >                 clk_change_rate(core->new_child);
>> >
>> > +
>> > +       /* handle a changed clock that needs to readjust its rate */
>> > +       if (core->flags & CLK_KEEP_REQ_RATE && core->req_rate
>> > +                                           && core->new_rate !=
>> > old_rate
>> > +                                           && core->new_rate !=
>> > core->req_rate) +               clk_core_set_rate_nolock(core,
>> > core->req_rate);
>>
>> I guess we don't care about errors here?
>>
>> ...maybe (?) we could ignore errors if we validated this rate change
>> with PRE_RATE_CHANGE before attempting to change the parent clock, but
>> I don't see the code doing this unless I missed it.
>
> It's more like what would you want to do in the error/failure cases.
>
> So far I was going by the assumption we're going to change the clock anyway
> and just try to pull marked clocks along, so in the error case it would just
> fall back to the current behaviour.

In the very least it should cause a warning to be printed.  By
introducing a new flag you've changed the expectations and I don't
think a user would expect to fall back to the old behavior without at
least an warning.

I think it still makes sense to pre-validate your change in
PRE_RATE_CHANGE, of course.


-Doug
