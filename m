From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] timers: Fix usleep_range() in the context of wake_up_process()
Date: Mon, 10 Oct 2016 14:16:48 -0700
Message-ID: <CAD=FV=WmjQwt638sG5_d0pnCzjhvZM+YwPeETnh7Mp79F2oE0w@mail.gmail.com>
References: <1476125277-6061-1-git-send-email-dianders@chromium.org> <20161010195356.GA30513@rhlx01.hs-esslingen.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20161010195356.GA30513@rhlx01.hs-esslingen.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Andreas Mohr <andi@lisas.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>, Brian Norris <briannorris@chromium.org>, Tao Huang <huangtao@rock-chips.com>, Tony Xie <tony.xie@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Oct 10, 2016 at 12:53 PM, Andreas Mohr <andi@lisas.de> wrote:
> Some thoughts:
> - max >= min pre-condition is validated somewhere, I'd hope?
>   (somewhere in outer API frame?)

I don't think this is validated, but it's not a new problem.  My patch
doesn't attempt to solve this.  A future patch could, though.  You can
speculate on whether a WARN_ON would be better or some type of
friendly warning.

-Doug
