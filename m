From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 1/2] timers: Fix usleep_range() in the context of wake_up_process()
Date: Thu, 20 Oct 2016 16:37:55 -0700
Message-ID: <CAD=FV=W4qSXHywGNEg6tOq8WiC7cROME4g3SwTxkD7h7=NsvvQ@mail.gmail.com>
References: <1476998490-4481-1-git-send-email-dianders@chromium.org> <alpine.DEB.2.20.1610202326070.4938@nanos>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <alpine.DEB.2.20.1610202326070.4938@nanos>
Sender: linux-kernel-owner@vger.kernel.org
To: Thomas Gleixner <tglx@linutronix.de>
Cc: John Stultz <john.stultz@linaro.org>, Andreas Mohr <andi@lisas.de>, Brian Norris <briannorris@chromium.org>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, Tony Xie <tony.xie@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Guenter Roeck <linux@roeck-us.net>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "broonie@kernel.org" <broonie@kernel.org>, Daniel Kurtz <djkurtz@chromium.org>, Akihiro Tsukada <tskd08@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Oct 20, 2016 at 2:27 PM, Thomas Gleixner <tglx@linutronix.de> wrote:
> On Thu, 20 Oct 2016, Douglas Anderson wrote:
>
> Please wait for a full review and do not send out patches 5 seconds after
> the first mail hits your inbox.

Since you had previously commented on patch 1 and had already
commented on patch 2, I presumed you were done reviewing, but I was
obviously in error.  My apologies.

-Doug
