From: Angelo Ribeiro <Angelo.Ribeiro-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: RE: [PATCH v7 4/8] drm: imx: Add i.MX 6 MIPI DSI host platform driver
Date: Thu, 30 Apr 2020 15:11:59 +0000
Message-ID: <CH2PR12MB37825DDA6314C68488FC10C8CBAA0@CH2PR12MB3782.namprd12.prod.outlook.com>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
 <20200421161610.1501827-5-adrian.ratiu@collabora.com>
 <20200422010727.GM5983@pendragon.ideasonboard.com>
 <20200428143030.GN3456981@phenom.ffwll.local> <87pnbrig2z.fsf@collabora.com>
 <20200430135841.GE10381@phenom.ffwll.local>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200430135841.GE10381-dv86pmgwkMBes7Z6vYuT8azUEOm+Xw19@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>, Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Martyn Welch <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Emil Velikov <emil.velikov-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLK0BYs2hP7t38@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>
Date: Thu, Apr 30, 2020 at 14:58:41

> On Tue, Apr 28, 2020 at 10:08:04PM +0300, Adrian Ratiu wrote:
> > Hi Daniel,
> >=20
> > On Tue, 28 Apr 2020, Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org> wrote:
> > > On Wed, Apr 22, 2020 at 04:07:27AM +0300, Laurent Pinchart wrote:
> > > > Hi Adrian,  On Tue, Apr 21, 2020 at 07:16:06PM +0300, Adrian Ratiu
> > > > wrote: > This adds support for the Synopsis DesignWare MIPI DSI
> > > > v1.01 > host controller which is embedded in i.MX 6 SoCs.   Based o=
n
> > > > > following patches, but updated/extended to work with existing >
> > > > support found in the kernel:  - drm: imx: Support Synopsys >
> > > > DesignWare MIPI DSI host controller >   Signed-off-by: Liu Ying
> > > > <Ying.Liu-KZfg59tc24xl57MIdRCFDg@public.gmane.org> >  Cc: Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > > Cc: Enric Balletbo > Serra <eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> Reviewed-by: Emil
> > > > Velikov > <emil.velikov-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> Tested-by: Adrian Pop >
> > > > <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> Tested-by: Arnaud Ferraris >
> > > > <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> Signed-off-by: Sjoerd Simons >
> > > > <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> Signed-off-by: Martyn Welch >
> > > > <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> Signed-off-by: Adrian Ratiu >
> > > > <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> --- Changes since v6: >   - Replaced
> > > > custom noop encoder with the simple drm encoder >   (Enric) - Added
> > > > CONFIG_DRM_IMX6_MIPI_DSI depends on >   CONFIG_OF (Enric) - Dropped
> > > > imx_mipi_dsi_register() because >   now it only creates the dummy
> > > > encoder which can easily be >   done directly in imx_dsi_bind() >
> > > > Changes since v5: >   - Reword to remove unrelated device tree patc=
h
> > > > mention >   (Fabio) - Move pllref_clk enable/disable to bind/unbind
> > > > >   (Ezequiel) - Fix freescale.com -> nxp.com email addresses >
> > > > (Fabio) - Also added myself as module author (Fabio) - Use >
> > > > DRM_DEV_* macros for consistency, print more error msg >  Changes
> > > > since v4: >   - Split off driver-specific configuration of phy
> > > > timings >   due to new upstream API.  - Move regmap infrastructure =
>
> > > > logic to separate commit (Ezequiel) - Move dsi v1.01 layout >
> > > > addition to a separate commit (Ezequiel) - Minor warnings >   and
> > > > driver name fixes >  Changes since v3: >   - Renamed platform drive=
r
> > > > to reflect it's i.MX6 >   only. (Fabio) >  Changes since v2: >   -
> > > > Fixed commit tags. (Emil) >  Changes since v1: >   - Moved register
> > > > definitions & regmap initialization into >   bridge module. Platfor=
m
> > > > drivers get the regmap via >   plat_data after calling the bridge
> > > > probe. (Emil) > --- >  drivers/gpu/drm/imx/Kconfig            |   8
> > > > + >  drivers/gpu/drm/imx/Makefile           |   1 + >
> > > > drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c | 391 >
> > > > +++++++++++++++++++++++++ 3 files changed, 400 insertions(+) >
> > > > create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c >  diff
> > > > --git a/drivers/gpu/drm/imx/Kconfig > b/drivers/gpu/drm/imx/Kconfig
> > > > index > 207bf7409dfba..0dffc72df7922 100644 --- >
> > > > a/drivers/gpu/drm/imx/Kconfig +++ > b/drivers/gpu/drm/imx/Kconfig @=
@
> > > > -39,3 +39,11 @@ config > DRM_IMX_HDMI >  	depends on DRM_IMX help
> > > > Choose this if you want to use >  HDMI on i.MX6. > + +config
> > > > DRM_IMX6_MIPI_DSI +	tristate "Freescale i.MX6 > DRM MIPI DSI"
> > > > +	select DRM_DW_MIPI_DSI +	depends on > DRM_IMX +	depends on OF
> > > > +	help +	  Choose this if you want > to use MIPI DSI on i.MX6.  dif=
f
> > > > --git > a/drivers/gpu/drm/imx/Makefile
> > > > b/drivers/gpu/drm/imx/Makefile > index 21cdcc2faabc8..9a7843c593478
> > > > 100644 --- > a/drivers/gpu/drm/imx/Makefile +++ >
> > > > b/drivers/gpu/drm/imx/Makefile @@ -9,3 +9,4 @@ >
> > > > obj-$(CONFIG_DRM_IMX_TVE) +=3D imx-tve.o >  obj-$(CONFIG_DRM_IMX_LD=
B)
> > > > +=3D imx-ldb.o >  obj-$(CONFIG_DRM_IMX_HDMI) +=3D dw_hdmi-imx.o >
> > > > +obj-$(CONFIG_DRM_IMX6_MIPI_DSI) +=3D dw_mipi_dsi-imx6.o diff > --g=
it
> > > > a/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c >
> > > > b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c new file mode 100644 >
> > > > index 0000000000000..f8a0a4fe16e21 --- /dev/null +++ >
> > > > b/drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c @@ -0,0 +1,391 @@ > +//
> > > > SPDX-License-Identifier: GPL-2.0+ +/* + * i.MX6 drm > driver - MIPI
> > > > DSI Host Controller + * + * Copyright (C) > 2011-2015 Freescale
> > > > Semiconductor, Inc.  + * Copyright (C) > 2019-2020 Collabora, Ltd.
> > > > + */ + +#include <linux/clk.h> > +#include <linux/component.h>
> > > > +#include <linux/mfd/syscon.h> > +#include
> > > > <linux/mfd/syscon/imx6q-iomuxc-gpr.h> +#include > <linux/module.h>
> > > > +#include <linux/of_device.h> +#include > <linux/regmap.h> +#includ=
e
> > > > <linux/videodev2.h> +#include > <drm/bridge/dw_mipi_dsi.h> +#includ=
e
> > > > <drm/drm_crtc_helper.h> > +#include <drm/drm_mipi_dsi.h> +#include
> > > > <drm/drm_of.h> > +#include <drm/drm_print.h> + +#include "imx-drm.h=
"
> > > > + > +#define DSI_PWR_UP			0x04 +#define > RESET				0 +#define
> > > > POWERUP > BIT(0) + +#define DSI_PHY_IF_CTRL			0x5c > +#define
> > > > PHY_IF_CTRL_RESET		0x0 + +#define > DSI_PHY_TST_CTRL0		0x64 +#defin=
e
> > > > PHY_TESTCLK > BIT(1) +#define PHY_UNTESTCLK			0 +#define >
> > > > PHY_TESTCLR			BIT(0) +#define > PHY_UNTESTCLR			0 + +#define >
> > > > DSI_PHY_TST_CTRL1		0x68 +#define PHY_TESTEN > BIT(16) +#define
> > > > PHY_UNTESTEN			0 +#define > PHY_TESTDOUT(n)			(((n) & 0xff) << 8) >
> > > > +#define PHY_TESTDIN(n)			(((n) & 0xff) << > 0) + +struct
> > > > imx_mipi_dsi { +	struct drm_encoder > encoder; +	struct device *dev=
;
> > > > +	struct regmap *mux_sel; + > struct dw_mipi_dsi *mipi_dsi; +	struc=
t
> > > > clk *pllref_clk; + > +	void __iomem *base; +	unsigned int lane_mbps=
;
> > > > +}; + > +struct dphy_pll_testdin_map { +	unsigned int max_mbps; + >
> > > > u8 testdin; +}; + +/* The table is based on 27MHz DPHY pll >
> > > > reference clock. */ +static const struct dphy_pll_testdin_map >
> > > > dptdin_map[] =3D { +	{160, 0x04}, {180, 0x24}, {200, 0x44}, > {210,
> > > > 0x06}, +	{240, 0x26}, {250, 0x46}, {270, 0x08}, > {300, 0x28},
> > > > +	{330, 0x48}, {360, 0x2a}, {400, 0x4a}, > {450, 0x0c}, +	{500,
> > > > 0x2c}, {550, 0x0e}, {600, 0x2e}, > {650, 0x10}, +	{700, 0x30}, {750=
,
> > > > 0x12}, {800, 0x32}, > {850, 0x14}, +	{900, 0x34}, {950, 0x54},
> > > > {1000, 0x74} +}; > + +static inline struct imx_mipi_dsi
> > > > *enc_to_dsi(struct > drm_encoder *enc) +{ +	return container_of(enc=
,
> > > > struct > imx_mipi_dsi, encoder); +} + +static void >
> > > > imx_mipi_dsi_set_ipu_di_mux(struct imx_mipi_dsi *dsi, int > ipu_di)
> > > > +{ +	regmap_update_bits(dsi->mux_sel, > IOMUXC_GPR3, + >
> > > > IMX6Q_GPR3_MIPI_MUX_CTL_MASK, +			   ipu_di > <<
> > > > IMX6Q_GPR3_MIPI_MUX_CTL_SHIFT); +} + +static bool >
> > > > imx_mipi_dsi_encoder_mode_fixup(struct drm_encoder *encoder, >
> > > > +					    const struct > drm_display_mode *mode, + > struct
> > > > drm_display_mode *adj_mode) +{ +	return true; +} + > +static int
> > > > imx_mipi_dsi_encoder_atomic_check(struct > drm_encoder *encoder, + =
>
> > > > struct drm_crtc_state *crtc_state, + > struct drm_connector_state
> > > > *conn) +{ +	struct > imx_crtc_state *imx_crtc_state =3D >
> > > > to_imx_crtc_state(crtc_state); + +	/* The following values > are
> > > > taken from dw_hdmi_imx_atomic_check */ + >
> > > > imx_crtc_state->bus_format =3D MEDIA_BUS_FMT_RGB888_1X24; + >
> > > > imx_crtc_state->di_hsync_pin =3D 2; + > imx_crtc_state->di_vsync_pi=
n =3D
> > > > 3; + +	return 0; +}  No encoder functions please. This should be a
> > > > bridge driver, the encoder should be created by the i.MX display
> > > > controller driver itself. As that would require quite a bit of
> > > > refactoring I'm OK having an encoder here for the meantime, but it
> > > > should be a dummy one, without any operation.
> > >=20
> > > +1 on this, came to say the same. This seems to duplicate the dw-hdmi
> > > design, where the code organization is a bit a mess, with some parts =
in
> > > drm/bridge, and some parts in each drm_device driver. Plus drm_encode=
r
> > > in there on top.
> > >=20
> > > If we want to continue with the drm_bridge abstraction for these kind=
 of
