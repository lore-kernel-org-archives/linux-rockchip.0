From: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Subject: Re: [PATCH 03/22] clocksource/drivers/rockchip: Make the driver more
 compatible
Date: Mon, 02 Nov 2015 22:44:56 +0100
Message-ID: <26365416.grsdrqtSNb@wuerfel>
References: <1446469011-22710-1-git-send-email-daniel.lezcano@linaro.org>
 <5093304.EN6Bc2EjLr@wuerfel> <56379016.1080601@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <56379016.1080601-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Monday 02 November 2015 17:32:22 Daniel Lezcano wrote:
> On 11/02/2015 04:33 PM, Arnd Bergmann wrote:
> > On Monday 02 November 2015 13:56:31 Daniel Lezcano wrote:
> >>   static inline void rk_timer_disable(struct clock_event_device *ce)
> >>   {
> >>          writel_relaxed(TIMER_DISABLE, rk_base(ce) + TIMER_CONTROL_REG);
> >> -       dsb();
> >> +       dsb(sy);
> >>   }
> >>
> >>   static inline void rk_timer_enable(struct clock_event_device *ce, u32 flags)
> >>   {
> >>          writel_relaxed(TIMER_ENABLE | TIMER_INT_UNMASK | flags,
> >>                         rk_base(ce) + TIMER_CONTROL_REG);
> >> -       dsb();
> >> +       dsb(sy);
> >>   }
> >>
> >>
> >
> > This will fail the compile test, because dsb() is not available on non-ARM
> > architectures. Would it be enough to just use the normal writel() accessor
> > here?
> 
> That's a good question and I believe we can remove it but I have to 
> setup a rockchip board before doing the changes in order to test.
> 
> I the meantime added the COMPILE_TEST option but restricted it to ARM 
> and ARM64.
> 

Ok. I saw that addition after commenting here, it looks correct this
way, I was just slightly confused by seeing patch 2 first and thought
it was for the same driver.

In general, it would of course be best to allow all drivers to be built
on x86, but your series is already a huge improvement as it is.

	Arnd
