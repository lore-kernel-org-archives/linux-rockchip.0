From: Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v4 06/13] drm/bridge: Add Synopsys DesignWare MIPI DSI
 host controller driver
Date: Fri, 20 Nov 2015 17:07:07 +0100
Message-ID: <20151120160706.GE3300@ulmo.nvidia.com>
References: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
 <1448007339-10966-7-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0855699060=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448007339-10966-7-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Chris Zhong <zyw@rock-chips.com>
Cc: Vincent Palatin <vpalatin@chromium.org>, Andrew Bresticker <abrestic@chromium.org>, emil.l.velikov@gmail.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, rmk+kernel@arm.linux.org.uk, Rahul Sharma <rahul.sharma@samsung.com>, ajaykumar.rs@samsung.com
List-Id: linux-rockchip.vger.kernel.org

--===============0855699060==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p2kqVDKq5asng8Dg"
Content-Disposition: inline

--p2kqVDKq5asng8Dg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 20, 2015 at 04:15:32PM +0800, Chris Zhong wrote:
> add Synopsys DesignWare MIPI DSI host controller driver support.
>=20
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> ---
>=20
> Changes in v4:
> eliminate some warnning
>=20
> Changes in v3: None
> Changes in v2: None
>=20
>  drivers/gpu/drm/bridge/Kconfig       |   11 +
>  drivers/gpu/drm/bridge/Makefile      |    1 +
>  drivers/gpu/drm/bridge/dw_mipi_dsi.c | 1056 ++++++++++++++++++++++++++++=
++++++
>  include/drm/bridge/dw_mipi_dsi.h     |   27 +
>  4 files changed, 1095 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/dw_mipi_dsi.c
>  create mode 100644 include/drm/bridge/dw_mipi_dsi.h
>=20
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kcon=
fig
> index 6dddd39..c0900e0 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -22,6 +22,17 @@ config DRM_DW_HDMI_AHB_AUDIO
>  	  Designware HDMI block.  This is used in conjunction with
>  	  the i.MX6 HDMI driver.
> =20
> +config DRM_DW_MIPI_DSI
> +	tristate "Synopsys DesignWare MIPI DSI host controller bridge"
> +	depends on DRM
> +	select DRM_KMS_HELPER
> +	select DRM_MIPI_DSI
> +	select DRM_PANEL
> +	help
> +	  Choose this if you want to use the Synopsys DesignWare MIPI DSI host
> +	  controller bridge. If M is selected, the module will be
> +	  called dw_mipi_dsi. DRM_MIPI_DSI support is required for this driver
> +	  to work.

Just drop the last sentence, it doesn't add value since that's already
expressed in the "select DRM_MIPI_DSI" statement.

Also, please use hyphens instead of underscore to separate parts in
module names.

> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Mak=
efile
> index d4e28be..d908c4b 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -2,5 +2,6 @@ ccflags-y :=3D -Iinclude/drm
> =20
>  obj-$(CONFIG_DRM_DW_HDMI) +=3D dw_hdmi.o
>  obj-$(CONFIG_DRM_DW_HDMI_AHB_AUDIO) +=3D dw_hdmi-ahb-audio.o
> +obj-$(CONFIG_DRM_DW_MIPI_DSI) +=3D dw_mipi_dsi.o

Like I said above, this should be dw-mipi-dsi.o. I know dw_hdmi uses the
underscores, but that's something I plan on fixing.

