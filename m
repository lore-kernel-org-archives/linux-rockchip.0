From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Wed, 3 Apr 2019 14:08:40 -0700
Message-ID: <CAD=FV=Whd4upxDDOrmVt=HgjEiGNuL2FccOfezpAFsy5yB55JA@mail.gmail.com>
References: <20190403203137.203582-1-dianders@chromium.org> <20190403210436.GS112750@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190403210436.GS112750@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Brian Norris <briannorris@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>, Randall Spangler <rspangler@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Apr 3, 2019 at 2:04 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> > +static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
>
> nit: the fact that a high priority workqueue is used is an
> implementation detail, since the driver has no function to perform a
> transfer with 'normal'/low priority there is no need to distinguish
> between the two cases. In this sense I'd be inclined to remove the
> 'high_pri' from the function names.
>
> Sorry for not mentioning this earlier, I focussed on other
> details, anyway it's just a nit.

I still kinda like having the "high_pri" in there since the point of
this function is to transfer the work onto the high priority
workqueue.  It's not an exported function so having the implementation
detail leak into the name isn't a bad thing, is it?  ...so unless
someone else thinks the name should change or you feel strongly about
it I won't plan to change the name.

Thanks!

-Doug
