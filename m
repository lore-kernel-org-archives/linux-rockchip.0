From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/4] dt-bindings: arm: fix Rockchip Kylin board bindings
Date: Sun, 01 Mar 2020 00:55:19 +0100
Message-ID: <21505688.DxWBmkEV5j@phil>
References: <20200228061436.13506-1-jbx6244@gmail.com> <73b41bd1-01e9-6af8-afc8-b1a96614d026@arm.com> <5d47cf5f-9ac4-cff4-340b-a2518a508738@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <5d47cf5f-9ac4-cff4-340b-a2518a508738-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 28. Februar 2020, 13:50:11 CET schrieb Johan Jonker:
> On 2/28/20 1:35 PM, Robin Murphy wrote:
> > On 28/02/2020 6:14 am, Johan Jonker wrote:
> >> A test with the command below gives this error:
> >>
> >> arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
> >> ['rockchip,rk3036-kylin', 'rockchip,rk3036']
> >> is not valid under any of the given schemas
> >>
> >> Fix this error by changing 'rockchip,kylin-rk3036' to
> >> 'rockchip,rk3036-kylin' in rockchip.yaml.
> > 
> 
> 
> > Although I can guess, it might be worth a note to explain why it's the
> > binding rather than the DTS that gets changed here.
> 
> Hi Robin,
> 
> My guess is that given a look at the other boards the processor name
> comes first and then the board name, so I changed it in rockchip.yaml.
> But maybe Heiko can better explain what the naming consensus in the past
> was.


I think what Robin meant was that there should be an explanation in the
commit message on why you change the binding and not the board.

Normally the dt-binding is the authoritative part, so boards should follow
the binding, but in the kylin-case the compatible from the .dts is used fr
years in the field now, so you're correct to fix the binding, as otherwise
we would break old users.

So just add a paragraph to the commit message with the above ;-)

Heiko
