From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Wed, 3 Apr 2019 10:55:22 -0700
Message-ID: <CA+ASDXMpk=QsTxeAmL-Eir242HC2fzbi8ENACMi3H27o63KOGA@mail.gmail.com>
References: <20190403160526.257088-1-dianders@chromium.org>
 <CA+ASDXN-4Ya6cK5wsmARXxP0bJCGpMkoyu1t_fS7hqVFKF0ZBw@mail.gmail.com>
 <CAD=FV=UZCUp=Tq4DhKGJQm7bPvvM1Q=EUovWeBdoHVvQeu4eUA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=UZCUp=Tq4DhKGJQm7bPvvM1Q=EUovWeBdoHVvQeu4eUA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
Cc: Randall Spangler <rspangler-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Linux Kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ryan Case <ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Benson Leung <bleung-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 3, 2019 at 10:49 AM Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> On Wed, Apr 3, 2019 at 10:04 AM Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> > Does anybody know what the definition of "too long" is for the phrase
> > "Don't queue works which can run for too long" in the documentation?
...
> So I think the summary is that I'm back to being convinced that the
> "system_highpri_wq" should be OK.

Makes sense.

> > > +       wait_for_completion(&params.completion);
> >
> > I think flush_workqueue() was discussed and rejected, but what about
> > flush_work()? Then you don't have to worry about the rest of the
> > contents of the workqueue -- just your own work--and I think you could
> > avoid the 'completion'.
...
> Thanks, I'll do that in v3 assuming someone doesn't convince me to
> switch back to a private workqueue.

You can do flush_work() in either case :) Then, if for some reason you
start queueing up other work on your private workqueue, you still
won't have to worry about inter-'work' dependencies.

Brian
