From: Sakari Ailus <sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [PATCH v12 08/11] media: staging: dt-bindings: add Rockchip ISP1
 yaml bindings
Date: Wed, 8 Jan 2020 20:08:54 +0200
Message-ID: <20200108180854.GA5438@kekkonen.localdomain>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-9-helen.koike@collabora.com>
 <20200107140115.GQ19828@paasikivi.fi.intel.com>
 <ad9d8ef7-5b52-d27e-ac95-db07dc1d443c@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <ad9d8ef7-5b52-d27e-ac95-db07dc1d443c-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org, laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org, joacim.zetterling-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, andrey.konovalov-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jan 08, 2020 at 01:50:38PM -0300, Helen Koike wrote:
> Hi,
> 
> Thank you for your review.
> 
> On 1/7/20 12:01 PM, Sakari Ailus wrote:
> > Hi Helen,
> > 
> > On Fri, Dec 27, 2019 at 05:01:13PM -0300, Helen Koike wrote:
> >> Add yaml DT bindings for Rockchip ISP1.
> >>
> >> This was tested and verified with:
> >> mv drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml Documentation/devicetree/bindings/media/
> >> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >>
> >> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>
> >> ---
> >>
> >> Changes in v12:
> >> - The commit replaces the following commit in previous series named
> >> media: staging: dt-bindings: Document the Rockchip ISP1 bindings
> >> This new patch adds yaml binding and was verified with
> >> make dtbs_check and make dt_binding_check
> >>
> >> Changes in v11:
> >> - add clock-names values
> >>
> >> Changes in v10:
> >> - unsquash
> >>
> >> Changes in v9:
> >> - squash
> >> - move to staging
> >>
> >> Changes in v8:
> >> - fix title division style
> >>
> >> Changes in v7:
> >> - update document with new design and tested example
> >>
> >>  .../bindings/media/rockchip-isp1.yaml         | 193 ++++++++++++++++++
> >>  1 file changed, 193 insertions(+)
> >>  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >>
> >> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> new file mode 100644
> >> index 000000000000..4d1b2c67a4cd
> >> --- /dev/null
> >> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> @@ -0,0 +1,193 @@
> >> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Rockchip SoC Image Signal Processing unit v1
> >> +
> >> +maintainers:
> >> +  - Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >> +
> >> +description: |
> >> +  Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
> >> +  which contains image processing, scaling, and compression funcitons.
> > 
> > "functions"
> > 
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: rockchip,rk3399-cif-isp
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  interrupts:
> >> +    maxItems: 1
> >> +
> >> +  iommus:
> >> +    maxItems: 1
> >> +
> >> +  power-domains:
> >> +    maxItems: 1
> >> +
> >> +  phys:
> >> +    maxItems: 1
> >> +    description: phandle for the PHY port
> >> +
> >> +  phy-names:
> >> +    const: dphy
> >> +
> >> +  clocks:
> >> +    items:
> >> +      - description: ISP clock
> >> +      - description: ISP aclk clock
> >> +      - description: ISP aclk wrapper clock
> >> +      - description: ISP hclk clock
> >> +      - description: ISP hclk wrapper clock
> >> +
> >> +  clock-names:
> >> +    items:
> >> +      - const: clk_isp
> >> +      - const: aclk_isp
> >> +      - const: aclk_isp_wrap
> >> +      - const: hclk_isp
> >> +      - const: hclk_isp_wrap
> >> +
> >> +  # See ./video-interfaces.txt for details
> >> +  ports:
> >> +    type: object
> >> +    additionalProperties: false
> >> +
> >> +    properties:
> >> +      "#address-cells":
> >> +        const: 1
> >> +
> >> +      "#size-cells":
> >> +        const: 0
> >> +
> >> +      port@0:
> > 
> > If you only have a single port node, you could drop reg as well as @0 on
> > the port node.
> 
> After the discussions, we have a single port for now, but we might have port@1
> for tx1rx1 in the future.

Ack. Please keep it as-is then.

-- 
Sakari Ailus
sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org
