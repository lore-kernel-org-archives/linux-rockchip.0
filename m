From: Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v3 5/7] media: dt-bindings: rockchip: Document RK3399
 Video Decoder bindings
Date: Sat, 14 Dec 2019 10:32:12 +0800
Message-ID: <CAGb2v64u34+ukyvGuDWDMyC2L3TE8-sPPx1SOP5RVAPF+ssooA@mail.gmail.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-6-boris.brezillon@collabora.com>
 <20191213152332.GF4860@pendragon.ideasonboard.com>
 <20191213162550.59730f89@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191213162550.59730f89-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Dec 14, 2019 at 4:38 AM Boris Brezillon
<boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> On Fri, 13 Dec 2019 17:23:32 +0200
> Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org> wrote:
>
> > Hi Boris,
> >
> > Thank you for the patch.
> >
> > On Fri, Dec 13, 2019 at 01:54:12PM +0100, Boris Brezillon wrote:
> > > Document the Rockchip RK3399 Video Decoder bindings.
> > >
> > > Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > ---
> > > Changes in v3:
> > > * Fix dtbs_check failures
> > > ---
> > >  .../bindings/media/rockchip,vdec.yaml         | 71 +++++++++++++++++++
> > >  1 file changed, 71 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > > new file mode 100644
> > > index 000000000000..7167c3d6a389
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > > @@ -0,0 +1,71 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/rockchip,vdec.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip Video Decoder (VDec) Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> > > +
> > > +description: |-
> > > +  The Rockchip rk3399 has a stateless Video Decoder that can decodes H.264,
> > > +  HEVC an VP9 streams.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: rockchip,rk3399-vdec
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: The Video Decoder AXI interface clock
> > > +      - description: The Video Decoder AHB interface clock
> > > +      - description: The Video Decoded CABAC clock
> > > +      - description: The Video Decoder core clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: aclk
> >
> > How about calling it "axi" ? None of the other clock names have "clk".
> >
> > > +      - const: iface
> >
> > And "ahb" here, as the AXI interface clock is also an interface clock ?
>
> Sure, I can do that.

Another possibility: "master" for the AXI clock, and "slave" for the AHB clock.
The AXI interface is likely the DMA master, while the AHB interface is a slave
interface for the control registers.

This is mostly based on hints from the crypto block.

ChenYu
