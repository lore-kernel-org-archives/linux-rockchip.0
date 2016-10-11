From: Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Tue, 11 Oct 2016 22:40:03 +0200
Message-ID: <20161011204003.GA21387@rhlx01.hs-esslingen.de>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
 <20161011193034.GA10646@rhlx01.hs-esslingen.de>
 <CAD=FV=Ua8c18SGr54ThmVe1oR3bqfCyHxfhL=6z8vJXkMiUedA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=Ua8c18SGr54ThmVe1oR3bqfCyHxfhL=6z8vJXkMiUedA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tony Xie <tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Oct 11, 2016 at 01:02:10PM -0700, Doug Anderson wrote:
> Andreas,
> 
> On Tue, Oct 11, 2016 at 12:30 PM, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org> wrote:
> > This loop implementation relies on negative kmin (result of ktime_sub())
> > getting internally handled by schedule_hrtimeout_range() as a 0 result.
> > If that ain't the case, then the loop itself will need to handle
> > negative values.
> > OK, scratch that, due to guaranteed-unchanged values of now and end,
> > result of directly subsequent ktime_sub() is guaranteed to
> > not deviate from what ktime_before() figured.
> > However, this is somewhat differing handling of these two APIs.
> 
> I read this as: no bug, feel free to ignore.

Heh, yeah ("an alternate style of review" ;).


> I agree that we could try to save some math by making the loop more
> complicated.  On the other hand, one could argue that a sufficiently
> good compiler might actually be able to figure some of this stuff out,
> since much of this stuff is just inlined 64-bit math comparisons.

Indeed. "micro-optimization again".


> > BTW, another argument for loop rework might be that
> > the result of ktime_sub() might already be improper
> > (due to being negative!) for
> > subsequent invocation of schedule_hrtimeout_range(),
> > i.e. there's an argument to be made that
> > the loop tail check instead ought to be done as a negative-value check
> > directly prior to schedule_hrtimeout_range() invocation.
> >
> > Hmm, if schedule_hrtimeout_range() can be relied on to
> > internally properly be doing the negative check,
> > then one could simply say that
> > the annoyingly extra calculation via ktime_before() call
> > should simply be removed completely.
> > Which would be a good step since it would centralize protocol behaviour
> > within the inner handling of the helper
> > rather than bloating user-side instruction cache footprint.
> 
> Ah, so you're saying just do a "while (true)" after changing the
> behavior of schedule_hrtimeout_range_clock().  If everyone agrees that
> they'd like to see this, I can do it.  I'd have to change
> schedule_hrtimeout_range_clock() to check for <= 0 instead of just
> comparing against 0.  ...and that would be an API change for
> schedule_hrtimeout_range_clock(), and it seems like that would be yet
> another source of bugs.  ...and this is to save an instruction?  It
> doesn't seem worth it.

Yup, I just realized that probably what we'd ideally want is
a very thin decorating wrapper (loop handler)
which cares about nothing else other than
eradicating the relevant "feature" of the inner handler
(namely, premature exit),
and otherwise leaves a much as possible to
central inner handler decision-making implementation.
That to me sounds like
the theoretically most precise (since dead simple) handling.
And even if such exceedingly simple handling is dangerous -
in case of failure we would realize it very soon (infinite loop),
and would then know what will need fixing.


I've been reviewing schedule_hrtimeout_range_clock() as well,
and I'm actually puzzled that it checks for zero value only,
and not less-equal zero.
That to me does not seem like a true-to-the-core protocol
to handle the task at hand.
OTOH perhaps less-equal comparison was deemed to be
much more expensive than a zero check,
and thus possibly has been done in inner handlers only.



For the loop code itself,
I'm not sure whether to pursue it -
given the schedule_hrtimeout_range_clock() API change risks you outlined,
and especially given that
optimization is likely to mostly benefit the "repeat" case only,
which likely would be the less relevant non-hotpath case anyway.

Plus, let's not forget the fact that
even hotpath handling *is* an invocation of the entire delay handler,
and then a couple measly opcodes to have the loop exited reliably. So...


Now, at least we have a
Reviewed-by: Andreas Mohr <andim2-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>


Oh well, lotsa discussion, some good thoughts,
but no truly revolutionary outcome so far.
However, sometimes the most important thing is
to have had a good educating discussion
(not everything in software circles is about the Get Rich Quick scheme -
you do have to spend some ample time - decades... -
to truly get mental concept things right).

Andreas Mohr
