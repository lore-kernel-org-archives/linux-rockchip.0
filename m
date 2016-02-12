From: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
Subject: Re: [GIT PULL] first bunch of rockchip clock changes for 4.6
Date: Fri, 12 Feb 2016 07:13:29 -0800
Message-ID: <20160212151329.1685.89663@quark.deferred.io>
References: <3862076.Cf1OAGsbuq@phil>
 <20160212021936.3210.79199@quark.deferred.io>
 <1494732.M6VqoIU5NQ@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1494732.M6VqoIU5NQ@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Quoting Heiko Stuebner (2016-02-12 03:39:43)
> Hi Mike,
> 
> Am Donnerstag, 11. Februar 2016, 18:19:36 schrieb Michael Turquette:
> > Quoting Heiko Stuebner (2016-02-11 05:00:02)
> > 
> > > Yakir Yang (1):
> > >       clk: rockchip: rk3036: enable the CLK_IGNORE_UNUSED flag for
> > >       hclk_vio_bus
> > 
> > Thanks for sending the very readable PR. One question below,
> > 
> > We'll likely have critical clock and handoff clock support merged in the
> > next few days. I'm starting to audit any new CLK_IGNORE_UNUSED flag
> > usage to see if it should use either of those two flags. Is the above
> > patch a candidate?
> 
> the above clock is part of the interconnect. We don't model that yet, but I 
> guess that would make it more a candidate for the handoff-type instead.
> 
> I'd guess for the Rockchip side, everything that is CLK_IGNORE_UNUSED should 
> be the handoff type (leaf-clocks used by some component we don't control 
> yet). 
> 
> The clocks we already register as critical most likely are the ones that 
> should be critical, as they are central clocks where it causes havok when 
> they get disabled :-) .

OK. It sounds like you might go back and clean up these clocks to use
the new infrastructure once it gets merged, so I'll go ahead and pull
this tag now.

Thanks,
Mike

> 
> 
> Heiko
