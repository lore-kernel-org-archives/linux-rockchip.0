From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform
 driver
Date: Mon, 30 Mar 2020 10:51:23 -0300
Message-ID: <4a9d2d6e5cecbe296c14119d27a8793a7dbed7b2.camel@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
         <20200330113542.181752-5-adrian.ratiu@collabora.com>
         <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Fabio Estevam <festevam@gmail.com>, Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org, DRI mailing list <dri-devel@lists.freedesktop.org>, linux-kernel <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>, kernel@collabora.com, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>, Emil Velikov <emil.velikov@collabora.com>, Sjoerd Simons <sjoerd.simons@collabora.com>, Martyn Welch <martyn.welch@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hello Fabio, Adrian:

On Mon, 2020-03-30 at 08:49 -0300, Fabio Estevam wrote:
> Hi Adrian,
> 
> On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
> > controller which is embedded in i.MX 6 SoCs.
> > 
> > Based on following patches, but updated/extended to work with existing
> > support found in the kernel:
> > 
> > - drm: imx: Support Synopsys DesignWare MIPI DSI host controller
> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
> > 
> > - ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller
> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
> 
> This one looks like a devicetree patch, but this patch does not touch
> devicetree.
> 
> > +       ret = clk_prepare_enable(dsi->pllref_clk);
> > +       if (ret) {
> > +               dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
> > +               return ret;
> > +       }
> > +
> > +       dsi->mux_sel = syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr");
> > +       if (IS_ERR(dsi->mux_sel)) {
> > +               ret = PTR_ERR(dsi->mux_sel);
> > +               dev_err(dev, "%s: Failed to get GPR regmap: %d\n",
> > +                       __func__, ret);
> > +               return ret;
> 
> You should disable the dsi->pllref_clk clock prior to returning the error.
> 

Another approach could be moving the clock on and off to
to component_ops.{bind,unbind} (as rockhip driver does).

What exactly is the PLL clock needed for? Would it make sense
to move it some of the PHY power on/off? (Maybe not, but it's worthing
checking).

Also, it seems the other IP blocks have this PLL clock, so maybe
it could be moved to the dw_mipi_dsi core? This could be something
for a follow-up, to avoid creeping this series.

Thanks,
Ezequiel
