From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Date: Wed, 13 Nov 2019 18:18:11 +0100
Message-ID: <CACRpkdZy73oFmHcjGuxCCYD0kxWuAi4xp9s+fHVLcGXwPzc5TQ@mail.gmail.com>
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
 <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
 <b67faf875fd0060ad36db04b29c109f01e58ab1a.camel@fi.rohmeurope.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <b67faf875fd0060ad36db04b29c109f01e58ab1a.camel@fi.rohmeurope.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>, "heiko@sntech.de" <heiko@sntech.de>, "geert+renesas@glider.be" <geert+renesas@glider.be>, "narmstrong@baylibre.com" <narmstrong@baylibre.com>, "patrice.chotard@st.com" <patrice.chotard@st.com>, "paul@crapouillou.net" <paul@crapouillou.net>, "eric@anholt.net" <eric@anholt.net>, "linux-stm32@st-md-mailman.stormreply.com" <linux-stm32@st-md-mailman.stormreply.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "lkp@intel.com" <lkp@intel.com>, "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>, "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>, bcm-kern
List-Id: linux-rockchip.vger.kernel.org

On Wed, Nov 13, 2019 at 11:06 AM Vaittinen, Matti
<Matti.Vaittinen@fi.rohmeurope.com> wrote:
> On Wed, 2019-11-13 at 10:40 +0100, Linus Walleij wrote:

> > I think I already merged it, just send a new patch on top fixing the
> > problem.
>
> Hmm. Are you sure you did merge the pincontrol part already?

No I confused it for the GPIO part. Sorry!

Please keep iterarating this patch.

Yours,
Linus Walleij
