From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Date: Mon, 13 May 2019 09:03:28 -0700
Message-ID: <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
References: <20190510223437.84368-1-dianders@chromium.org> <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk> <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
 <20190513160153.GD5168@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190513160153.GD5168@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Boichat <drinkcat@chromium.org>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, May 13, 2019 at 9:02 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, May 13, 2019 at 08:57:12AM -0700, Doug Anderson wrote:
> > On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:
>
> > > It isn't clear to me that it's a bad thing to have this even with the
> > > SPI thread at realime priority.
>
> > The code that's there right now isn't enough.  As per the description
> > in the original patch, it didn't solve all problems but just made
> > things an order of magnitude better.  So if I don't do this revert I
>
> I'm not saying the other changes aren't helping, I'm saying that it's
> not clear that this revert is improving things.

If I add a call to force the pumping to happen on the SPI thread then
the commit I'm reverting here is useless though, isn't it?

-Doug
