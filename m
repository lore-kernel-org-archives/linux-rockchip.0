From: Andreas Mohr <andi@lisas.de>
Subject: Re: [PATCH] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Mon, 10 Oct 2016 22:42:14 +0200
Message-ID: <20161010204214.GA3100@rhlx01.hs-esslingen.de>
References: <1476125277-6061-1-git-send-email-dianders@chromium.org>
 <20161010200400.GA9230@localhost>
 <CAD=FV=XfQB=BG4o08hmjd5waOHo=PsW=RYhyDSY_kbAJcE6spQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=XfQB=BG4o08hmjd5waOHo=PsW=RYhyDSY_kbAJcE6spQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Brian Norris <briannorris@chromium.org>, Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>, Tao Huang <huangtao@rock-chips.com>, Tony Xie <tony.xie@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andreas Mohr <andi@lisas.de>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Oct 10, 2016 at 01:12:39PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Mon, Oct 10, 2016 at 1:04 PM, Brian Norris <briannorris@chromium.org> wrote:
> > I believe 'min' is unmodified throughout, and therefore 'kmin' is
> > computed to be the same minimum timeout in each loop. Shouldn't this be
> > decreasing on each iteration of the loop? (i.e., either your compute
> > 'kmin' differently here, or you recompute 'min' based on the elapsed
> > time?)
> 
> Yes, I stupidly changed something at the last second and then didn't
> test again after my stupid change.  Fix coming soon with all comments
> addressed.  Sorry for posting broken code.  :( :( :(

With a loop style that is actively re-calculating things,
such implementations should then not fall into the trap of
basing the "next" value on "current" time,
thereby bogusly accumulating scheduling-based delays
with each new loop iteration etc.
(i.e., things should still be based on hard, precise termination according to
an *initially* calculated, *absolute*, *minimum* expiry time).

Andreas Mohr

-- 
GNU/Linux. It's not the software that's free, it's you.
