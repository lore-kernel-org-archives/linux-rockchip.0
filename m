From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH 2/3] drm/rockchip: add ability to handle external dphys in mipi-dsi
Date: Thu, 07 Nov 2019 20:10:57 +0100
Message-ID: <1772103.UzfIEELiUT@phil>
References: <20191106112650.8365-1-heiko.stuebner@theobroma-systems.com> <20191106112650.8365-2-heiko.stuebner@theobroma-systems.com> <20191106130557.GF4878@pendragon.ideasonboard.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191106130557.GF4878@pendragon.ideasonboard.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: dri-devel@lists.freedesktop.org, a.hajda@samsung.com, hjc@rock-chips.com, robh+dt@kernel.org, mark.rutland@arm.com, narmstrong@baylibre.com, jonas@kwiboo.se, jernej.skrabec@siol.net, philippe.cornu@st.com, yannick.fertre@st.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Hi Laurent,

Am Mittwoch, 6. November 2019, 14:05:57 CET schrieb Laurent Pinchart:
> On Wed, Nov 06, 2019 at 12:26:49PM +0100, Heiko Stuebner wrote:
> > While the common case is that the dsi controller uses an internal dphy,
> > accessed through the phy registers inside the dsi controller, there is
> > also the possibility to use a separate dphy from a different vendor.
> > 
> > One such case is the Rockchip px30 that uses a Innosilicon Mipi dphy,
> > so add the support for handling such a constellation, including the pll
> > also getting generated inside that external phy.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > ---
> >  .../display/rockchip/dw_mipi_dsi_rockchip.txt |  7 ++-
> >  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 54 ++++++++++++++++++-
> >  2 files changed, 57 insertions(+), 4 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> > index ce4c1fc9116c..8b25156a9dcf 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> > +++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> > @@ -8,8 +8,9 @@ Required properties:
> >  	      "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi".
> >  - reg: Represent the physical address range of the controller.
> >  - interrupts: Represent the controller's interrupt to the CPU(s).
> > -- clocks, clock-names: Phandles to the controller's pll reference
> > -  clock(ref) and APB clock(pclk). For RK3399, a phy config clock
> > +- clocks, clock-names: Phandles to the controller's and APB clock(pclk)
> > +  and either a pll reference clock(ref) (internal dphy) or pll clock(pll)
> > +  (when connected to an external phy). For RK3399, a phy config clock
> 
> Why does external PHY clock need to be specified here ? Shouldn't it be
> handled by the PHY instead ?

You're completely right and it seems I didn't "see the forest  for the trees",
as there actually exists the phy_configure_* structs to transfer parameters
to an external phy in a correct way.

I'll revise my approach (and the phy driver) accordingly.

Thanks for the push in the right direction :-)
Heiko
