From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 3/4] phy: rockchip-typec: support DP phy switch
Date: Thu, 9 Mar 2017 15:35:06 -0800
Message-ID: <20170309233505.GA18026@google.com>
References: <1486712654-15431-1-git-send-email-zyw@rock-chips.com>
 <11032198.PxydffNNDT@diego> <20170309031049.GA122422@google.com>
 <1626236.28xlsfuSeg@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1626236.28xlsfuSeg@diego>
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
Cc: robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Mar 09, 2017 at 09:31:33AM +0100, Heiko Stuebner wrote:
> Am Mittwoch, 8. M=E4rz 2017, 19:10:50 CET schrieb Brian Norris:
> > Another random point of contention (not worth too much, as the pattern
> > is already set), but why do these deserve DT properties at all? The
> > device already has a "rk3399" compatible property, so can't we derive
> > GRF offsets from that?
> =

> I'm definitly with you in this regard.
> =

> But it seems like there is some sort of current trend of moving more stuf=
f =

> into the dt again. I vaguely remember phy and (or) dt-maintainers preferr=
ing =

> to have these definitions in the dt for the typec-phy.

Hmm, not sure I understand that one. You're just going to multiply the
variations of DT props you have to support, instead of simply
multiplying a (non-ABI) table within the driver. The latter seems much
more stable. Oh well, not my subsystem.

> See also the recent mail from Olof concerning the grf initialization and =
maybe =

> not having per-soc definitions in the driver, where I'm trying to keep th=
ings =

> out of the dt a bit more strongly :-) .

Thanks for the pointer. I looked up (and replied to) that one.

Either I don't understand exactly what he's saying or... I'd like to
know what he's smoking. You can't just wish away the fact that the GRF
is truly a "general register file" and will change forever (and so will
our understanding of how to use it). Kernels always need to update for
new chipsets. Device Tree Bindings Are Forever (TM).

Now let's see if Olof reads my reply which points back to this
thread...and now to the above comment :)

> So yes, personally I would definitly prefer not having to much GRF-stuff =
leak =

> into the dt. Simply because the GRF has always been very unstable over ti=
me =

> [=3Dyou always find one more bit that needs tuning] and to not cause thin=
gs like =

> the above. But as you said I guess we're to late for the typec-phy.

I'm with you.

Brian
