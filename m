From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Date: Mon, 13 May 2019 13:21:23 -0700
Message-ID: <CAD=FV=XkkKRJN+Vv6+nf8EjXoCuO-0MG923v-0HKPMYg=mdZww@mail.gmail.com>
References: <20190510223437.84368-1-dianders@chromium.org> <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk> <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
 <20190513160153.GD5168@sirena.org.uk> <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
 <20190513164738.GE5168@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190513164738.GE5168@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Boichat <drinkcat@chromium.org>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, May 13, 2019 at 9:47 AM, Mark Brown <broonie@kernel.org> wrote:

> On Mon, May 13, 2019 at 09:03:28AM -0700, Doug Anderson wrote:
> > On Mon, May 13, 2019 at 9:02 AM Mark Brown <broonie@kernel.org> wrote:
>
> > > I'm not saying the other changes aren't helping, I'm saying that it's
> > > not clear that this revert is improving things.
>
> > If I add a call to force the pumping to happen on the SPI thread then
> > the commit I'm reverting here is useless though, isn't it?
>
> Well, I'm not convinced that that change is ideal anyway and it does
> leave you vulnerable to further changes in the SPI core pushing things
> out to calling context which feels like it isn't going to be helping
> robustness.

OK.  Here's my plan: in v2 I've still included this revert and you can
see how things look.  If you hate it as much as you think you will
then let me know and I'll send a v3 that avoids to forcing and re-adds
the realtime thread to cros_ec.

One note just so you're aware: For my particular device I'm not nearly
as concerned with latency / throughput as I am concerned with
transfers not getting interrupted once started.  I've added this
explicitly in the commit message now, too.  :-)


-Doug
