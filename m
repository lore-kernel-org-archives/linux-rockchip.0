From: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Mon, 13 Apr 2020 13:33:47 +0800
Message-ID: <CAGb2v64bcVLmQPxfAUafa-Grbr1MRCVb0j=HYUrXdihbmVB2Mw@mail.gmail.com>
References: <20200327030414.5903-2-wens@kernel.org>
 <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
 <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
 <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
 <20200406091313.GF31120@duo.ucw.cz>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200406091313.GF31120@duo.ucw.cz>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Pavel Machek <pavel@ucw.cz>
Cc: devicetree <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com, Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Pavel,

On Mon, Apr 6, 2020 at 5:13 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
> > > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > > diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
> > > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> > > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > > yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
> > > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> > >
> > > Maybe we should just get rid of linux,default-trigger then?
> >
> > In this particular case, I'd say it's probably time to reevaluate the rather
> > out-of-date binding. The apparent intent of the "linux,default-trigger"
> > property seems to be to describe any trigger supported by Linux, so either
> > the binding wants to be kept in sync with all the triggers Linux actually
> > supports, or perhaps it should just be redefined as a free-form
>
> It is enough to keep it in sync with all the triggers we actually use :-).
>
> > I'd be slightly inclined towards the latter, since the schema validator
> > can't know whether the given trigger actually corresponds to the correct
> > thing for whatever the LED is physically labelled on the board/case, nor
> > whether the version(s) of Linux that people intend to use actually support
> > that trigger (since it doesn't have to be the version contemporary with the
> > schema definition), so strict validation of this particular property seems
> > to be of limited value.
>
> But freeform seems acceptable, too.

I'd say free form is easier to manage. Being in the list of valid triggers
doesn't mean the kernel actually has support for it enabled.

> > > > > -             diy-led {
> > > > > +             diy_led: diy-led {
> > > > >                        label = "red:diy";
> > > > >                        gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> > > > >                        default-state = "off";
> > > > >                        linux,default-trigger = "mmc1";
> > > > >                };
>
> This label probably should be "mmc1:red:activity" or something like that.

Is changing this after it has been in some kernel releases OK? Wouldn't
it be considered a break of sysfs ABI?

Also, is there some guideline on how to name the labels? For sunxi we've
been doing "${vendor}:${color}:${function}" since forever.

As far as I can tell, the hardware vendor [1] has no specific uses for
these two (red and yellow) LEDs designed in. And their GPIO lines are
simply labeled "DIY" (for the red one) and "YELLOW". So I'm not sure
if putting "our" interpretations and the default-trigger into the
label is wise.

For reference, the green one has its GPIO line labeled "WORK", and their
intention from [1] is to have it as some sort of power / activity indicator.
Hence it is named / labeled "work".

As for the node names, I think we can keep it as is for now. It's not
the preferred form, but there's really no need to change it either.
And some overlay or script might actually expect that name.

Regards
ChenYu


[1] http://wiki.t-firefly.com/en/ROC-RK3399-PC/driver_led.html

> > > > > -             yellow-led {
> > > > > +             yellow_led: yellow-led {
> > > > >                        label = "yellow:yellow-led";
> > > > >                        gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> > > > >                        default-state = "off";
>
> And this label should be changed, too.
>
> Best regards,
>                                                                         Pavel
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