> > > drivers then imo we need:
> > >=20
> > > - to make drm_bridge the actual abstraction, no leaking back&forth
> > > between   the bridge chip and the overall drm_device side of things.
> > >=20
> > > - move _all_ dw-mipi-dsi related code into drm/bridge
> > >=20
> > > - for the platform specific binding stuff I think drm/bridge/dw-mipi-=
dsi
> > > directory, which contains the main driver, plus a file each   for the
> > > imx/stm/whatever platform bindings sounds like a   reasonable layout.
> > >=20
> > > If that doesn't work, then I think dw-mipi-dsi isn't really a bridge
> > > driver with clear encapsulation, but instead should be structured as =
a
> > > helper library to implement a drm_encoder. And no drm_bridge.
> > >=20
> > > And yes the exact same problem exists with dw-hdmi. That's the reason
> > > why I've started to look into these, it's not really a code pattern w=
e
> > > should repeat imo.
> >=20
> > The code structure you propose should be doable and I was actually thin=
king
> > of something like it when writing the cover letter for v8 of this serie=
s,
> > about how to consolidate the Synopsis DW MIPI DSI logic at the same tim=
e
> > while consolidating the rest of imx drivers to unify their simple encod=
er
> > management.
> >=20
> > Thank you for fleshing it out! It's very helpful :)
> >=20
> > BTW have you seen what I did with the bridge in v8 for the imx6 driver?=
  [1]
