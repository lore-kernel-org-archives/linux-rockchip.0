From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in
 disable-wp text
Date: Thu, 16 Jan 2020 11:18:17 -0600
Message-ID: <CAL_Jsq+9w2wjwoOfnnKUBk9kOkZFcU6aWwyaw05ye-p3_WDcaQ@mail.gmail.com>
References: <20191219145843.3823-1-jbx6244@gmail.com> <20191228093059.2817-1-jbx6244@gmail.com>
 <20200104215524.GA28188@bogus> <CAPDyKFp5BvA7tKpBUh-bpn5X4xvg8b9HuMO7+fZVJEp78=ToRw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAPDyKFp5BvA7tKpBUh-bpn5X4xvg8b9HuMO7+fZVJEp78=ToRw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Johan Jonker <jbx6244@gmail.com>, Mark Rutland <mark.rutland@arm.com>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, DTML <devicetree@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jan 16, 2020 at 5:17 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Sat, 4 Jan 2020 at 22:55, Rob Herring <robh@kernel.org> wrote:
> >
> > On Sat, 28 Dec 2019 10:30:58 +0100, Johan Jonker wrote:
> > > There are two identical phrases in the disable-wp text,
> > > so remove one of them.
> > >
> > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> >
> > Applied, thanks.
> >
> > Rob
>
> Rob,
>
> Normally I pick up the DT doc changes for mmc whenever you have acked
> them (at least more non-trivial changes). I regards to the
> mmc-controller.yaml file, I have no queued changes in my tree for this
> cycle so this should be fine in regards to conflicts.
>
> Going forward, do you prefer to pick the DT doc changes for mmc, or
> can I consider this as a single occasion thingy?

I usually only pick up small changes if they are a binding only series
and if they haven't been picked up already.

Though I've been picking up a few schema conversions primarily so I
can check that they validate. Hopefully that's temporary.

Rob
