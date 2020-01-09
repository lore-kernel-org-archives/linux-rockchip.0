From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFT v1 3/3] drm/panfrost: Use the mali-supply regulator
 for control again
Date: Thu, 9 Jan 2020 18:27:11 +0100
Message-ID: <CAFBinCD7o-q-i66zZhOro1DanKAfG-8obQtzxxD==xOwsy_d6A@mail.gmail.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-4-martin.blumenstingl@googlemail.com> <2ceffe46-57a8-79a8-2c41-d04b227d3792@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2ceffe46-57a8-79a8-2c41-d04b227d3792@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Steven Price <steven.price@arm.com>
Cc: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, tomeu.vizoso@collabora.com, robh@kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, robin.murphy@arm.com
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jan 9, 2020 at 12:31 PM Steven Price <steven.price@arm.com> wrote:
>
> On 07/01/2020 23:06, Martin Blumenstingl wrote:
> > dev_pm_opp_set_rate() needs a reference to the regulator which should be
> > updated when updating the GPU frequency. The name of the regulator has
> > to be passed at initialization-time using dev_pm_opp_set_regulators().
> > Add the call to dev_pm_opp_set_regulators() so dev_pm_opp_set_rate()
> > will update the GPU regulator when updating the frequency (just like
> > we did this manually before when we open-coded dev_pm_opp_set_rate()).
>
> This patch causes a warning from debugfs on my firefly (RK3288) board:
>
> debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
> present!
>
> So it looks like the regulator is being added twice - but I haven't
> investigated further.
I *think* it's because the regulator is already fetched by the
panfrost driver itself to enable it
(the devfreq code currently does not support enabling the regulator,
it can only control the voltage)

I'm not sure what to do about this though

[...]
> >       ret = dev_pm_opp_of_add_table(dev);
> > -     if (ret)
> > +     if (ret) {
> > +             dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
>
> If we don't have a regulator then regulators_opp_table will be NULL and
> sadly dev_pm_opp_put_regulators() doesn't handle a NULL argument. The
> same applies to the two below calls obviously.
good catch, thank you!
are you happy with the general approach here or do you think that
dev_pm_opp_set_regulators is the wrong way to go (for whatever
reason)?


Martin