> >=20
> > What I'd like to avoid is feature creep in this patch series which is a=
bout
> > adding the imx6 driver, because I think moving the logic and refactorin=
g all
> > the drivers is a separate issue and already this series is big and
> > increasing.
> >=20
> > So would you be ok with merging the imx6 mipi dsi driver with its
> > dw-mipi-dsi regamp rework and doing the refactoring to consolidate all =
the
> > bridge logic in a separate patch series which also includes moving the
> > rockchip and stm encoder logic to a drm_bridge?
> >=20
> > Or would you like me to do this consolidation rework in advance just fo=
r the
> > new imx6 mipi-dsi driver in this series and tackle the rest of drivers =
in a
> > separate patch series?
>=20
> Yeah I think that rework is going to be a lot of work. Generally as long
> as we have agreement about the long-term direction, then I think in-tree
> refactoring leads to best results. So if other bridge people (I've just
> jumped in here) agree, then we're good to go.
>=20
> I think best way to document the agreement is to type up a patch for
> Documentation/gpu/todo.rst with the full plan, with some details. And the=
n
> get acks from bridge maintainers. I think Laurent, Sam and Boris
> Brezillion are most active right now with shaping the drm_bridge future.
>=20
> Cheers, Daniel
>=20

Hi Adrian,

Indeed the driver is getting quite messy, if it goes ahead I=20
would be available to help on this driver rework.

