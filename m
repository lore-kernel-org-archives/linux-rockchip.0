From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] clk: add flag for clocks that need to be enabled on
 rate changes
Date: Mon, 12 Oct 2015 18:03:29 +0200
Message-ID: <37059102.QWiKhRxp8v@diego>
References: <1929669.AsgMSusdJb@phil> <20151008215840.GJ26883@codeaurora.org>
 <13378907.1JCOSf8QGs@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <13378907.1JCOSf8QGs@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 11. Oktober 2015, 12:41:09 schrieb Heiko St=FCbner:
> Hi Stephen,
> =

> Am Donnerstag, 8. Oktober 2015, 14:58:40 schrieb Stephen Boyd:
> > On 10/02, Heiko St=FCbner wrote:
> > > Hi,
> > > =

> > > any comment on these 3 patches?
> > =

> > Dong has a similar problem, but those patches conflate this with
> > enabling parent clocks during clk_disable_unused() which makes no
> > sense to me. So I'm ok with the requirement that we turn clocks
> > on to change rates, but I wonder if in this case we need to turn
> > on the clock that's changing rates itself, or if we just need to
> > turn on the parent and/or future parent of the clock during the
> > rate switch. Care to elaborate on that?
> =

> As you can see in the follow-up patches, the fractional dividers on Rockc=
hip
> SoCs are quite strange in that they even need to have their _downstream_
> mux point to them to actually accept rate changes.
> =

> The register value always reflects the value set by the system, but hardw=
are
> really only accepts it if the clock is enabled and even the downstream mux
> selects the fractional divider as parent (they call it a auto-gating
> feature).
> =

> So in the worst (and current) case, you end up with the register showing =
the
> right value, but the hardware can use completely different dividers from
> the previous setting.
> =

> That strange behaviour got quite deeply investigated between Rockchip and
> Google engineers who stumbled upon this in the first place, so I'm
> reasonably sure this is the right solution for that clock type :-) .

Xing Zheng now also independently stumbled upon this issue with his rk3036 =

work. And came to the same conclusion that the gate must be enabled as well=
 as =

the downstream mux be set to the fractional divider for it to actually acce=
pt =

a new setting.
