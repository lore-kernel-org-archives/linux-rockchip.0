From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Date: Wed, 13 Nov 2019 09:53:29 +0000
Message-ID: <dbe9aee7fba2b1745cb09c8aa998c875f38b0f36.camel@fi.rohmeurope.com>
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
 <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
Content-Language: de-DE
Content-ID: <8D9C4E9DDE4F5A4F822964BEFBCFD58A@de.rohmeurope.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>, "heiko@sntech.de" <heiko@sntech.de>, "geert+renesas@glider.be" <geert+renesas@glider.be>, "narmstrong@baylibre.com" <narmstrong@baylibre.com>, "patrice.chotard@st.com" <patrice.chotard@st.com>, "paul@crapouillou.net" <paul@crapouillou.net>, "eric@anholt.net" <eric@anholt.net>, "linux-stm32@st-md-mailman.stormreply.com" <linux-stm32@st-md-mailman.stormreply.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "lkp@intel.com" <lkp@intel.com>, "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>, "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>, bcm-kern
List-Id: linux-rockchip.vger.kernel.org

Hello Linus,

On Wed, 2019-11-13 at 10:40 +0100, Linus Walleij wrote:
> On Wed, Nov 13, 2019 at 7:52 AM Vaittinen, Matti
> <Matti.Vaittinen@fi.rohmeurope.com> wrote:
> > On Wed, 2019-11-13 at 14:30 +0800, kbuild test robot wrote:
> > > Hi Matti,
> > > 
> > > Thank you for the patch! Perhaps something to improve:
> > > 
> > > [auto build test WARNING on
> > > 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c]
> > > 
> > >    480        static int wmt_gpio_get_direction(struct gpio_chip
> > > *chip, unsigned offset)
> > >    481        {
> > >    482                struct wmt_pinctrl_data *data =
> > > gpiochip_get_data(chip);
> > >    483                u32 bank = WMT_BANK_FROM_PIN(offset);
> > >    484                u32 bit = WMT_BIT_FROM_PIN(offset);
> > >    485                u32 reg_dir = data->banks[bank].reg_dir;
> > >    486                u32 val;
> > >    487
> > >    488                val = readl_relaxed(data->base + reg_dir);
> > >    489                if (val & BIT(bit))
> > >  > 490                        GPIO_LINE_DIRECTION_OUT;
> > 
> > Right. Return is missing. I think I already fixed this - I guess I
> > sent
> > wrong version... Sorry guys. I'll do v3 with only this return added

It appears I didn't send wrong patch. The whole wmt was left uncompiled
as the folder was excluded from my build by arch and I didn't spot
that. So I'll humbly raise my arm as a sign of an error ;)

> > -
> > and I'll send it to limited amount of recipients as I think most of
> > you
> > guys may not be interested. Probably to Linus W, Geert and GPIO
> > list
> > only. Let me know if you want to see the v3 (or other subsequent
> > patches)
> 
> I think I already merged it, just send a new patch on top fixing the
> problem.

Hmmm. I don't think I received notification about the patch being
applied... But in that case, please ignore v2 I sent some time ago -
I'll do a fix patch on top of the already applied one then. I'll send
it out soon(ish).

Br,
	Matti