I think that also the inclusion of a phy driver could help
in making this driver more clear since most of the code that
each vender has it's phy related.

Thanks,
Angelo

> >=20
> > @Laurent, do you also have suggestions how to proceed?
> >=20
> > [1] https://urldefense.com/v3/__https://lore.kernel.org/linux-arm-kerne=
l/20200427081952.3536741-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org/__;!!A4F2R9G_pg!NhBPZ=
GbhUKJY_mrt-2Ft_ja04W8XPqZ8P3-wntQomu30weMxgQfUEXZgnyJXUb7A$=20
> >=20
> > Thank you,
> > Adrian
> >=20
> > >=20
> > > Cheers, Daniel
> > >=20
> > > >=20
> > > > > +
> > > > > +static void imx_mipi_dsi_encoder_commit(struct drm_encoder *enco=
der)
> > > > > +{
> > > > > +	struct imx_mipi_dsi *dsi =3D enc_to_dsi(encoder);
> > > > > +	int mux =3D drm_of_encoder_active_port_id(dsi->dev->of_node, en=
coder);
> > > > > +
> > > > > +	imx_mipi_dsi_set_ipu_di_mux(dsi, mux);
> > > > > +}
> > > > > +
> > > > > +static void imx_mipi_dsi_encoder_disable(struct drm_encoder *enc=
oder)
> > > > > +{
> > > > > +}
> > > > > +
> > > > > +static const struct drm_encoder_helper_funcs imx_mipi_dsi_encode=
r_helpers =3D {
> > > > > +	.mode_fixup =3D imx_mipi_dsi_encoder_mode_fixup,
> > > > > +	.commit =3D imx_mipi_dsi_encoder_commit,
> > > > > +	.disable =3D imx_mipi_dsi_encoder_disable,
> > > > > +	.atomic_check =3D imx_mipi_dsi_encoder_atomic_check,
> > > > > +};
> > > > > +
> > > > > +static enum drm_mode_status imx_mipi_dsi_mode_valid(void *priv_d=
ata,
> > > > > +					const struct drm_display_mode *mode)
> > > > > +{
> > > > > +	/*
> > > > > +	 * The VID_PKT_SIZE field in the DSI_VID_PKT_CFG
> > > > > +	 * register is 11-bit.
> > > > > +	 */
> > > > > +	if (mode->hdisplay > 0x7ff)
> > > > > +		return MODE_BAD_HVALUE;
> > > > > +
> > > > > +	/*
> > > > > +	 * The V_ACTIVE_LINES field in the DSI_VTIMING_CFG
> > > > > +	 * register is 11-bit.
> > > > > +	 */
> > > > > +	if (mode->vdisplay > 0x7ff)
> > > > > +		return MODE_BAD_VVALUE;
> > > > > +
> > > > > +	return MODE_OK;
> > > > > +}
> > > > > +
> > > > > +
> > > > > +static unsigned int max_mbps_to_testdin(unsigned int max_mbps)
> > > > > +{
> > > > > +	unsigned int i;
> > > > > +
> > > > > +	for (i =3D 0; i < ARRAY_SIZE(dptdin_map); i++)
> > > > > +		if (dptdin_map[i].max_mbps =3D=3D max_mbps)
> > > > > +			return dptdin_map[i].testdin;
> > > > > +
> > > > > +	return -EINVAL;
> > > > > +}
> > > > > +
> > > > > +static inline void dsi_write(struct imx_mipi_dsi *dsi, u32 reg, =
u32 val)
> > > > > +{
> > > > > +	writel(val, dsi->base + reg);
> > > > > +}
> > > > > +
> > > > > +static int imx_mipi_dsi_phy_init(void *priv_data)
> > > > > +{
> > > > > +	struct imx_mipi_dsi *dsi =3D priv_data;
> > > > > +	int testdin;
> > > > > +
> > > > > +	testdin =3D max_mbps_to_testdin(dsi->lane_mbps);
> > > > > +	if (testdin < 0) {
> > > > > +		DRM_DEV_ERROR(dsi->dev,
> > > > > +			      "failed to get testdin for %dmbps lane clock\n",
> > > > > +			      dsi->lane_mbps);
> > > > > +		return testdin;
> > > > > +	}
> > > > > +
> > > > > +	dsi_write(dsi, DSI_PHY_IF_CTRL, PHY_IF_CTRL_RESET);
> > > > > +	dsi_write(dsi, DSI_PWR_UP, POWERUP);
> > > > > +
> > > > > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR=
);
> > > > > +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_TESTEN | PHY_TESTDOUT(0) =
|
> > > > > +		  PHY_TESTDIN(0x44));
> > > > > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
> > > > > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR=
);
> > > > > +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | PHY_TESTDOUT(0=
) |
> > > > > +		  PHY_TESTDIN(testdin));
> > > > > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
> > > > > +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR=
);
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static int imx_mipi_dsi_get_lane_mbps(void *priv_data,
> > > > > +				      const struct drm_display_mode *mode,
> > > > > +				      unsigned long mode_flags, u32 lanes,
> > > > > +				      u32 format, unsigned int *lane_mbps)
> > > > > +{
> > > > > +	struct imx_mipi_dsi *dsi =3D priv_data;
> > > > > +	int bpp;
> > > > > +	unsigned int i, target_mbps, mpclk;
> > > > > +	unsigned long pllref;
> > > > > +
> > > > > +	bpp =3D mipi_dsi_pixel_format_to_bpp(format);
> > > > > +	if (bpp < 0) {
> > > > > +		DRM_DEV_ERROR(dsi->dev, "failed to get bpp for format %d: %d\n=
",
> > > > > +			      format, bpp);
> > > > > +		return bpp;
> > > > > +	}
> > > > > +
> > > > > +	pllref =3D clk_get_rate(dsi->pllref_clk);
> > > > > +	if (pllref !=3D 27000000)
> > > > > +		DRM_WARN("DSI pllref_clk not set to 27Mhz\n");
> > > > > +
> > > > > +	mpclk =3D DIV_ROUND_UP(mode->clock, MSEC_PER_SEC);
> > > > > +	if (mpclk) {
> > > > > +		/* take 1/0.7 blanking overhead into consideration */
> > > > > +		target_mbps =3D (mpclk * (bpp / lanes) * 10) / 7;
> > > > > +	} else {
> > > > > +		DRM_DEV_ERROR(dsi->dev, "use default 1Gbps DPHY pll clock\n");
> > > > > +		target_mbps =3D 1000;
> > > > > +	}
> > > > > +
> > > > > +	DRM_DEV_DEBUG(dsi->dev, "target pllref_clk frequency is %uMbps\=
n",
> > > > > +		      target_mbps);
> > > > > +
> > > > > +	for (i =3D 0; i < ARRAY_SIZE(dptdin_map); i++) {
> > > > > +		if (target_mbps < dptdin_map[i].max_mbps) {
> > > > > +			*lane_mbps =3D dptdin_map[i].max_mbps;
> > > > > +			dsi->lane_mbps =3D *lane_mbps;
> > > > > +			DRM_DEV_DEBUG(dsi->dev,
> > > > > +				      "real pllref_clk frequency is %uMbps\n",
> > > > > +				      *lane_mbps);
> > > > > +			return 0;
> > > > > +		}
> > > > > +	}
> > > > > +
> > > > > +	DRM_DEV_ERROR(dsi->dev, "DPHY clock frequency %uMbps is out of =
range\n",
> > > > > +		      target_mbps);
> > > > > +
> > > > > +	return -EINVAL;
> > > > > +}
> > > > > +
> > > > > +static int
> > > > > +dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mb=
ps,
> > > > > +			   struct dw_mipi_dsi_dphy_timing *timing)
> > > > > +{
> > > > > +	timing->clk_hs2lp =3D 0x40;
> > > > > +	timing->clk_lp2hs =3D 0x40;
> > > > > +	timing->data_hs2lp =3D 0x40;
> > > > > +	timing->data_lp2hs =3D 0x40;
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_imx6_phy_ops=
 =3D {
> > > > > +	.init =3D imx_mipi_dsi_phy_init,
> > > > > +	.get_lane_mbps =3D imx_mipi_dsi_get_lane_mbps,
> > > > > +	.get_timing =3D dw_mipi_dsi_phy_get_timing,
> > > > > +};
> > > > > +
> > > > > +static struct dw_mipi_dsi_plat_data imx6q_mipi_dsi_drv_data =3D =
{
> > > > > +	.max_data_lanes =3D 2,
> > > > > +	.mode_valid =3D imx_mipi_dsi_mode_valid,
> > > > > +	.phy_ops =3D &dw_mipi_dsi_imx6_phy_ops,
> > > > > +};
> > > > > +
> > > > > +static const struct of_device_id imx_dsi_dt_ids[] =3D {
> > > > > +	{
> > > > > +		.compatible =3D "fsl,imx6q-mipi-dsi",
> > > > > +		.data =3D &imx6q_mipi_dsi_drv_data,
> > > > > +	},
> > > > > +	{ /* sentinel */ }
> > > > > +};
> > > > > +MODULE_DEVICE_TABLE(of, imx_dsi_dt_ids);
> > > > > +
> > > > > +static int imx_mipi_dsi_bind(struct device *dev, struct device *=
master,
> > > > > +			     void *data)
> > > > > +{
> > > > > +	struct imx_mipi_dsi *dsi =3D dev_get_drvdata(dev);
> > > > > +	struct drm_device *drm =3D data;
> > > > > +	int ret;
> > > > > +
> > > > > +	ret =3D clk_prepare_enable(dsi->pllref_clk);
> > > > > +	if (ret) {
> > > > > +		DRM_DEV_ERROR(dev, "Failed to enable pllref_clk: %d\n", ret);
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	ret =3D imx_drm_create_encoder(drm, &dsi->encoder, dsi->dev->of=
_node);
> > > > > +	if (ret) {
> > > > > +		DRM_DEV_ERROR(dsi->dev, "failed to create drm encoder\n");
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	drm_encoder_helper_add(&dsi->encoder, &imx_mipi_dsi_encoder_hel=
pers);
> > > > > +
> > > > > +	ret =3D dw_mipi_dsi_bind(dsi->mipi_dsi, &dsi->encoder);
> > > > > +	if (ret) {
> > > > > +		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static void imx_mipi_dsi_unbind(struct device *dev, struct devic=
e *master,
> > > > > +				void *data)
> > > > > +{
> > > > > +	struct imx_mipi_dsi *dsi =3D dev_get_drvdata(dev);
> > > > > +
> > > > > +	dw_mipi_dsi_unbind(dsi->mipi_dsi);
> > > > > +
> > > > > +	clk_disable_unprepare(dsi->pllref_clk);
> > > > > +}
> > > > > +
> > > > > +static const struct component_ops imx_mipi_dsi_ops =3D {
> > > > > +	.bind	=3D imx_mipi_dsi_bind,
> > > > > +	.unbind	=3D imx_mipi_dsi_unbind,
> > > > > +};
> > > > > +
> > > > > +static int imx_mipi_dsi_probe(struct platform_device *pdev)
> > > > > +{
> > > > > +	struct device *dev =3D &pdev->dev;
> > > > > +	const struct of_device_id *of_id =3D of_match_device(imx_dsi_dt=
_ids, dev);
> > > > > +	struct dw_mipi_dsi_plat_data *pdata =3D (struct dw_mipi_dsi_pla=
t_data *) of_id->data;
> > > > > +	struct imx_mipi_dsi *dsi;
> > > > > +	struct resource *res;
> > > > > +	int ret;
> > > > > +
> > > > > +	dsi =3D devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
> > > > > +	if (!dsi)
> > > > > +		return -ENOMEM;
> > > > > +
> > > > > +	dsi->dev =3D dev;
> > > > > +
> > > > > +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > > > +	dsi->base =3D devm_ioremap_resource(dev, res);
> > > > > +	if (IS_ERR(dsi->base)) {
> > > > > +		ret =3D PTR_ERR(dsi->base);
> > > > > +		DRM_DEV_ERROR(dev, "Unable to get dsi registers: %d\n", ret);
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	dsi->pllref_clk =3D devm_clk_get(dev, "ref");
> > > > > +	if (IS_ERR(dsi->pllref_clk)) {
> > > > > +		ret =3D PTR_ERR(dsi->pllref_clk);
> > > > > +		DRM_DEV_ERROR(dev, "Unable to get pllref_clk: %d\n", ret);
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	dsi->mux_sel =3D syscon_regmap_lookup_by_phandle(dev->of_node, =
"fsl,gpr");
> > > > > +	if (IS_ERR(dsi->mux_sel)) {
> > > > > +		ret =3D PTR_ERR(dsi->mux_sel);
> > > > > +		DRM_DEV_ERROR(dev, "Failed to get GPR regmap: %d\n", ret);
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	dev_set_drvdata(dev, dsi);
> > > > > +
> > > > > +	imx6q_mipi_dsi_drv_data.base =3D dsi->base;
> > > > > +	imx6q_mipi_dsi_drv_data.priv_data =3D dsi;
> > > > > +
> > > > > +	dsi->mipi_dsi =3D dw_mipi_dsi_probe(pdev, pdata);
> > > > > +	if (IS_ERR(dsi->mipi_dsi)) {
> > > > > +		ret =3D PTR_ERR(dsi->mipi_dsi);
> > > > > +		DRM_DEV_ERROR(dev, "Failed to probe DW DSI host: %d\n", ret);
> > > > > +		goto err_clkdisable;
> > > > > +	}
> > > > > +
> > > > > +	return component_add(&pdev->dev, &imx_mipi_dsi_ops);
> > > > > +
> > > > > +err_clkdisable:
> > > > > +	clk_disable_unprepare(dsi->pllref_clk);
> > > > > +	return ret;
> > > > > +}
> > > > > +
> > > > > +static int imx_mipi_dsi_remove(struct platform_device *pdev)
> > > > > +{
> > > > > +	component_del(&pdev->dev, &imx_mipi_dsi_ops);
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static struct platform_driver imx_mipi_dsi_driver =3D {
> > > > > +	.probe		=3D imx_mipi_dsi_probe,
> > > > > +	.remove		=3D imx_mipi_dsi_remove,
> > > > > +	.driver		=3D {
> > > > > +		.of_match_table =3D imx_dsi_dt_ids,
> > > > > +		.name	=3D "dw-mipi-dsi-imx6",
> > > > > +	},
> > > > > +};
> > > > > +module_platform_driver(imx_mipi_dsi_driver);
> > > > > +
> > > > > +MODULE_DESCRIPTION("i.MX6 MIPI DSI host controller driver");
> > > > > +MODULE_AUTHOR("Liu Ying <victor.liu-3arQi8VN3Tc@public.gmane.org>");
> > > > > +MODULE_AUTHOR("Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>");
> > > > > +MODULE_LICENSE("GPL");
> > > > > -- > 2.26.0
> > > > >
> > > >=20
> > > > --=20
> > > > Regards,
> > > >=20
> > > > Laurent Pinchart
> > > > _______________________________________________
> > > > dri-devel mailing list
> > > > dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
> > > > https://urldefense.com/v3/__https://lists.freedesktop.org/mailman/l=
istinfo/dri-devel__;!!A4F2R9G_pg!NhBPZGbhUKJY_mrt-2Ft_ja04W8XPqZ8P3-wntQomu=
30weMxgQfUEXZgn99IbZV5$=20
> > >=20
> > > --=20
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > https://urldefense.com/v3/__http://blog.ffwll.ch__;!!A4F2R9G_pg!NhBPZ=
GbhUKJY_mrt-2Ft_ja04W8XPqZ8P3-wntQomu30weMxgQfUEXZgn_FrwlWk$=20
>=20
> --=20
> Daniel Vetter
> Software Engineer, Intel Corporation
> https://urldefense.com/v3/__http://blog.ffwll.ch__;!!A4F2R9G_pg!NhBPZGbhU=
KJY_mrt-2Ft_ja04W8XPqZ8P3-wntQomu30weMxgQfUEXZgn_FrwlWk$=20
> _______________________________________________
> dri-devel mailing list
> dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
> https://urldefense.com/v3/__https://lists.freedesktop.org/mailman/listinf=
o/dri-devel__;!!A4F2R9G_pg!NhBPZGbhUKJY_mrt-2Ft_ja04W8XPqZ8P3-wntQomu30weMx=
gQfUEXZgn99IbZV5$=20
