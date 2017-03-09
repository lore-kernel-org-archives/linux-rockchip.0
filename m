From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 3/4] phy: rockchip-typec: support DP phy switch
Date: Wed, 8 Mar 2017 19:10:50 -0800
Message-ID: <20170309031049.GA122422@google.com>
References: <1486712654-15431-1-git-send-email-zyw@rock-chips.com>
 <1486712654-15431-4-git-send-email-zyw@rock-chips.com>
 <20170309003921.GA101174@google.com> <11032198.PxydffNNDT@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <11032198.PxydffNNDT@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Mar 09, 2017 at 02:02:54AM +0100, Heiko Stuebner wrote:
> Am Mittwoch, 8. M=E4rz 2017, 16:39:23 CET schrieb Brian Norris:
> > On Fri, Feb 10, 2017 at 03:44:13PM +0800, Chris Zhong wrote:
> > > There are 2 Type-c PHYs in RK3399, but only one DP controller. Hence
> > > only one PHY can connect to DP controller at one time, the other shou=
ld
> > > be disconnected. The GRF_SOC_CON26 register has a switch bit to do it,
> > > set this bit means enable PHY 1, clear this bit means enable PHY 0.
> > > =

> > > Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > > ---
> > > =

> > >  drivers/phy/phy-rockchip-typec.c | 9 +++++++++
> > >  1 file changed, 9 insertions(+)
> > > =

> > > diff --git a/drivers/phy/phy-rockchip-typec.c
> > > b/drivers/phy/phy-rockchip-typec.c index 7cfb0f8..1604aaa 100644
> > > --- a/drivers/phy/phy-rockchip-typec.c
> > > +++ b/drivers/phy/phy-rockchip-typec.c

...

> > > @@ -869,6 +873,11 @@ static int tcphy_parse_dt(struct rockchip_typec_=
phy
> > > *tcphy,> =

> > >  	if (ret)
> > >  	=

> > >  		return ret;
> > > =

> > > +	ret =3D tcphy_get_param(dev, &cfg->uphy_dp_sel,
> > > +			      "rockchip,uphy-dp-sel");
> > > +	if (ret)
> > > +		return ret;
> > =

> > What about existing device trees? You're essentially adding this
> > new property and requiring it at the same time.
> > =

> > Or are we considering no RK3399 DP stable at the moment? I guess we
> > haven't actually merged any device trees that support this yet, no?
> =

> An interesting situation we're in here. On the one hand, you're right thi=
s =

> breaks "backwards compatiblity".
> =

> But on the other hand, the type-c phy is currently very much unused. The =
only =

> current board rk3399-evb.dts does not enable them (so they're disabled =

> everywhere) and we have neither dwc3 nor dp nodes in any rk3399 devicetre=
es so =

> far. Also Rob was ok with the binding change :-) .
> =

> So from my pov, I'd say it _should_ be ok, as nothing is using the phys a=
t all =

> yet and thus there is nothing that could get broken.

Yeah, I guess it's OK... but BTW out-of-tree DTs are perfectly
legit, once the bindings are accepted.

Another random point of contention (not worth too much, as the pattern
is already set), but why do these deserve DT properties at all? The
device already has a "rk3399" compatible property, so can't we derive
GRF offsets from that?

Brian
