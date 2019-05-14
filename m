From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 1/3] platform/chrome: cros_ec_spi: Move to real time
 priority for transfers
Date: Tue, 14 May 2019 14:23:13 -0700
Message-ID: <CAD=FV=WrxeKGNH6jsuvdDaENQDnqjW2f2VO25-VReYKfP7L3Lw@mail.gmail.com>
References: <20190514183935.143463-1-dianders@chromium.org>
 <20190514183935.143463-2-dianders@chromium.org> <CABXOdTc36r7XV-3o8MJiaUTkaALtfQAQpi1gV2xvsDSX+S3s2A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CABXOdTc36r7XV-3o8MJiaUTkaALtfQAQpi1gV2xvsDSX+S3s2A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <groeck@google.com>
Cc: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Boichat <drinkcat@chromium.org>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, May 14, 2019 at 12:34 PM Guenter Roeck <groeck@google.com> wrote:

> On Tue, May 14, 2019 at 11:40 AM Douglas Anderson <dianders@chromium.org> wrote:
> > +static void cros_ec_spi_high_pri_release(struct device *dev, void *res)
> > +{
> > +       struct cros_ec_spi *ec_spi = *(struct cros_ec_spi **)res;
> > +
> > +       kthread_stop(ec_spi->high_pri_thread);
>
> Is that needed ? kthread_destroy_worker() does it for you.

Thanks for catching.  Removed.


> > +static int cros_ec_spi_devm_high_pri_alloc(struct device *dev,
> > +                                          struct cros_ec_spi *ec_spi)
> > +{
> > +       struct sched_param sched_priority = {
> > +               .sched_priority = MAX_RT_PRIO - 1,
> > +       };
> > +       struct cros_ec_spi **ptr;
> > +       int err = 0;
> > +
> > +       ptr = devres_alloc(cros_ec_spi_high_pri_release, sizeof(*ptr),
> > +                          GFP_KERNEL);
> > +       if (!ptr)
> > +               return -ENOMEM;
> > +       *ptr = ec_spi;
> > +
> > +       kthread_init_worker(&ec_spi->high_pri_worker);
> > +       ec_spi->high_pri_thread = kthread_create(kthread_worker_fn,
> > +                                                &ec_spi->high_pri_worker,
> > +                                                "cros_ec_spi_high_pri");
> > +       if (IS_ERR(ec_spi->high_pri_thread)) {
> > +               err = PTR_ERR(ec_spi->high_pri_thread);
> > +               dev_err(dev, "Can't create cros_ec high pri thread: %d\n", err);
> > +               goto err_worker_initted;
> > +       }
> > +
> > +       err = sched_setscheduler_nocheck(ec_spi->high_pri_thread,
> > +                                        SCHED_FIFO, &sched_priority);
> > +       if (err) {
> > +               dev_err(dev, "Can't set cros_ec high pri priority: %d\n", err);
> > +               goto err_thread_created;
> > +       }
> > +
> > +       wake_up_process(ec_spi->high_pri_thread);
> > +
> > +       devres_add(dev, ptr);
> > +
>
> If you move that ahead of sched_setscheduler_nocheck(), you would not
> need the err_thread_created: label.

Done


> > +       return 0;
> > +
> > +err_thread_created:
> > +       kthread_stop(ec_spi->high_pri_thread);
> > +
> > +err_worker_initted:
> > +       kthread_destroy_worker(&ec_spi->high_pri_worker);
>
> Are you sure about this ? The worker isn't started here, but
> kthread_destroy_worker() tries to stop it.

Right.  I was naively thinking that kthread_destroy_worker() was the
inverse of kthread_init_worker(), but clearly it's not.  :(

...and, in fact, looking closer at kthread_destroy_worker() it looks
like it's inherently slightly racy with regards to kthread_create().
Ick.  Specifically it will give a "WARN_ON" if worker->task hasn't
been set, but that doesn't get set until kthread_worker_fn runs the
first time.  Oh, but everyone's supposed to use
kthread_create_worker() to get around that!  :-)  Switching to that.
...and then of course everything looks so much cleaner!

...so after that I'm effectively implementing
devm_kthread_create_worker(), but I guess for now I'll just do that
unless someone thinks that I should try to get that landed...


I'll wait to send out a v4 till tomorrow morning to avoid spamming
with too many versions.  If anyone wants a preview feel free to look
at <https://crrev.com/c/1612165>

-Doug
