From: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: leds: common: Drop enumeration for linux,default-triggers
Date: Mon, 27 Apr 2020 17:21:39 +0800
Message-ID: <CAGb2v645WU9mFeB83DvJcbfJ0xJswb3gq0NJLXwkVnPz8kcYNQ@mail.gmail.com>
References: <20200427073132.29997-2-wens@kernel.org> <4044214d-5385-94b6-d985-e1f824a60c5e@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-leds-owner@vger.kernel.org>
In-Reply-To: <4044214d-5385-94b6-d985-e1f824a60c5e@gmail.com>
Sender: linux-leds-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Chen-Yu Tsai <wens@kernel.org>, devicetree <devicetree@vger.kernel.org>, dmurphy@ti.com, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, jacek.anaszewski@gmail.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-leds@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Apr 27, 2020 at 4:33 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu,
>
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > The bindings currently list a very small subset of valid triggers for
> > LEDs. Since many drivers or subsystems in Linux register custom
> > triggers, the list would become very hard to maintain.
> >
> > Instead, just drop the list and allow free form strings.
> >
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  .../devicetree/bindings/leds/common.yaml      | 21 +------------------
> >  1 file changed, 1 insertion(+), 20 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
> > index 4c270fde4567..3b3cdab3fc15 100644
> > --- a/Documentation/devicetree/bindings/leds/common.yaml
> > +++ b/Documentation/devicetree/bindings/leds/common.yaml
> > @@ -79,26 +79,7 @@ properties:
> >      description:
> >        This parameter, if present, is a string defining the trigger assigned to
> >        the LED.
> > -    allOf:
> > -      - $ref: /schemas/types.yaml#definitions/string
> > -    enum:
> > -        # LED will act as a back-light, controlled by the framebuffer system
> > -      - backlight
> > -        # LED will turn on (but for leds-gpio see "default-state" property in
> > -        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
> > -      - default-on
> > -        # LED "double" flashes at a load average based rate
> > -      - heartbeat
> > -        # LED indicates disk activity
> > -      - disk-activity
> > -        # LED indicates IDE disk activity (deprecated), in new implementations
> > -        # use "disk-activity"
> > -      - ide-disk
> > -        # LED flashes at a fixed, configurable rate
> > -      - timer
> > -        # LED alters the brightness for the specified duration with one software
> > -        # timer (requires "led-pattern" property)
> > -      - pattern
> > +    $ref: /schemas/types.yaml#definitions/string
>
> This makes it free form, but deletes the documentation of options that
> are standard available for people without custom driver.
> Where should that info go?

As far as I know, there is no canonical list of standard triggers.
In addition, what triggers are available also depend on the kernel
configuration, so there really is no "standard".

Since this is also configurable via sysfs, maybe it should be part
of the sysfs ABI document? Either way I believe this will be up to
the LED subsystem maintainers.

ChenYu

> >
> >    led-pattern:
> >      description: |
> > --
> > 2.26.0
>
