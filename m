From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg property
Date: Wed, 20 May 2020 20:41:59 +0200
Message-ID: <4727344.YYj2SkWT1V@diego>
References: <20200520073327.6016-1-jbx6244@gmail.com> <20200520171324.GS89269@dtor-ws>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200520171324.GS89269@dtor-ws>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-input-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dmitry,

Am Mittwoch, 20. Mai 2020, 19:13:24 CEST schrieb Dmitry Torokhov:
> Hi Johan,
> 
> On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> > A test with the command below gives this error:
> > 
> > arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> > touchscreen@3e: reg:0:0: 56 was expected
> > 
> > The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> > was shipped with different addresses then the binding currently allows.
> > Change the reg property that any address will pass.
> > 
> > make ARCH=arm dtbs_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/input/touchscreen/
> > edt-ft5x06.yaml
> > 
> > Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > ---
> >  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> > index 383d64a91..baa8e8f7e 100644
> > --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> > +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> > @@ -42,7 +42,7 @@ properties:
> >        - focaltech,ft6236
> >  
> >    reg:
> > -    const: 0x38
> > +    maxItems: 1
> 
> Should we have a list of valid addresses instead of allowing any
> address? Controllers usually have only a couple of addresses that they
> support.

from what I've read, the fdt touchscreen controllers are just a generic
cpu with device-specific (or better panel-specific) firmware, which seems
to include the address as well - so it looks to be variable.

But of course that is only 2nd hand knowledge for me ;-)


But also, the i2c address is something you cannot really mess up,
either it is correct and your touchscreen works, or it isn't and and
adding entries to this list every time a new address variant pops up
feels clumsy.


Heiko
