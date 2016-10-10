From: Andreas Mohr <andi@lisas.de>
Subject: Re: [PATCH] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Mon, 10 Oct 2016 22:47:37 +0200
Message-ID: <20161010204737.GB3100@rhlx01.hs-esslingen.de>
References: <1476125277-6061-1-git-send-email-dianders@chromium.org>
 <20161010200400.GA9230@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20161010200400.GA9230@localhost>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>, Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>, huangtao@rock-chips.com, tony.xie@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Andreas Mohr <andi@lisas.de>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Oct 10, 2016 at 01:04:01PM -0700, Brian Norris wrote:
> Hi Doug,
> 
> On Mon, Oct 10, 2016 at 11:47:57AM -0700, Doug Anderson wrote:
> > +		end = ktime_get();
> > +		elapsed = ktime_to_us(ktime_sub(end, start));
> > +	} while (elapsed < min);
> 
> I think Andreas had similar comments, but it seemed to me like
> ktime_before() might be nicer. But (as Andreas did) you might get into
> (premature?) micro-optimizations down that path, and I'm certainly not
> an expert there.

I'd justify it this way:
orientation/type of input data is rather irrelevant -
all that matters is how you want to treat things in your *inner handling* -
and if that happens to be ktime-based
(as is usually - if not pretty much always - the case within kernel code),
then it ought to be that way,
*consistently* (to avoid conversion transition overhead).

Andreas Mohr
