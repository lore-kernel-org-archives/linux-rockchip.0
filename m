From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Date: Fri, 06 Dec 2019 17:01:58 +0100
Message-ID: <1601413.9zADmrJRdp@phil>
References: <20191206154247.28057-1-miquel.raynal@bootlin.com>
 <3285991.EbEXlA3CnX@phil> <20191206165250.5877dec8@xps13>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191206165250.5877dec8@xps13>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 6. Dezember 2019, 16:52:50 CET schrieb Miquel Raynal:
> Hi Heiko,
> =

> Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote on Fri, 06 Dec 2019 16:48:00
> +0100:
> =

> > Hi Miquel,
> > =

> > Am Freitag, 6. Dezember 2019, 16:42:47 CET schrieb Miquel Raynal:
> > > PMIC interrupt can be active high or active low depending on BIT(1) of
> > > the GPIO_INT_CFG pin. The default is 0x1, which means active
> > > high. Change the polarity in the device tree to reflect the default
> > > state.
> > > =

> > > Without this and with the current code base, the interrupt never stops
> > > triggering while the MFD driver does not see anything to
> > > check/clear/mask so after 100000 spurious IRQs, the kernel simply
> > > desactivates the interrupt:
> > > =

> > >         irq 36: nobody cared (try booting with the "irqpoll" option)
> > >         [...]
> > >         handlers:
> > >         [<(____ptrval____)>] irq_default_primary_handler threaded
> > > 	[<(____ptrval____)>] regmap_irq_thread
> > >         Disabling IRQ #36
> > > =

> > > Signed-off-by: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>  =

> > =

> > *coughs slightly*
> > =

> > mfd: rk808: Set RK817 interrupt polarity to low
> > https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/commit/driv=
ers/mfd/rk808.c?h=3Dfor-mfd-next&id=3Ddbd16ef53487084816a20f662423ab543a75f=
c83
> > =

> > Should be in the current merge window already I guess ;-)
> =

> This time I swear I checked your tree. But this time we did not ended
> with the same fix so I missed this one *again* :)

No worries ... I guess I should check where I hid additional patches ;-)

So right now px30 stuff is in the trees:
- mine
- mfd
- phy (first round of dsi phy, refinement pending on the list)
- nvmem (for the otp controller)
- drm (drm/rockchip: vop: add the definition of dclk_pol)
- clk

and pending on lists:
- drm (dsi support + timings)
- phy (refinement as mentioned above)

not submitted yet but planning to get this done this weekend:
- panel driver for px30-evb
- dsi devicetree stuff


Hope this helps a bit to prevent more double work ;-)
Heiko

> =

> > =

> > Having this consistent over all rk8xx seemed nicer.
> =

> I'm fine with this approach too.
> =

> Thanks,
> Miqu=E8l
