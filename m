From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro
 SOM binding
Date: Wed, 04 Dec 2019 21:14:46 +0100
Message-ID: <5408424.xnnVrITuBQ@diego>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
 <20191121141445.28712-2-jagan@amarulasolutions.com>
 <20191204193240.GA6772@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191204193240.GA6772@bogus>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org, Akash Gajjar <akash@openedev.com>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 4. Dezember 2019, 20:32:40 CET schrieb Rob Herring:
> On Thu, Nov 21, 2019 at 07:44:41PM +0530, Jagan Teki wrote:
> > VMARC RK3399Pro SOM is a standard SMARC SOM design with
> > Rockchip RK3399Pro SoC, which is designed by Vamrs.
> > 
> > Since it is a standard SMARC design, it can be easily
> > mounted on the supporting Carrier board. Radxa has
> > suitable carrier board to mount and use it as a final
> > version board.
> > 
> > Add dt-bindings for it.
> > 
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v2:
> > - none
> > 
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index 45728fd22af8..51aa458833a9 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -526,4 +526,9 @@ properties:
> >          items:
> >            - const: tronsmart,orion-r68-meta
> >            - const: rockchip,rk3368
> > +
> > +      - description: Vamrs VMARC RK3399Pro SOM
> > +        items:
> > +          - const: vamrs,rk3399pro-vmarc-som
> 
> Why do you need this? You just override it in your dts files, so it is 
> not really used. Perhaps the top-level should have all 3 compatibles? If 
> so, then the schemas are wrong.

In the past we had SOMs that _could_ function alone, but looking at the
announcement for this one [0] suggests that the SOM always needs a carrier
board, so I don't think the SOM actually needs a separate entry but instead
should be part of the carrier-board compatible list, as Rob suggested.

So I guess we should only have (from patch 3):
  - description: Radxa ROCK Pi N10
        items:
          - const: radxa,rockpi-n10
          - const: vamrs,rk3399pro-vmarc-som
          - const: rockchip,rk3399pro


Heiko

[0] https://www.96rocks.com/blog/2019/09/11/introduce-vamrc-rk3399pro-som-and-ficus2-carrier-board/