>  obj-$(CONFIG_DRM_NXP_PTN3460) +=3D nxp-ptn3460.o
>  obj-$(CONFIG_DRM_PARADE_PS8622) +=3D parade-ps8622.o
> diff --git a/drivers/gpu/drm/bridge/dw_mipi_dsi.c b/drivers/gpu/drm/bridg=
e/dw_mipi_dsi.c
> new file mode 100644
> index 0000000..23b612d
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/dw_mipi_dsi.c
> @@ -0,0 +1,1056 @@
> +/*
> + * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd

Does this need to be updated? We're pretty far into 2015 by now.

> +struct dw_mipi_dsi {
> +	struct mipi_dsi_host dsi_host;
> +	struct drm_connector connector;
> +	struct drm_encoder *encoder;

struct drm_bridge already has a pointer to an encoder, can't you reuse
that instead?

> +	struct drm_bridge *bridge;

Typically you'd embed the bridge into the driver structure.

> +	struct drm_panel *panel;
> +	struct device *dev;
> +
> +	void __iomem *base;
> +
> +	struct clk *pllref_clk;
> +	struct clk *cfg_clk;
> +	struct clk *pclk;
> +
> +	unsigned int lane_mbps; /* per lane */
> +	u32 channel;
> +	u32 lanes;
> +	u32 format;
> +	u16 input_div;
> +	u16 feedback_div;
> +	struct drm_display_mode *mode;
> +
> +	const struct dw_mipi_dsi_plat_data *pdata;
> +
> +	bool enabled;
> +};
> +
> +enum {
> +	STATUS_TO_CLEAR,
> +	STATUS_TO_SET,
> +};

This seems to be used only as replacement for false/true, so you should
just use false/true instead and remove these.

> +/* The table is based on 27MHz DPHY pll reference clock. */
> +static const struct dphy_pll_testdin_map dptdin_map[] =3D {
> +	{90, 0x00}, {100, 0x10}, {110, 0x20}, {130, 0x01},
> +	{140, 0x11}, {150, 0x21}, {170, 0x02}, {180, 0x12},
> +	{200, 0x22}, {220, 0x03}, {240, 0x13}, {250, 0x23},
> +	{270, 0x04}, {300, 0x14}, {330, 0x05}, {360, 0x15},
> +	{400, 0x25}, {450, 0x06}, {500, 0x16}, {550, 0x07},
> +	{600, 0x17}, {650, 0x08}, {700, 0x18}, {750, 0x09},
> +	{800, 0x19}, {850, 0x29}, {900, 0x39}, {950, 0x0a},
> +	{1000, 0x1a}, {1050, 0x2a}, {1100, 0x3a}, {1150, 0x0b},
> +	{1200, 0x1b}, {1250, 0x2b}, {1300, 0x3b}, {1350, 0x0c},
> +	{1400, 0x1c}, {1450, 0x2c}, {1500, 0x3c}
> +};

Might be worth reformatting this to be more table-like.

> +static inline void dsi_write(struct dw_mipi_dsi *dsi, u32 reg, u32 val)
> +{
> +	writel(val, dsi->base + reg);
> +}
> +
> +static inline u32 dsi_read(struct dw_mipi_dsi *dsi, u32 reg)
> +{
> +	return readl(dsi->base + reg);
> +}
> +
> +static inline void dsi_modify(struct dw_mipi_dsi *dsi, u32 reg,
> +			      u32 mask, u32 val)
> +{
> +	u32 v;
> +
> +	v =3D readl(dsi->base + reg);
> +	v &=3D ~mask;
> +	v |=3D val;
> +	writel(v, dsi->base + reg);
> +}

Perhaps reuse dsi_read() and dsi_write() here?

> +static int check_status(struct dw_mipi_dsi *dsi, u32 reg, u32 status,
> +			unsigned int timeout, bool to_set)
> +{
> +	unsigned long expire;
> +	bool out;
> +	u32 val;
> +
> +	expire =3D jiffies + msecs_to_jiffies(timeout);
> +	for (;;) {
> +		val =3D dsi_read(dsi, reg);
> +		out =3D to_set ? ((val & status) =3D=3D status) : !(val & status);
> +		if (out)
> +			break;
> +
> +		if (time_after(jiffies, expire))
> +			return -ETIMEDOUT;
> +
> +		cpu_relax();
> +	}
> +
> +	return 0;
> +}

Perhaps use the helpers in linux/iopoll.h?

> +/*
> + * The controller should generate 2 frames before
> + * preparing the peripheral.
> + */
> +static void dw_mipi_dsi_wait_for_two_frames(struct dw_mipi_dsi *dsi)
> +{
> +	unsigned long expire;
> +	int refresh, two_frames;
> +
> +	refresh =3D drm_mode_vrefresh(dsi->mode);
> +	two_frames =3D DIV_ROUND_UP(MSEC_PER_SEC, refresh) * 2;
> +
> +	expire =3D jiffies + msecs_to_jiffies(two_frames);
> +	while (time_before(jiffies, expire))
> +		cpu_relax();
> +}

