From: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Thu, 20 Oct 2016 11:51:12 +0200 (CEST)
Message-ID: <alpine.DEB.2.20.1610201150510.5073@nanos>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org> <CAGS+omAT5gFD3vF7iz=Mc=CO00W_x2MSyGdpgD+tO2YfGnwpsA@mail.gmail.com> <CAD=FV=UHB4sqf9sAg6Pbrp67sgjwJRUFPKsEh_PXwUCM+o59ZQ@mail.gmail.com>
 <CAGS+omB3197rGzwvNM66Ok4JtP=fUCRS349jmttk2NYXvd0KHA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAGS+omB3197rGzwvNM66Ok4JtP=fUCRS349jmttk2NYXvd0KHA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Daniel Kurtz <djkurtz@chromium.org>
Cc: Doug Anderson <dianders@chromium.org>, John Stultz <john.stultz@linaro.org>, Tao Huang <huangtao@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Andreas Mohr <andi@lisas.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Tony Xie <tony.xie@rock-chips.com>, Akihiro Tsukada <tskd08@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 20 Oct 2016, Daniel Kurtz wrote:
> On Wed, Oct 19, 2016 at 4:29 AM, Doug Anderson <dianders@chromium.org> wrote:
> > ...but I'm not sure I agree with you about what to do here.
> > Specifically I think that whatever we do we need to try to keep
> > schedule_hrtimeout_range() and schedule_timeout() parallel.  For
> > schedule_timeout() we have the same comments but it's my understanding
> > that you'd expect that wake_up_process() would wake it up.  In any
> > case, if wake_up_process() doesn't wake it up then it seems like
> > msleep() and schedule_timeout_uninterruptible() are the same function
> > with two names, when in fact one is implemented in terms o the other.
> 
> Sounds reasonable.
> It would be nice to add a note to all of those function comments
> though to make them sound less absolute -
> "at least @timeout time is guaranteed to pass before the routine
> returns unless the current task is explicitly woken up, (e.g. by
> wake_up_process())"

Agreed.
