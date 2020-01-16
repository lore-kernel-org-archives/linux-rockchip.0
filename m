From: Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in
 disable-wp text
Date: Thu, 16 Jan 2020 12:16:32 +0100
Message-ID: <CAPDyKFp5BvA7tKpBUh-bpn5X4xvg8b9HuMO7+fZVJEp78=ToRw@mail.gmail.com>
References: <20191219145843.3823-1-jbx6244@gmail.com> <20191228093059.2817-1-jbx6244@gmail.com>
 <20200104215524.GA28188@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200104215524.GA28188@bogus>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, "linux-mmc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-mmc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, DTML <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, 4 Jan 2020 at 22:55, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> On Sat, 28 Dec 2019 10:30:58 +0100, Johan Jonker wrote:
> > There are two identical phrases in the disable-wp text,
> > so remove one of them.
> >
> > Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > ---
> >  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
>
> Applied, thanks.
>
> Rob

Rob,

Normally I pick up the DT doc changes for mmc whenever you have acked
them (at least more non-trivial changes). I regards to the
mmc-controller.yaml file, I have no queued changes in my tree for this
cycle so this should be fine in regards to conflicts.

Going forward, do you prefer to pick the DT doc changes for mmc, or
can I consider this as a single occasion thingy?

Kind regards
Uffe