That's kind of rude. You know already how long it will take for two
frames to be sent, why not just sleep for that time? usleep_range() or
in this case most likely msleep() would be more civil options.

> +static void dw_mipi_dsi_phy_test(struct dw_mipi_dsi *dsi, u8 test_code,
> +				 u8 test_data)
> +{
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
> +
> +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_TESTEN | PHY_TESTDOUT(0) |
> +					  PHY_TESTDIN(test_code));
> +
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
> +
> +	dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | PHY_TESTDOUT(0) |
> +					  PHY_TESTDIN(test_data));
> +
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
> +}

This looks like it's actually programming something, rather than
testing. Can you perhaps add a comment to this explaining what exactly
it's doing?

> +static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
> +{
> +	int ret, testdin, vco;
> +
> +	vco =3D (dsi->lane_mbps < 200) ? 0 : (dsi->lane_mbps + 100) / 200;
> +
> +	testdin =3D max_mbps_to_testdin(dsi->lane_mbps);
> +	if (testdin < 0) {
> +		dev_err(dsi->dev,
> +			"failed to get testdin for %dmbps lane clock\n",
> +			dsi->lane_mbps);
> +		return testdin;
> +	}
> +
> +	dsi_write(dsi, DSI_PWR_UP, POWERUP);
> +
> +	dw_mipi_dsi_phy_test(dsi, 0x10, 0x80 | (vco & 0x7) << 3 | 0x3);
> +	dw_mipi_dsi_phy_test(dsi, 0x11, 0x8);
> +	dw_mipi_dsi_phy_test(dsi, 0x12, 0xc0);
> +
> +	dw_mipi_dsi_phy_test(dsi, 0x44, testdin << 1);
> +
> +	dw_mipi_dsi_phy_test(dsi, 0x17, dsi->input_div - 1);
> +	dw_mipi_dsi_phy_test(dsi, 0x18, (dsi->feedback_div - 1) & 0x1f);
> +	dw_mipi_dsi_phy_test(dsi, 0x18, (dsi->feedback_div - 1) >> 5 | 0x80);
> +	dw_mipi_dsi_phy_test(dsi, 0x19, 0x30);
> +
> +	dw_mipi_dsi_phy_test(dsi, 0x20, 0x4d);
> +	dw_mipi_dsi_phy_test(dsi, 0x21, 0x3d);
> +	dw_mipi_dsi_phy_test(dsi, 0x21, 0xdf);
> +	dw_mipi_dsi_phy_test(dsi, 0x22, 0x7);
> +	dw_mipi_dsi_phy_test(dsi, 0x22, 0x87);
> +	dw_mipi_dsi_phy_test(dsi, 0x70, 0x80 | 0xf);
> +	dw_mipi_dsi_phy_test(dsi, 0x71, 0x80 | 0x55);
> +	dw_mipi_dsi_phy_test(dsi, 0x72, 0x40 | 0xa);

Can we have symbolic names for these values?

> +	dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK
> +		  | PHY_UNRSTZ | PHY_UNSHUTDOWNZ);

I think it's more conventional to put the | on the first line. I also
think it'd be more readable to align PHY_UNRSTZ | PHY_UNSHUTDOWNZ with
the other values that form this parameter, like so:

	dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
				     PHY_UNRSTZ | PHY_UNSHUTDOWNZ);

