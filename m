From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Wed, 3 Apr 2019 10:49:15 -0700
Message-ID: <CAD=FV=UZCUp=Tq4DhKGJQm7bPvvM1Q=EUovWeBdoHVvQeu4eUA@mail.gmail.com>
References: <20190403160526.257088-1-dianders@chromium.org> <CA+ASDXN-4Ya6cK5wsmARXxP0bJCGpMkoyu1t_fS7hqVFKF0ZBw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+ASDXN-4Ya6cK5wsmARXxP0bJCGpMkoyu1t_fS7hqVFKF0ZBw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>, Randall Spangler <rspangler@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Apr 3, 2019 at 10:04 AM Brian Norris <briannorris@chromium.org> wrote:
>
> I know some of this was hashed out last night, but I wasn't reading my
> email then to interject ;)
>
> On Wed, Apr 3, 2019 at 9:05 AM Douglas Anderson <dianders@chromium.org> wrote:
> > +static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
> > +                                struct cros_ec_command *ec_msg,
> > +                                cros_ec_xfer_fn_t fn)
> > +{
> > +       struct cros_ec_xfer_work_params params;
> > +
> > +       INIT_WORK(&params.work, cros_ec_xfer_high_pri_work);
> > +       params.ec_dev = ec_dev;
> > +       params.ec_msg = ec_msg;
> > +       params.fn = fn;
> > +       init_completion(&params.completion);
> > +
> > +       /*
> > +        * This looks a bit ridiculous.  Why do the work on a
> > +        * different thread if we're just going to block waiting for
> > +        * the thread to finish?  The key here is that the thread is
> > +        * running at high priority but the calling context might not
> > +        * be.  We need to be at high priority to avoid getting
> > +        * context switched out for too long and the EC giving up on
> > +        * the transfer.
> > +        */
> > +       queue_work(system_highpri_wq, &params.work);
>
> Does anybody know what the definition of "too long" is for the phrase
> "Don't queue works which can run for too long" in the documentation?

Using the docs that Matthias pointed at:

https://www.kernel.org/doc/html/v5.0/core-api/workqueue.html

...take a look at the "Example Execution Scenarios".  They show tasks
that burn CPU cycles for 5 ms and this seems to be illustrating tasks
that workqueues are designed for.  That makes me feel like 5 ms is not
too long.

I don't think we'll be running for that long in our case.  While a few
tegra device trees have a big delay of 2000 for
"google,cros-ec-spi-msg-delay", I've always been of the opinion that
delay was added to work around other bugs and is probably not really
needed, so if somehow this regresses performance there we could try
tuning that down.  ...but even in that case we're only delaying for
2000 us = 2ms.  The "google,cros-ec-spi-pre-delay" on rk3288-veyron
chromebooks is 30 us.  There are some other delays hardcoded in the
driver but those are all expressed in terms of nanoseconds.

It looks like in the extreme case, though, we still could end up
having our work take 200 ms for completion as per the comments in
"EC_MSG_DEADLINE_MS".  IIRC this is a super uncommon case and only
happened on a few systems when the battery was in a particularly wonky
state and decided to do clock stretching.  Also: we shouldn't even be
busy-waiting during this time since most of it will be sitting
(presumably blocked) waiting for SPI bytes to come in.


So I think the summary is that I'm back to being convinced that the
"system_highpri_wq" should be OK.  Running lots of work with no
blocking in the system high priority workqueue can truly block other
work items there, but it seems like the amount of time we're running
is within the time bounds expected.  The work also isn't going to
fully block other workers--they will be able to run on other CPUs
still and (if they are already running) presumably they can still be
scheduled back in.


> > +       wait_for_completion(&params.completion);
>
> I think flush_workqueue() was discussed and rejected, but what about
> flush_work()? Then you don't have to worry about the rest of the
> contents of the workqueue -- just your own work--and I think you could
> avoid the 'completion'.
>
> You might also have a tiny race in the current implementation, since
> (a) you can't queue the same work item twice and
> (b) technically, the complete() call is still while the work item is
> running -- you don't really guarantee the work item has finished
> before you continue.
> So the combination of (a) and (b) means that moving from one xfer to
> the next, you might not successfully queue your work at all. You could
> probably test this by checking the return value of queue_work() under
> a heavy EC workload. Avoiding the completion would also avoid this
> race.

Thanks, I'll do that in v3 assuming someone doesn't convince me to
switch back to a private workqueue.

-Doug
