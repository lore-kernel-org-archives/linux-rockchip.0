From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: Boundary between pinctrl and peripheral settings
Date: Thu, 18 May 2017 16:21:09 +0800
Message-ID: <2f1d45cb-8869-94fc-98b1-952d0f12d343@rock-chips.com>
References: <1719598.F3JUalFtig@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1719598.F3JUalFtig@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, =?UTF-8?B?5ZC06L6+6LaF?= <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko, Linus,


     Is there any news to handle this kind of IOMUX?


Thanks,
- Kever
On 08/05/2016 07:36 AM, Heiko St=FCbner wrote:
> Hi Linus,
>
>
> on the rk3399 we found an interesting new feature and would like to get s=
ome
> input from the pinctrl expert :-) , as Doug and me currently are of
> differing opinions on where specific control elements belong.
>
>
> In a nutshell on the rk3399 some things like one specific uart can use
> multiple pins to output data, but control of that seems to be split. The
> actual pin config is identical for all pins - each needs to be configured=
 to
> function 2, pulls set etc. Then somewhere between the pin io-cells and the
> uart it seems to have some sort of switch to decide to which pin to actua=
lly
> route the data.
>
>
> +-------+    +--------+  /- GPIO4_B1 (pinmux 2)
> | uart2 | -- | switch | --- GPIO4_C1 (pinmux 2)
> +-------+    +--------+  \- GPIO4_C4 (pinmux 2)
> (switch selects one of the 3 pins to actually output data to)
>
>
> So the question now is, should the pinctrl driver also flip that switch to
> the correct position itself when pin-function 2 of say gpio4_bq gets
> selected or is that routing outside of pinctrl's scope?
>
> -----
>
> I hope to have presented the core issue above somewhat neutrally, below a=
re
> my personal worries about doing that in pinctrl :-) .
>
>
> Apart from it feeling "bolted-on" to me, I have two main worries with that
> approach:
> (1) Right now the unused pins are really unused on the same iomux, so when
> flipping the switch it essentially does
>
>   uart-sout    unused
>    |(iomux2)    |(iomux2)
>    |            |
> +----------+ +----------+
> | gpio4_b0 | | gpio4_c0 |
> +----------+ +----------+
>
> going to
>
>   unused       uart-sout
>    |(iomux2)    |(iomux2)
>    |            |
> +----------+ +----------+
> | gpio4_b0 | | gpio4_c0 |
> +----------+ +----------+
>
> but nothing keeps designers from doing
>
>   uart-sout    special1
>    |(iomux2)    |(iomux2)
>    |            |
> +----------+ +----------+
> | gpio4_b0 | | gpio4_c0 |
> +----------+ +----------+
>
> going to
>
>   special2     uart-sout
>    |(iomux2)    |(iomux2)
>    |            |
> +----------+ +----------+
> | gpio4_b0 | | gpio4_c0 |
> +----------+ +----------+
>
> somewhere down the road, so relying on following the selected iomux feels
> not future proof.
>
> (2) Looking at [0] we already have a similar case, where we configure the
> pins for rgmii but still tell the gmac controller that it is supposed to =
do
> rgmii instead of rmii.
>
> Here the pinmux is the same for all pins, rmii just uses less pins when
> compared to rgmii, so binding that to the pinmux isn't even possible.
>
> And doing it one way here and another way for the switch feels very stran=
ge.
>
>
> I hope this overly long mail was not to confusing and hope for some words=
 of
> wisdom ;-)
>
>
> Big thanks
> Heiko
>
>
> [0]
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/arch=
/arm/boot/dts/rk3288-miqi.dts#n139
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
>