> +static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi)
> +{
> +	int bpp, i;

i should be unsigned int.

> +	unsigned int max_mbps =3D 0, target_mbps =3D 1000;
> +	unsigned long mpclk, pllref, tmp;
> +	int m =3D 1, n =3D 1, pre;

These can be unsigned int as well.

> +
> +	for (i =3D 0; i < ARRAY_SIZE(dptdin_map); i++) {
> +		if (max_mbps < dptdin_map[i].max_mbps)
> +			max_mbps =3D dptdin_map[i].max_mbps;
> +	}

Looks to me like this will always be 1500. Why go through the trouble of
looking up the value if you know that the table is sorted by increasing
max_mbps? Hard-coding to 1500 isn't very nice either, but you could do
something like:

	max_mbps =3D dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mbps;

> +static int dw_mipi_dsi_host_attach(struct mipi_dsi_host *host,
> +				   struct mipi_dsi_device *device)
> +{
> +	struct dw_mipi_dsi *dsi =3D host_to_dsi(host);
> +
> +	if (device->lanes > dsi->pdata->max_data_lanes) {
> +		dev_err(dsi->dev, "the number of data lanes(%d) is too many\n",

Use %u for unsigned integers.

> +				device->lanes);
> +		return -EINVAL;
> +	}
> +
> +	if (!(device->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) ||
> +	    !(device->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)) {
> +		dev_err(dsi->dev, "device mode is unsupported\n");
> +		return -EINVAL;
> +	}
> +
> +	dsi->lanes =3D device->lanes;
> +	dsi->channel =3D device->channel;
> +	dsi->format =3D device->format;
> +	dsi->panel =3D of_drm_find_panel(device->dev.of_node);

You might want to check this for validity?

> +	drm_panel_attach(dsi->panel, &dsi->connector);

You should check for errors here.

> +static int dw_mipi_dsi_dcs_short_write(struct dw_mipi_dsi *dsi,
> +				       const struct mipi_dsi_msg *msg)
> +{
> +	const u16 *tx_buf =3D msg->tx_buf;
> +	u32 val =3D GEN_HDATA(*tx_buf) | GEN_HTYPE(msg->type);
> +
> +	if (msg->tx_len > 2) {
> +		dev_err(dsi->dev, "too long tx buf length %d for short write\n",
> +			(int)msg->tx_len);

No need to cast here. Simply use %zu as the format specifier.

> +		return -EINVAL;
> +	}
> +
> +	return dw_mipi_dsi_gen_pkt_hdr_write(dsi, val);
> +}
> +
> +static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
> +				      const struct mipi_dsi_msg *msg)
> +{
> +	const u32 *tx_buf =3D msg->tx_buf;
> +	int len =3D msg->tx_len, pld_data_bytes =3D sizeof(*tx_buf), ret;
> +	u32 val =3D GEN_HDATA(msg->tx_len) | GEN_HTYPE(msg->type);
> +	u32 remainder =3D 0;
> +
> +	if (msg->tx_len < 3) {
> +		dev_err(dsi->dev, "wrong tx buf length %d for long write\n",
> +			(int)msg->tx_len);

Same here.

> +static void dw_mipi_dsi_bridge_enable(struct drm_bridge *bridge)
> +{
> +	struct dw_mipi_dsi *dsi =3D bridge->driver_private;
> +
> +	if (dsi->enabled)
> +		return;
> +
> +	if (!IS_ERR(dsi->cfg_clk))
> +		clk_prepare_enable(dsi->cfg_clk);
> +
> +	clk_prepare_enable(dsi->pclk);

Please always error-check clk_prepare() and clk_enable() (or the
combination clk_prepare_enable()). They can fail.

> +	dw_mipi_dsi_phy_init(dsi);
> +	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_VID_MODE);
> +	dw_mipi_dsi_wait_for_two_frames(dsi);
> +	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_CMD_MODE);
> +	drm_panel_prepare(dsi->panel);
> +	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_VID_MODE);
> +	clk_disable_unprepare(dsi->pclk);
> +
> +	if (!IS_ERR(dsi->cfg_clk))
> +		clk_disable_unprepare(dsi->cfg_clk);
> +
> +	drm_panel_enable(dsi->panel);
> +
> +	dsi->enabled =3D true;
> +}
> +
> +static void dw_mipi_dsi_bridge_disable(struct drm_bridge *bridge)
> +{
> +	struct dw_mipi_dsi *dsi =3D bridge->driver_private;
> +	unsigned long expire;
> +
> +	if (!dsi->enabled)
> +		return;
> +
> +	drm_panel_disable(dsi->panel);
> +
> +	if (!IS_ERR(dsi->cfg_clk))
> +		clk_prepare_enable(dsi->cfg_clk);
> +
> +	clk_prepare_enable(dsi->pclk);
> +	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_CMD_MODE);
> +	drm_panel_unprepare(dsi->panel);
> +	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_VID_MODE);
> +
> +	/*
> +	 * This is necessary to make sure the peripheral
> +	 * will be driven normally when the display is
> +	 * enabled again later.
> +	 */

