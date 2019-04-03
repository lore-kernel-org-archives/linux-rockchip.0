From: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Wed, 3 Apr 2019 11:14:15 -0700
Message-ID: <20190403181415.GQ112750@google.com>
References: <20190403160526.257088-1-dianders@chromium.org>
 <CA+ASDXN-4Ya6cK5wsmARXxP0bJCGpMkoyu1t_fS7hqVFKF0ZBw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CA+ASDXN-4Ya6cK5wsmARXxP0bJCGpMkoyu1t_fS7hqVFKF0ZBw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, ryandcase@chromium.org, rspangler@chromium.org, Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 03, 2019 at 10:04:16AM -0700, Brian Norris wrote:
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
> 
> > +       wait_for_completion(&params.completion);
> 
> I think flush_workqueue() was discussed and rejected, but what about
> flush_work()? Then you don't have to worry about the rest of the
> contents of the workqueue -- just your own work--and I think you could
> avoid the 'completion'.

Indeed, flush_work() seems the right thing to do.

I thought to remember that there is a function to wait for a work to
complete and scanned through workqueue.h for it, but somehow missed it.

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

Each transfer has it's own work struct (allocated on the stack), hence
a) does not occur. b) is still true, but shouldn't be a problem on
its own.

Anyway, using flush_work() as you suggested is the better solution :)
