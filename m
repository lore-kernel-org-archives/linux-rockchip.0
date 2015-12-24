From: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v2 0/5] clk: rockchip: fix handling of fractional dividers
Date: Wed, 23 Dec 2015 16:11:38 -0800
Message-ID: <20151224001138.GA5927@quark.deferred.io>
References: <1450819682-4932-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1450819682-4932-1-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
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
Cc: sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 12/22, Heiko Stuebner wrote:
> Essentially unchanged from the first iteration from back in august, just
> including additional patches depending on that and fixing fractional
> dividers on the rk3036 and spdif parent settings.
> 
> In v1, Stephen seemed essentially ok with it but Mike put forward his wish
> to use his planned approach for connected clocks for handling this.
> 
> While that in itself will be very interesting also for handling Rockchip's
> armclk generically, we're now in the situation that everything related
> to audio output relies on working fractional dividers to produce the
> needed clock frequencies, making audio-output essentially non-working on
> all Rockchip socs in mainline at the moment.
> 
> So I'm somewhat hoping for some sort of intermediate solution here :-)

Intermediate solution applied.

Regards,
Mike

> 
> 
> changes in v2:
> - rebase original 3 patches onto 4.4
> - add the 2 new patches from other series, that need that change
> 
> Heiko Stuebner (3):
>   clk: add flag for clocks that need to be enabled on rate changes
>   clk: rockchip: handle mux dependency of fractional dividers
>   clk: rockchip: include downstream muxes into fractional dividers
> 
> Sjoerd Simons (1):
>   clk: rockchip: Allow the RK3288 SPDIF clocks to change their parent
> 
> Xing Zheng (1):
>   clk: rockchip: rk3036: include downstream muxes into fractional
>     dividers
> 
>  drivers/clk/clk.c                 |  18 +++++
>  drivers/clk/rockchip/clk-rk3036.c |  34 +++++-----
>  drivers/clk/rockchip/clk-rk3188.c |  80 +++++++++++-----------
>  drivers/clk/rockchip/clk-rk3288.c |  70 +++++++++----------
>  drivers/clk/rockchip/clk.c        | 137 ++++++++++++++++++++++++++++++++++----
>  drivers/clk/rockchip/clk.h        |  19 ++++++
>  include/linux/clk-provider.h      |   1 +
>  7 files changed, 254 insertions(+), 105 deletions(-)
> 
> -- 
> 2.6.4
> 
