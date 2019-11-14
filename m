From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron
Date: Thu, 14 Nov 2019 09:18:19 -0800
Message-ID: <CAD=FV=Vkto_n2sBSJSvDhoA3scdeW+OROP4geyUrhjnvn6meMQ@mail.gmail.com>
References: <20191112004700.185304-1-abhishekpandit@chromium.org> <3639233.d3cbfcQTlM@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3639233.d3cbfcQTlM@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, linux-bluetooth@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Nov 14, 2019 at 5:45 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Dienstag, 12. November 2019, 01:47:00 CET schrieb Abhishek Pandit-Subedi:
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> > - CONFIG_BT_HCIUART_BCM
> > - CONFIG_SERIAL_DEV
> >
> > This is applicable to rk3288-veyron series boards that use the bcm43540
> > wifi+bt chips.
> >
> > As part of this change, also refactor the pinctrl across the various
> > boards. All the boards using broadcom bluetooth shouldn't touch the
> > bt_dev_wake pin.
> >
> > Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
>
> looks good to me
> @dianders: does this look ok to you too?

Yes, but it's not ready to land yet.  Specifically the bindings are
still being discussed [1].  Abhishek: you should probably add
information about the fact that the bindings need to land first to
your Commit-notes.  When the bindings land I'm happy to add my
Reviewed-by.

For history, +Matthias and I both did an early review of this [2].
Compared to that version the only diffs here (other than merge
conflicts) are:

-               pcm-parameters          = [01 02 00 01 01 00 00 00 00 00];

+
+               brcm,bt-sco-routing     = [01];
+               brcm,pcm-interface-rate = [02];
+               brcm,pcm-sync-mode      = [01];
+               brcm,pcm-clock-mode     = [01];


> Just to confirm, I guess mickey and brain do not have the suspend_l pin
> settings? [They only seem to get the default pinctrl state but not the
> sleep state in @pinctrl]

The suspend_l pin just goes to the EC and lets the EC know that we're
in suspend.  I know for sure mickey has no EC.  I'd believe the same
to be true of brain, though perhaps you and +Alexandru are the only
two people with working brains?  I know I don't have one, as can be
evidenced by some of the stupid things I do.  :-P  I would also note
that this CL doesn't change whether or not mickey/brain control
suspend_l.  They used to inherit from 'rk3288-veyron.dtsi' which
didn't define it.

[1] https://lore.kernel.org/r/20191112230944.48716-5-abhishekpandit@chromium.org
[2] https://crrev.com/c/1772261

-Doug
