From: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v2 3/4] drm: imx: Add i.MX 6 MIPI DSI host driver
Date: Wed, 13 Nov 2019 15:43:08 +0000
Message-ID: <CACvgo50xc9NKgNn2uzGFbW1TwBDFRPmC3geCSC_63P-OXbm6DA@mail.gmail.com>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com> <20191106163031.808061-4-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191106163031.808061-4-adrian.ratiu@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: LAKML <linux-arm-kernel@lists.infradead.org>, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com, "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>, ML dri-devel <dri-devel@lists.freedesktop.org>, Neil Armstrong <narmstrong@baylibre.com>, Sjoerd Simons <sjoerd.simons@collabora.com>, Martyn Welch <martyn.welch@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 6 Nov 2019 at 16:31, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
> controller which is embedded in i.MX 6 SoCs.
>
> Based on following patches, but updated/extended to work with existing
> support found in the kernel:
>
> - drm: imx: Support Synopsys DesignWare MIPI DSI host controller
>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
>
> - ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller
>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
With the const nitpick below, the patch is:
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Aside, for the future consider having a change log in the patch itself.
What I tend to do is:
 - v2: Keep DW version specifics in dw-mipi-dsi.c (Emil)

<snip>

> +static struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {

Nit: make this a const.


> +       .cfg_dpi_vid =                  REG_FIELD(DSI_DPI_CFG, 0, 1),
> +       .cfg_dpi_color_coding =         REG_FIELD(DSI_DPI_CFG, 2, 4),
> +       .cfg_dpi_18loosely_en =         REG_FIELD(DSI_DPI_CFG, 10, 10),
> +       .cfg_dpi_vsync_active_low =     REG_FIELD(DSI_DPI_CFG, 6, 6),
> +       .cfg_dpi_hsync_active_low =     REG_FIELD(DSI_DPI_CFG, 7, 7),
> +       .cfg_cmd_mode_en =              REG_FIELD(DSI_CMD_MODE_CFG_V101, 0, 0),
> +       .cfg_cmd_mode_all_lp_en =       REG_FIELD(DSI_CMD_MODE_CFG_V101, 1, 12),
> +       .cfg_cmd_mode_ack_rqst_en =     REG_FIELD(DSI_CMD_MODE_CFG_V101, 13, 13),
> +       .cfg_cmd_pkt_status =           REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 14),
> +       .cfg_vid_mode_en =              REG_FIELD(DSI_VID_MODE_CFG_V101, 0, 0),
> +       .cfg_vid_mode_type =            REG_FIELD(DSI_VID_MODE_CFG_V101, 1, 2),
> +       .cfg_vid_mode_low_power =       REG_FIELD(DSI_VID_MODE_CFG_V101, 3, 8),
> +       .cfg_vid_pkt_size =             REG_FIELD(DSI_VID_PKT_CFG, 0, 10),
> +       .cfg_vid_hsa_time =             REG_FIELD(DSI_TMR_LINE_CFG, 0, 8),
> +       .cfg_vid_hbp_time =             REG_FIELD(DSI_TMR_LINE_CFG, 9, 17),
> +       .cfg_vid_hline_time =           REG_FIELD(DSI_TMR_LINE_CFG, 18, 31),
> +       .cfg_vid_vsa_time =             REG_FIELD(DSI_VTIMING_CFG, 0, 3),
> +       .cfg_vid_vbp_time =             REG_FIELD(DSI_VTIMING_CFG, 4, 9),
> +       .cfg_vid_vfp_time =             REG_FIELD(DSI_VTIMING_CFG, 10, 15),
> +       .cfg_vid_vactive_time =         REG_FIELD(DSI_VTIMING_CFG, 16, 26),
> +       .cfg_phy_txrequestclkhs =       REG_FIELD(DSI_PHY_IF_CTRL, 0, 0),
> +       .cfg_phy_bta_time =             REG_FIELD(DSI_PHY_TMR_CFG_V101, 0, 11),
> +       .cfg_phy_lp2hs_time =           REG_FIELD(DSI_PHY_TMR_CFG_V101, 12, 19),
> +       .cfg_phy_hs2lp_time =           REG_FIELD(DSI_PHY_TMR_CFG_V101, 20, 27),
> +       .cfg_phy_testclr =              REG_FIELD(DSI_PHY_TST_CTRL0_V101, 0, 0),
> +       .cfg_phy_unshutdownz =          REG_FIELD(DSI_PHY_RSTZ_V101, 0, 0),
> +       .cfg_phy_unrstz =               REG_FIELD(DSI_PHY_RSTZ_V101, 1, 1),
> +       .cfg_phy_enableclk =            REG_FIELD(DSI_PHY_RSTZ_V101, 2, 2),
> +       .cfg_phy_nlanes =               REG_FIELD(DSI_PHY_IF_CFG_V101, 0, 1),
> +       .cfg_phy_stop_wait_time =       REG_FIELD(DSI_PHY_IF_CFG_V101, 2, 9),
> +       .cfg_phy_status =               REG_FIELD(DSI_PHY_STATUS_V101, 0, 0),
> +       .cfg_pckhdl_cfg =               REG_FIELD(DSI_PCKHDL_CFG_V101, 0, 4),
> +       .cfg_hstx_timeout_counter =     REG_FIELD(DSI_TO_CNT_CFG_V101, 0, 15),
> +       .cfg_lprx_timeout_counter =     REG_FIELD(DSI_TO_CNT_CFG_V101, 16, 31),
> +       .cfg_int_stat0 =                REG_FIELD(DSI_ERROR_ST0_V101, 0, 20),
> +       .cfg_int_stat1 =                REG_FIELD(DSI_ERROR_ST1_V101, 0, 17),
> +       .cfg_int_mask0 =                REG_FIELD(DSI_ERROR_MSK0_V101, 0, 20),
> +       .cfg_int_mask1 =                REG_FIELD(DSI_ERROR_MSK1_V101, 0, 17),
> +       .cfg_gen_hdr =                  REG_FIELD(DSI_GEN_HDR_V101, 0, 31),
> +       .cfg_gen_payload =              REG_FIELD(DSI_GEN_PLD_DATA_V101, 0, 31),
> +};
if we start getting a lot of these, one way to keep things brief is to
reuse the GEN._FEATURES approach in gpu/drm/i915/i915_pci.c

Namely:
#define 100_FEATURES \
 .foo = ... \
 .bar = ...

.... v100_layout = {
100_FEATURES,
};
... v101_layout = {
100_FEATURES,
// extra 101 changes
.foo = ...101, \
.bar = ...101
};

But that for another day.

HTH
-Emil
