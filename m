From: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [RFC PATCH v1 1/3] dt-bindings: mmc: combine common mmc and
 dw-mshc properties
Date: Wed, 15 Jan 2020 09:03:52 -0600
Message-ID: <CAL_JsqJD4CY6P+76pM69-4UPpTC+pE5BmyCm+gWhCA-Dd1YB4A@mail.gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com> <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
 <12bbbdbc-027e-90de-fd57-291013167b06@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <12bbbdbc-027e-90de-fd57-291013167b06-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-mmc <linux-mmc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jan 15, 2020 at 7:02 AM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> Hi,
>
> Thank you for your explanation.
> I was not aware that was playing.
> So now we go from a 'simple' txt to yaml conversion to a complete
> 'change your node name first' operation.

You only need to update the examples, not all the dts files for now.

> Can you indicate if that common yaml file for dw-mshc and Rockchip
> is still a good idea?

Yes, that's fine.

Rob
