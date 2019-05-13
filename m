From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Date: Mon, 13 May 2019 08:57:12 -0700
Message-ID: <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
References: <20190510223437.84368-1-dianders@chromium.org> <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190512074538.GE21483@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Boichat <drinkcat@chromium.org>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, May 10, 2019 at 03:34:37PM -0700, Douglas Anderson wrote:
> > This reverts commit 37a186225a0c020516bafad2727fdcdfc039a1e4.
> >
> > We have a better solution in the patch ("platform/chrome: cros_ec_spi:
> > Set ourselves as timing sensitive").  Let's revert the uglier and less
> > reliable solution.
>
> It isn't clear to me that it's a bad thing to have this even with the
> SPI thread at realime priority.

The code that's there right now isn't enough.  As per the description
in the original patch, it didn't solve all problems but just made
things an order of magnitude better.  So if I don't do this revert I
instead need a patch to bump cros_ec SPI up to realtime to get SPI
transfers _truly_ reliable.  I actually have a patch coded up to do
just that.  ...but then Guenter pointed out that I was effectively
duplicating the work that the SPI framework could already do for me if
I could use the pumping thread at real time priority.

My current plan is parameterize things so that cros_ec_spi can request
a forced transition to the realtime pump thread without breaking
existing users.  I'll code that up this morning and send out a v2 soon
so you can see what you think of it.  :-)

NOTE: I actually tracked down one reason why the high priority thread
wasn't enough and I needed something like real time.  I found that
commit a1b89132dc4f ("dm crypt: use WQ_HIGHPRI for the IO and crypt
workqueues") was making dm-crypt preempt me.  I'll start a separate
discussion about that, but in the end it still seems better to use
something like a real time priority for cros_ec.


-Doug
