From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [PATCH v4 1/2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Fri, 21 Oct 2016 08:47:46 +0200 (CEST)
Message-ID: <alpine.DEB.2.20.1610210846140.4797@nanos>
References: <1476998490-4481-1-git-send-email-dianders@chromium.org>
 <alpine.DEB.2.20.1610202326070.4938@nanos>
 <CAD=FV=W4qSXHywGNEg6tOq8WiC7cROME4g3SwTxkD7h7=NsvvQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=W4qSXHywGNEg6tOq8WiC7cROME4g3SwTxkD7h7=NsvvQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
Cc: =?ISO-2022-JP?Q?=1B$B2+Es=1B=28J?= <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?ISO-8859-15?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tony Xie <tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Daniel Kurtz <djkurtz-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Akihiro Tsukada <tskd08-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 20 Oct 2016, Doug Anderson wrote:
> On Thu, Oct 20, 2016 at 2:27 PM, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org> wrote:
> > On Thu, 20 Oct 2016, Douglas Anderson wrote:
> >
> > Please wait for a full review and do not send out patches 5 seconds after
> > the first mail hits your inbox.
> 
> Since you had previously commented on patch 1 and had already
> commented on patch 2, I presumed you were done reviewing, but I was
> obviously in error.  My apologies.

No problem. As a general rule you should not send updates like a machine
gun. That issue is years old, so there is no rush to fix it just because
some random (probably out of tree) code trips over it.

Thanks,

	tglx