You can use longer lines for comments. No need to split it across three
lines if you can make it fit on two.

> +	expire =3D jiffies + msecs_to_jiffies(120);
> +	while (time_before(jiffies, expire))
> +		cpu_relax();

Again, cpu_relax() isn't really relaxing the CPU to the extent that it
might lead you to think. If you know you want to sleep for 120 ms, just
do msleep(120).

> +
> +	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_CMD_MODE);
> +	dw_mipi_dsi_disable(dsi);
> +	clk_disable_unprepare(dsi->pclk);
> +
> +	if (!IS_ERR(dsi->cfg_clk))
> +		clk_disable_unprepare(dsi->cfg_clk);
> +
> +	dsi->enabled =3D false;
> +}
> +
> +static void dw_mipi_dsi_bridge_nope(struct drm_bridge *bridge)

Hehe, perhaps dw_mipi_dsi_bridge_nop()? Or simply leave the function
pointers NULL, but I guess you had to add this because the DRM bridge
infrastructure doesn't allow these to be optional. We might want to
change that.

> +{
> +	/* do nothing */
> +}
> +
> +static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
> +{
> +	dsi_write(dsi, DSI_PWR_UP, RESET);
> +	dsi_write(dsi, DSI_PHY_RSTZ, PHY_DISFORCEPLL | PHY_DISABLECLK
> +		  | PHY_RSTZ | PHY_SHUTDOWNZ);
> +	dsi_write(dsi, DSI_CLKMGR_CFG, TO_CLK_DIVIDSION(10) |
> +		  TX_ESC_CLK_DIVIDSION(7));
> +	dsi_write(dsi, DSI_LPCLK_CTRL, PHY_TXREQUESTCLKHS);
> +}
> +
> +static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
> +				   struct drm_display_mode *mode)
> +{
> +	u32 val =3D 0, calor =3D 0;

"color"?

> +static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
> +					struct drm_display_mode *mode,
> +					struct drm_display_mode *adjusted_mode)
> +{
> +	struct dw_mipi_dsi *dsi =3D bridge->driver_private;
> +	int ret;
> +
> +	dsi->mode =3D adjusted_mode;
> +
> +	ret =3D dw_mipi_dsi_get_lane_bps(dsi);
> +	if (ret < 0)
> +		return;
> +
> +	if (!IS_ERR(dsi->cfg_clk))
> +		clk_prepare_enable(dsi->cfg_clk);
> +
> +	clk_prepare_enable(dsi->pclk);

Again, check errors from clk_prepare_enable(), ...

> +	dw_mipi_dsi_init(dsi);
> +	dw_mipi_dsi_dpi_config(dsi, mode);
> +	dw_mipi_dsi_packet_handler_config(dsi);
> +	dw_mipi_dsi_video_mode_config(dsi);
> +	dw_mipi_dsi_video_packet_config(dsi, mode);
> +	dw_mipi_dsi_command_mode_config(dsi);
> +	dw_mipi_dsi_line_timer_config(dsi);
> +	dw_mipi_dsi_vertical_timing_config(dsi);
> +	dw_mipi_dsi_dphy_timing_config(dsi);
> +	dw_mipi_dsi_dphy_interface_config(dsi);
> +	dw_mipi_dsi_clear_err(dsi);
> +	dw_mipi_dsi_phy_init(dsi);
> +	dw_mipi_dsi_wait_for_two_frames(dsi);
> +	drm_panel_prepare(dsi->panel);

=2E.. and drm_panel_prepare().

> +static struct drm_bridge_funcs dw_mipi_dsi_bridge_funcs =3D {

static const, please.

> +int dw_mipi_dsi_bind(struct device *dev, struct device *master, void *da=
ta,
> +		     struct drm_encoder *encoder,
> +		     const struct dw_mipi_dsi_plat_data *pdata)
> +{
[...]
> +	dsi->cfg_clk =3D devm_clk_get(dev, "cfg");
> +	if (IS_ERR(dsi->cfg_clk))
> +		dev_warn(dev, "Have no configuration clock\n");

Is this truly optional?

> +	dsi->pclk =3D devm_clk_get(dev, "pclk");
> +	if (IS_ERR(dsi->pclk)) {
> +		ret =3D PTR_ERR(dsi->pclk);
> +		dev_err(dev, "Unable to get configuration clock: %d\n", ret);

pclk doesn't seem to be a "configuration clock".

> +	dev_info(dev, "version number is 0x%08x\n", val);

Do you really need this information? What purpose does it serve to have
this in the kernel log?

> diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mip=
i_dsi.h
> new file mode 100644
> index 0000000..2e351e4
> --- /dev/null
> +++ b/include/drm/bridge/dw_mipi_dsi.h
> @@ -0,0 +1,27 @@
> +/*
> + * Copyright (C) 2014-2015 Freescale Semiconductor, Inc.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * as published by the Free Software Foundation; either version 2
> + * of the License, or (at your option) any later version.
> + */
> +
> +#ifndef __DW_MIPI_DSI__
> +#define __DW_MIPI_DSI__
> +
> +#include <drm/drmP.h>
> +
> +struct dw_mipi_dsi_plat_data {
> +	unsigned int max_data_lanes;
> +	enum drm_mode_status (*mode_valid)(struct drm_connector *connector,
> +					   struct drm_display_mode *mode);
> +};
> +
> +int dw_mipi_dsi_get_encoder_pixel_format(struct drm_encoder *encoder);
> +
> +int dw_mipi_dsi_bind(struct device *dev, struct device *master,
> +		     void *data, struct drm_encoder *encoder,
> +		     const struct dw_mipi_dsi_plat_data *pdata);
> +void dw_mipi_dsi_unbind(struct device *dev, struct device *master, void =
*data);
> +#endif	/* __DW_MIPI_DSI__ */

Should have a blank line between the two above.

Thierry

--p2kqVDKq5asng8Dg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWT0UoAAoJEN0jrNd/PrOhEFkP/A0/7NpgxjgjJ4G4Twr4niHb
JxK2MV73684kjfmBSPoogMREjlqVbFnqgQ1XEkcGHfBmKneuRHTVj6IAv4yFfGHC
nNJafNo3WygZGyvoR2tDseQf7ZZXt1hp6KThlW+NPMJYYxuTk612Chlqn9/uDLDQ
/HTDK05gaZExAXBl2ksr7DFxYd01VRS1BhWjXwHL+WUlmZsbraeOghfmWx2SIqrW
6kde13ubcGjhdDgTzoEpoQ7NPKfFYAKCAkZ3mJMOzJA0TCuR/BzPClYaQPmPczuw
DQa2PBp5QATRTe9McwYTa185MNtFbqKw7H9QyTs8zWbwsXSNvDuNWN/O4gnGydUc
/6kGal0KSntyLNzvgJddQoXV2xK1FZa7zQp4jlx52chVL4QhdK00bhDbCc9WXrdr
YRiVi/jSxmoky1mvhVOR2k7CoNY1OGTNPApOnTdjkgBdu1Cn1OyOxGcng5j1AbFc
FIyHdskuBeNHke7vRxqMMuuE6DHiimmyR8PmDu2f34sBdI1wJv+CEuyO1hIumgqX
Y3KjubJtfjn7j1aTGT9Ow5R6diO9LqN3DGm/p8hqk0OLP/93PPQFKo10SLKCvidg
SGe5CVAXJzB0SzWaSEx4fc5mfAgbwjYVTTXT8iSiv1T9uqHaoa4HWhiT7R/Wl4gk
ZJGEzcywDbym1gewCA5G
=cnrp
-----END PGP SIGNATURE-----

--p2kqVDKq5asng8Dg--

--===============0855699060==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0855699060==--
