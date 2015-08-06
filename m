From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 3/3] ARM: rockchip: enable PMU_GPIOINT_WAKEUP_EN when
 entering shallow suspend
Date: Thu, 06 Aug 2015 13:10:55 +0200
Message-ID: <3564263.VnOXW7qXSg@diego>
References: <2128609.Kb18M8K28F@diego> <1544453.8uqOvAiDmD@diego>
 <CAD=FV=W0L_0iM+15BAUfTA2ij5Ac90aVW9JZYyDhHMDNT2ZUMg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=W0L_0iM+15BAUfTA2ij5Ac90aVW9JZYyDhHMDNT2ZUMg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 5. August 2015, 18:55:52 schrieb Doug Anderson:
> Heiko,
> =

> On Tue, Aug 4, 2015 at 3:51 PM, Heiko St=FCbner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> > PMU_GPIOINT_WAKEUP_EN seems needed when entering the shallow suspend
> > (with logic staying on) but does not seem to be needed for the deep
> > suspend for unknown reasons.
> > Testing revealed that this setting really is necessary to reliably
> > resume the veyron devices from suspend.
> > =

> > Reported-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> > ---
> > =

> >  arch/arm/mach-rockchip/pm.c | 9 ++++++---
> >  arch/arm/mach-rockchip/pm.h | 1 +
> >  2 files changed, 7 insertions(+), 3 deletions(-)
> =

> Very odd, but OK by me...

Hopefully we'll get an explaination from the ic-people soon-ish.


> Hopefully we'll eventually end up being
> able to use deep suspend on mainline.  That'd be nice, wouldn't it?

hehe ... yep, one of the big remaining projects :-)
