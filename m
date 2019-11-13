From: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v2 2/4] drm: bridge: dw_mipi_dsi: abstract register access
 using reg_fields
Date: Wed, 13 Nov 2019 15:15:22 +0000
Message-ID: <CACvgo51TpL1GMwf-QFidsbAQ-GiE6ry+QHwmi9x0Nen9Gg4B1g@mail.gmail.com>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com> <20191106163031.808061-3-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191106163031.808061-3-adrian.ratiu@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: LAKML <linux-arm-kernel@lists.infradead.org>, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com, "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>, ML dri-devel <dri-devel@lists.freedesktop.org>, Boris Brezillon <boris.brezillon@collabora.com>, Neil Armstrong <narmstrong@baylibre.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Adrian,

On Wed, 6 Nov 2019 at 16:31, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Register existence, address/offsets, field layouts, reserved bits and
> so on differ between MIPI-DSI versions and between SoC vendor boards.
> Despite these differences the hw IP and protocols are mostly the same
> so the generic driver can be made to compensate these differences.
>
> The current Rockchip and STM drivers hardcoded a lot of their common
> definitions in the bridge code because they're based on DSI v1.30 and
> 1.31 which are relatively close, but in order to support older/future
> versions with more diverging layouts like the v1.01 present on imx6,
> we abstract some of the register accesses via the regmap field APIs.
>
> The bridge detects the DSI core version and initializes the required
> regmap register layout, so platform drivers will continue to use the
> regmap as before. Other DSI versions / register layouts can easily be
> added in the future by only changing the bridge code.
>
> An additional benefit of using the reg_field API is that much of the
> bit-shifting and masking boilerplate is removed because it's now
> handled automatically by the regmap subsystem.
>
> Not all register accesses have been converted: only the minimum diff
> between the three host controller versions supported by the current
> vendor platform drivers (rockchip, stm and now imx), more can be added
> in the future as needed.
>
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>

With the extra const mentioned below the patch is:
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

> +
> +static struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
It's a non-const here, while we consider it a const below. I'd add the explicit
const declaration here.

> +#define INIT_FIELD(f) INIT_FIELD_CFG(field_##f, cfg_##f)
> +#define INIT_FIELD_CFG(f, conf)                                                \
> +       do {                                                            \
> +               dsi->f = devm_regmap_field_alloc(dsi->dev, dsi->regs,   \
> +                                                variant->conf);        \
> +               if (IS_ERR(dsi->f))                                     \
> +                       dev_warn(dsi->dev, "Ignoring regmap field " #f "\n"); \
> +       } while (0)
> +
> +static int dw_mipi_dsi_regmap_fields_init(struct dw_mipi_dsi *dsi)
> +{
> +       const struct dw_mipi_dsi_variant *variant = &dw_mipi_dsi_v130_v131_layout;
> +

Having a closer look at the const-ness thing:
devm_regmap_field_alloc() uses a read/write copy of the reg_field struct (5
unsigned ints), even though it only uses them as read-only. A sensible way to
improve is is to pass a "const struct reg_field *" instead.

But that for another day ... might be worth adding a newbie regmap task for, if
you can see where to file that.


-Emil
