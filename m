From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Subject: Re: [PATCH 3/3] ARM: dts: rockchip: Add brcm bluetooth module on uart0
Date: Sat, 26 Oct 2019 10:39:18 -0700
Message-ID: <CANFp7mX7LNxt5=6h-eMC+o1JtoJ1Mvwo2RLBYMhZ3fN5kyqGqQ@mail.gmail.com>
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
 <20191025215428.31607-4-abhishekpandit@chromium.org> <CAD=FV=Vf64F885me=PUpv34Lb6iZpm1ui30nLHww6T3rmRVJXA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=Vf64F885me=PUpv34Lb6iZpm1ui30nLHww6T3rmRVJXA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>, linux-bluetooth@vger.kernel.org, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Yes, these shouldn't be for all of Veyron, only Minnie, Mickey and
Speedy -- my mistake. I'll send an updated patch with your
suggestions.

Thanks
Abhishek

On Fri, Oct 25, 2019 at 3:50 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Fri, Oct 25, 2019 at 2:55 PM Abhishek Pandit-Subedi
> <abhishekpandit@chromium.org> wrote:
> >
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> >   - CONFIG_BT_HCIUART_BCM
> >   - CONFIG_SERIAL_DEV
> >
> > Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> > ---
> >
> >  arch/arm/boot/dts/rk3288-veyron.dtsi | 31 +++++++---------------------
> >  1 file changed, 7 insertions(+), 24 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> > index 7525e3dd1fc1..8c9f91ba6f57 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> > +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
>
> You are changing this for _all_ veryon, not just those veyron devices
> using Broadcom.  I don't think you want to change the marvell-based
> boards.
>
> ...presumably you'll want to make you change only affect minnie,
> speedy, and mickey.
>
>
> > @@ -23,30 +23,6 @@
> >                 reg = <0x0 0x0 0x0 0x80000000>;
> >         };
> >
> > -       bt_activity: bt-activity {
> > -               compatible = "gpio-keys";
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&bt_host_wake>;
> > -
> > -               /*
> > -                * HACK: until we have an LPM driver, we'll use an
> > -                * ugly GPIO key to allow Bluetooth to wake from S3.
> > -                * This is expected to only be used by BT modules that
> > -                * use UART for comms.  For BT modules that talk over
> > -                * SDIO we should use a wakeup mechanism related to SDIO.
> > -                *
> > -                * Use KEY_RESERVED here since that will work as a wakeup but
> > -                * doesn't get reported to higher levels (so doesn't confuse
> > -                * Chrome).
> > -                */
> > -               bt-wake {
> > -                       label = "BT Wakeup";
> > -                       gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> > -                       linux,code = <KEY_RESERVED>;
> > -                       wakeup-source;
> > -               };
> > -
> > -       };
> >
> >         power_button: power-button {
> >                 compatible = "gpio-keys";
> > @@ -434,6 +410,13 @@
> >         /* Pins don't include flow control by default; add that in */
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> > +
> > +       bluetooth {
> > +               compatible = "brcm,bcm43540-bt";
>
> You probably need some pinctrl entries here to make sure that things
> are properly configured, like:
>
> pinctrl-names = "default";
> pinctrl-0 = <&bt_host_wake>, <&bt_dev_wake>, <&bt_enable>;
>
> This would require defining bt_dev_wake and bt_enable and removing the
> hacky output-only versions they have now.
>
>
> > +               host-wakeup-gpios       = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> > +               shutdown-gpios          = <&gpio4 RK_PD5 GPIO_ACTIVE_LOW>;
>
> Right now gpio4 RK_PD5 is controlled by the "sdio_pwrseq".  Should you
> remove it from there?  Looks like it was a no-op for marvell which
> makes it a little easier.
>
>
> > +               device-wakeup-gpios     = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
>
> You probably need to stop driving this in the pinctrl hogs for
> Broadcom boards...
>
>
> -Doug
