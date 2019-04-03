From: Guenter Roeck <groeck@google.com>
Subject: Re: [PATCH] platform/chrome: cros_ec_spi: Transfer messages at high priority
Date: Tue, 2 Apr 2019 20:17:03 -0700
Message-ID: <CABXOdTcE1d2mURSkTAUQda9vcYZhGnmT+Y_NH6xQU9begDh+Qw@mail.gmail.com>
References: <20190402224445.64823-1-dianders@chromium.org> <20190402231917.GL112750@google.com>
 <CAD=FV=V3S7=GNrA8JnUE+wHin8UwFTeL22EBMuDr4AFTu1nKsw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=V3S7=GNrA8JnUE+wHin8UwFTeL22EBMuDr4AFTu1nKsw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Matthias Kaehlcke <mka@chromium.org>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Brian Norris <briannorris@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>, Randall Spangler <rspangler@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Apr 2, 2019 at 4:38 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Tue, Apr 2, 2019 at 4:19 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > Hi Doug,
> >
> > On Tue, Apr 02, 2019 at 03:44:44PM -0700, Douglas Anderson wrote:
> > > The software running on the Chrome OS Embedded Controller (cros_ec)
> > > handles SPI transfers in a bit of a wonky way.  Specifically if the EC
> > > sees too long of a delay in a SPI transfer it will give up and the
> > > transfer will be counted as failed.  Unfortunately the timeout is
> > > fairly short, though the actual number may be different for different
> > > EC codebases.
> > >
> > > We can end up tripping the timeout pretty easily if we happen to
> > > preempt the task running the SPI transfer and don't get back to it for
> > > a little while.
> > >
> > > Historically this hasn't been a _huge_ deal because:
> > > 1. On old devices Chrome OS used to run PREEMPT_VOLUNTARY.  That meant
> > >    we were pretty unlikely to take a big break from the transfer.
> > > 2. On recent devices we had faster / more processors.
> > > 3. Recent devices didn't use "cros-ec-spi-pre-delay".  Using that
> > >    delay makes us more likely to trip this use case.
> > > 4. For whatever reasons (I didn't dig) old kernels seem to be less
> > >    likely to trip this.
> > > 5. For the most part it's kinda OK if a few transfers to the EC fail.
> > >    Mostly we're just polling the battery or doing some other task
> > >    where we'll try again.
> > >
> > > Even with the above things, this issue has reared its ugly head
> > > periodically.  We could solve this in a nice way by adding reliable
> > > retries to the EC protocol [1] or by re-designing the code in the EC
> > > codebase to allow it to wait longer, but that code doesn't ever seem
> > > to get changed.  ...and even if it did, it wouldn't help old devices.
> > >
> > > It's now time to finally take a crack at making this a little better.
> > > This patch isn't guaranteed to make every cros_ec SPI transfer
> > > perfect, but it should improve things by a few orders of magnitude.
> > > Specifically you can try this on a rk3288-veyron Chromebook (which is
> > > slower and also _does_ need "cros-ec-spi-pre-delay"):
> > >   md5sum /dev/zero &
> > >   md5sum /dev/zero &
> > >   md5sum /dev/zero &
> > >   md5sum /dev/zero &
> > >   while true; do
> > >     cat /sys/class/power_supply/sbs-20-000b/charge_now > /dev/null;
> > >   done
> > > ...before this patch you'll see boatloads of errors.  After this patch I
> > > don't see any in the testing I did.
> > >
> > > The way this patch works is by effectively boosting the priority of
> > > the cros_ec transfers.  As far as I know there is no simple way to
> > > just boost the priority of the current process temporarily so the way
> > > we accomplish this is by creating a "WQ_HIGHPRI" workqueue and doing
> > > the transfers there.
> > >
> > > NOTE: this patch relies on the fact that the SPI framework attempts to
> > > push the messages out on the calling context (which is the one that is
> > > boosted to high priority).  As I understand from earlier (long ago)
> > > discussions with Mark Brown this should be a fine assumption.  Even if
> > > it isn't true sometimes this patch will still not make things worse.
> > >
> > > [1] https://crbug.com/678675
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > >  drivers/platform/chrome/cros_ec_spi.c | 107 ++++++++++++++++++++++++--
> > >  1 file changed, 101 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
> > > index ffc38f9d4829..101f2deb7d3c 100644
> > > --- a/drivers/platform/chrome/cros_ec_spi.c
> > > +++ b/drivers/platform/chrome/cros_ec_spi.c
> > >
> > > ...
> > >
> > > +static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
> > > +                             struct cros_ec_command *ec_msg)
> > > +{
> > > +     struct cros_ec_spi *ec_spi = ec_dev->priv;
> > > +     struct cros_ec_xfer_work_params params;
> > > +
> > > +     INIT_WORK(&params.work, cros_ec_pkt_xfer_spi_work);
> > > +     params.ec_dev = ec_dev;
> > > +     params.ec_msg = ec_msg;
> > > +
> > > +     queue_work(ec_spi->high_pri_wq, &params.work);
> > > +     flush_workqueue(ec_spi->high_pri_wq);
> >
> > IIRC dedicated workqueues should be avoided unless they are needed. In
> > this case it seems you could use system_highpri_wq + a
> > completion. This would add a few extra lines to deal with the
> > completion, in exchange the code to create the workqueue could be
> > removed.
>
> I'm not convinced using the "system_highpri_wq" is a great idea here.
> Using flush_workqueue() on the "system_highpri_wq" seems like a recipe
> for deadlock but I need to flush to get the result back.  See the
> comments in flush_scheduled_work() for some discussion here.
>

Given that high priority workqueues are used all over the place, and
system_highpri_wq is only rarely used, hijacking the latter doesn't
seem to be such a good idea to me either. I also recall that we had to
drop using system qorkqueues at a previous company and replace them
with local workqueues because we got into timing trouble when using
system workqueues.

Having said that, the combination of queue_work() immediately followed
by flush_workqueue() seems odd and appears to violate the wole idea of
work _queues_. I wonder if there is a better solution available to
solve problems like this. I also wonder if we solve a problem here, or
if we work around its symptoms. AFAICS, the delay translates into a
udelay(), meaning an active wait loop. Has anyone an understanding why
this translates into a spi transfer error, and how using a workqueue
(which I guess may offload the active wait to another CPU) solves that
problem ? Also, are we sure that this isn't a problem with the SPI
driver ?

Guenter

> I guess you're suggesting using a completion instead of the flush but
> I think the deadlock potentials are the same.  If we're currently
> running on the "system_highpri_wq" (because one of our callers
> happened to be on it) or there are some shared resources between
> another user of the "system_highpri_wq" and us then we'll just sitting
> waiting for the completion, won't we?
>
> I would bet that currently nobody actually ends up in this situation
> because there aren't lots of users of the "system_highpri_wq", but it
> still doesn't seem like a good design.  Is it really that expensive to
> have our own workqueue?
>
>
> > > +     return params.ret;
> > > +}
> > > +
> > > +static void cros_ec_cmd_xfer_spi_work(struct work_struct *work)
> > > +{
> > > +     struct cros_ec_xfer_work_params *params;
> > > +
> > > +     params = container_of(work, struct cros_ec_xfer_work_params, work);
> > > +     params->ret = do_cros_ec_cmd_xfer_spi(params->ec_dev, params->ec_msg);
> > > +}
> > > +
> > > +static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
> > > +                             struct cros_ec_command *ec_msg)
> > > +{
> > > +     struct cros_ec_spi *ec_spi = ec_dev->priv;
> > > +     struct cros_ec_xfer_work_params params;
> > > +
> > > +     INIT_WORK(&params.work, cros_ec_cmd_xfer_spi_work);
> > > +     params.ec_dev = ec_dev;
> > > +     params.ec_msg = ec_msg;
> > > +
> > > +     queue_work(ec_spi->high_pri_wq, &params.work);
> > > +     flush_workqueue(ec_spi->high_pri_wq);
> > > +
> > > +     return params.ret;
> > > +}
> >
> > This is essentially a copy of cros_ec_pkt_xfer_spi() above. You
> > could add a wrapper that receives the work function to avoid the
> > duplicate code.
>
> Good point.  I'll wait a day or two for more feedback and then post a
> new version with that change.
>
> -Doug
