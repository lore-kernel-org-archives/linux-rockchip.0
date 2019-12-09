From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron
Date: Mon, 9 Dec 2019 15:56:14 -0800
Message-ID: <CAD=FV=Xdrw1FC=DktQ8HjdEJcCKvdA3sx78gg-rn8=bBq=WrEw@mail.gmail.com>
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org> <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
 <1788857.Va9C3Z3akr@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1788857.Va9C3Z3akr@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Marcel Holtmann <marcel@holtmann.org>, Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, BlueZ <linux-bluetooth@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, devicetree <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sun, Dec 8, 2019 at 4:03 PM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Am Montag, 9. Dezember 2019, 00:48:31 CET schrieb Marcel Holtmann:
> > > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > > ownership of its gpios. In order to use this, you must enable the
> > > following kconfig options:
> > > - CONFIG_BT_HCIUART_BCM
> > > - CONFIG_SERIAL_DEV
> > >
> > > This is applicable to rk3288-veyron series boards that use the bcm435=
40
> > > wifi+bt chips.
> > >
> > > As part of this change, also refactor the pinctrl across the various
> > > boards. All the boards using broadcom bluetooth shouldn't touch the
> > > bt_dev_wake pin.
> >
> > so have these changes being merged?
>
> not yet
>
> Doug wanted to give a Reviewed-by, once the underlying bluetooth
> changes got merged - not sure what the status is though.

I have been out for the last week and am a bit backlogged.

I notice that this landed in our 4.19 kernel with +Matthias's
Reviewed-by at <https://crrev.com/c/1772261>.  I don't feel any need
to re-review this myself if Matthias has taken a final look on it, so
unless he knows a reason why it shouldn't land then I'd say go ahead
and land it.

-Doug
