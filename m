From: Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Date: Wed, 13 Nov 2019 10:40:17 +0100
Message-ID: <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel-RPVEmwYF7IOGWTQfUlqXWgC/G2K4zDHf@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "Vaittinen, Matti" <Matti.Vaittinen-RPVEmwYF7IOGWTQfUlqXWgC/G2K4zDHf@public.gmane.org>
Cc: "andrew-g2DYL2Zd6BY@public.gmane.org" <andrew-g2DYL2Zd6BY@public.gmane.org>, "alexandre.belloni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org" <alexandre.belloni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org" <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, "narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org" <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, "patrice.chotard-qxv4g6HH51o@public.gmane.org" <patrice.chotard-qxv4g6HH51o@public.gmane.org>, "paul-icTtO2rgO2OTuSrc4Mpeew@public.gmane.org" <paul-icTtO2rgO2OTuSrc4Mpeew@public.gmane.org>, "eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org" <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org" <linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org>, "jason-NLaQJdtUoK4Be96aLqz0jA@public.gmane.org" <jason-NLaQJdtUoK4Be96aLqz0jA@public.gmane.org>, "f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org" <f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "lkp-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <lkp-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "gregory.clement-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org" <gregory.clement-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "ludovic.desroches-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org" <ludovic.desroches-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "wens-jdAy2FN1RRM@public.gmane.org" <wens-jdAy2FN1RRM@public.gmane.org>, "agross-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <agross-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, bcm-kern
List-Id: linux-rockchip.vger.kernel.org

On Wed, Nov 13, 2019 at 7:52 AM Vaittinen, Matti
<Matti.Vaittinen-RPVEmwYF7IOGWTQfUlqXWgC/G2K4zDHf@public.gmane.org> wrote:
> On Wed, 2019-11-13 at 14:30 +0800, kbuild test robot wrote:
> > Hi Matti,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c]
> >
>
> >    480        static int wmt_gpio_get_direction(struct gpio_chip
> > *chip, unsigned offset)
> >    481        {
> >    482                struct wmt_pinctrl_data *data =
> > gpiochip_get_data(chip);
> >    483                u32 bank = WMT_BANK_FROM_PIN(offset);
> >    484                u32 bit = WMT_BIT_FROM_PIN(offset);
> >    485                u32 reg_dir = data->banks[bank].reg_dir;
> >    486                u32 val;
> >    487
> >    488                val = readl_relaxed(data->base + reg_dir);
> >    489                if (val & BIT(bit))
> >  > 490                        GPIO_LINE_DIRECTION_OUT;
>
> Right. Return is missing. I think I already fixed this - I guess I sent
> wrong version... Sorry guys. I'll do v3 with only this return added -
> and I'll send it to limited amount of recipients as I think most of you
> guys may not be interested. Probably to Linus W, Geert and GPIO list
> only. Let me know if you want to see the v3 (or other subsequent
> patches)

I think I already merged it, just send a new patch on top fixing the
problem.

Yours,
Linus Walleij
