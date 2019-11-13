From: "Vaittinen, Matti" <Matti.Vaittinen-RPVEmwYF7IOGWTQfUlqXWgC/G2K4zDHf@public.gmane.org>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Date: Wed, 13 Nov 2019 10:06:29 +0000
Message-ID: <b67faf875fd0060ad36db04b29c109f01e58ab1a.camel@fi.rohmeurope.com>
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
 <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: de-DE
Content-ID: <754252B81D9D734D9DE00A1EDD014380-ZvwJ6nIKRrKGWTQfUlqXWgC/G2K4zDHf@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org" <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: "andrew-g2DYL2Zd6BY@public.gmane.org" <andrew-g2DYL2Zd6BY@public.gmane.org>, "alexandre.belloni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org" <alexandre.belloni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org" <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, "narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org" <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, "patrice.chotard-qxv4g6HH51o@public.gmane.org" <patrice.chotard-qxv4g6HH51o@public.gmane.org>, "paul-icTtO2rgO2OTuSrc4Mpeew@public.gmane.org" <paul-icTtO2rgO2OTuSrc4Mpeew@public.gmane.org>, "eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org" <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org" <linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org>, "jason-NLaQJdtUoK4Be96aLqz0jA@public.gmane.org" <jason-NLaQJdtUoK4Be96aLqz0jA@public.gmane.org>, "f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org" <f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "lkp-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <lkp-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "gregory.clement-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org" <gregory.clement-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "ludovic.desroches-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org" <ludovic.desroches-UWL1GkI3JZL3oGB3hsPCZA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "wens-jdAy2FN1RRM@public.gmane.org" <wens-jdAy2FN1RRM@public.gmane.org>, "agross-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <agross-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, bcm-kern
List-Id: linux-rockchip.vger.kernel.org


On Wed, 2019-11-13 at 10:40 +0100, Linus Walleij wrote:
> On Wed, Nov 13, 2019 at 7:52 AM Vaittinen, Matti
> <Matti.Vaittinen-RPVEmwYF7IOGWTQfUlqXWgC/G2K4zDHf@public.gmane.org> wrote:
> > On Wed, 2019-11-13 at 14:30 +0800, kbuild test robot wrote:
> > Right. Return is missing. I think I already fixed this - I guess I
> > sent
> > wrong version... Sorry guys. I'll do v3 with only this return added
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

Hmm. Are you sure you did merge the pincontrol part already? I don't
see it in your GPIO tree, devel or for-next branches. Can you please
point me the branch - I already destroyed my original pincontrol commit
which had the bug when I created the v2.

Br,
	Matti Vaittinen
