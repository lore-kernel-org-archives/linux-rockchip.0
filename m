From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Date: Fri, 29 May 2020 00:02:49 +0200
Message-ID: <12739492.Qs6HZxOyHu@diego>
References: <20200520073327.6016-1-jbx6244@gmail.com>
 <4727344.YYj2SkWT1V@diego> <20200528220136.GA748777@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200528220136.GA748777@bogus>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 29. Mai 2020, 00:01:36 CEST schrieb Rob Herring:
> On Wed, May 20, 2020 at 08:41:59PM +0200, Heiko St=FCbner wrote:
> > Hi Dmitry,
> > =

> > Am Mittwoch, 20. Mai 2020, 19:13:24 CEST schrieb Dmitry Torokhov:
> > > Hi Johan,
> > > =

> > > On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> > > > A test with the command below gives this error:
> > > > =

> > > > arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> > > > touchscreen@3e: reg:0:0: 56 was expected
> > > > =

> > > > The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> > > > was shipped with different addresses then the binding currently all=
ows.
> > > > Change the reg property that any address will pass.
> > > > =

> > > > make ARCH=3Darm dtbs_check
> > > > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/input/touchscre=
en/
> > > > edt-ft5x06.yaml
> > > > =

> > > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yam=
l | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > =

> > > > diff --git a/Documentation/devicetree/bindings/input/touchscreen/ed=
t-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5=
x06.yaml
> > > > index 383d64a91..baa8e8f7e 100644
> > > > --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x0=
6.yaml
> > > > +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x0=
6.yaml
> > > > @@ -42,7 +42,7 @@ properties:
> > > >        - focaltech,ft6236
> > > >  =

> > > >    reg:
> > > > -    const: 0x38
> > > > +    maxItems: 1
> > > =

> > > Should we have a list of valid addresses instead of allowing any
> > > address? Controllers usually have only a couple of addresses that they
> > > support.
> > =

> > from what I've read, the fdt touchscreen controllers are just a generic
> > cpu with device-specific (or better panel-specific) firmware, which see=
ms
> > to include the address as well - so it looks to be variable.
> > =

> > But of course that is only 2nd hand knowledge for me ;-)
> > =

> > =

> > But also, the i2c address is something you cannot really mess up,
> > either it is correct and your touchscreen works, or it isn't and and
> > adding entries to this list every time a new address variant pops up
> > feels clumsy.
> =

> Is that an Ack?

for the patch itself:
Acked-by: Heiko Stuebner <heiko@sntech.de>


> I'm fine either way. It's really only useful if there's a single =

> address because with a list it could still be wrong just as any other =

> data like an interrupt number could be wrong.
> =

> Rob
> =
