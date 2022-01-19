Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 921E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 11:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1JdTaHn5ZT6bNt+FaoE3XRwgog4FMMlwvl/e0v+Qt8=; b=zP1CPLnbXv1F5a
	LwuicAcmknw7rMDmzTUqMLRnpwOwDqdU2CaBd3L8WMyWZj6hlw7+uWp2V75umUkKQhdn+XhSsH6VM
	8orN+1DCrz/wNNCvUQ7zI6w5/bMk+pvPfpmzSFBF5QPeuoAhnK7D2zIwldftsKhp/eMAq+py9kkBa
	RO3ow+YuejzhyPH+o+iCljEMzFappjcgeVSboUVJ/BeetHrVqJnY08+iaLrn21q3FGYq4CDM3RzYu
	MZFGiX1xBYuYo7VnaGKd7EfIhyHCdSq/VsKOiXJ9pjhs3W+pY6WLfs3yiiTBF9ud63thBKDA83xqA
	kVNpVsimOckl9KHDLZ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA9RB-005ENK-C2; Wed, 19 Jan 2022 11:47:37 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA9Qv-005EIG-U8; Wed, 19 Jan 2022 11:47:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id F3A14FB03;
 Wed, 19 Jan 2022 12:47:15 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y9w4dTYgLJjm; Wed, 19 Jan 2022 12:47:14 +0100 (CET)
Date: Wed, 19 Jan 2022 12:47:12 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2] phy: dphy: Correct clk_pre parameter
Message-ID: <Yef6QJMNm1AAabp/@qwark.sigxcpu.org>
References: <20220119023714.1498508-1-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119023714.1498508-1-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_034722_194626_47E06D24 
X-CRM114-Status: GOOD (  30.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,
On Wed, Jan 19, 2022 at 10:37:14AM +0800, Liu Ying wrote:
> The D-PHY specification (v1.2) explicitly mentions that the T-CLK-PRE
> parameter's unit is Unit Interval(UI) and the minimum value is 8.  Also,
> kernel doc of the 'clk_pre' member of struct phy_configure_opts_mipi_dphy
> mentions that it should be in UI.  However, the dphy core driver wrongly
> sets 'clk_pre' to 8000, which seems to hint that it's in picoseconds.
> And, the kernel doc of the 'clk_pre' member wrongly says the minimum value
> is '8 UI', instead of 8.
> =

> So, let's fix both the dphy core driver and the kernel doc of the 'clk_pr=
e'
> member to correctly reflect the T-CLK-PRE parameter's unit and the minimum
> value according to the D-PHY specification.
> =

> I'm assuming that all impacted custom drivers shall program values in
> TxByteClkHS cycles into hardware for the T-CLK-PRE parameter.  The D-PHY
> specification mentions that the frequency of TxByteClkHS is exactly 1/8
> the High-Speed(HS) bit rate(each HS bit consumes one UI).  So, relevant
> custom driver code is changed to program those values as
> DIV_ROUND_UP(cfg->clk_pre, BITS_PER_BYTE), then.
> =

> Note that I've only tested the patch with RM67191 DSI panel on i.MX8mq EV=
K.
> Help is needed to test with other i.MX8mq, Meson and Rockchip platforms,
> as I don't have the hardwares.
> =

> Fixes: 2ed869990e14 ("phy: Add MIPI D-PHY configuration options")
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Guido G=FCnther <agx@sigxcpu.org>
> Tested-by: Liu Ying <victor.liu@nxp.com> # RM67191 DSI panel on i.MX8mq E=
VK
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v2:
> * Use BITS_PER_BYTE macro. (Andrzej)
> * Drop dsi argument from ui2bc() in nwl-dsi.c.
> =

>  drivers/gpu/drm/bridge/nwl-dsi.c                 | 12 +++++-------
>  drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c    |  3 ++-
>  drivers/phy/phy-core-mipi-dphy.c                 |  4 ++--
>  drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c |  3 ++-
>  include/linux/phy/phy-mipi-dphy.h                |  2 +-
>  5 files changed, 12 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/bridge/nwl-dsi.c b/drivers/gpu/drm/bridge/nw=
l-dsi.c
> index a7389a0facfb..af07eeb47ca0 100644
> --- a/drivers/gpu/drm/bridge/nwl-dsi.c
> +++ b/drivers/gpu/drm/bridge/nwl-dsi.c
> @@ -7,6 +7,7 @@
>   */
>  =

>  #include <linux/bitfield.h>
> +#include <linux/bits.h>
>  #include <linux/clk.h>
>  #include <linux/irq.h>
>  #include <linux/math64.h>
> @@ -196,12 +197,9 @@ static u32 ps2bc(struct nwl_dsi *dsi, unsigned long =
long ps)
>  /*
>   * ui2bc - UI time periods to byte clock cycles
>   */
> -static u32 ui2bc(struct nwl_dsi *dsi, unsigned long long ui)
> +static u32 ui2bc(unsigned int ui)
>  {
> -	u32 bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
> -
> -	return DIV64_U64_ROUND_UP(ui * dsi->lanes,
> -				  dsi->mode.clock * 1000 * bpp);
> +	return DIV_ROUND_UP(ui, BITS_PER_BYTE);
>  }
>  =

>  /*
> @@ -232,12 +230,12 @@ static int nwl_dsi_config_host(struct nwl_dsi *dsi)
>  	}
>  =

>  	/* values in byte clock cycles */
> -	cycles =3D ui2bc(dsi, cfg->clk_pre);
> +	cycles =3D ui2bc(cfg->clk_pre);
>  	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_pre: 0x%x\n", cycles);
>  	nwl_dsi_write(dsi, NWL_DSI_CFG_T_PRE, cycles);
>  	cycles =3D ps2bc(dsi, cfg->lpx + cfg->clk_prepare + cfg->clk_zero);
>  	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_tx_gap (pre): 0x%x\n", cycles);
> -	cycles +=3D ui2bc(dsi, cfg->clk_pre);
> +	cycles +=3D ui2bc(cfg->clk_pre);
>  	DRM_DEV_DEBUG_DRIVER(dsi->dev, "cfg_t_post: 0x%x\n", cycles);
>  	nwl_dsi_write(dsi, NWL_DSI_CFG_T_POST, cycles);
>  	cycles =3D ps2bc(dsi, cfg->hs_exit);
> diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c b/drivers/phy/=
amlogic/phy-meson-axg-mipi-dphy.c
> index cd2332bf0e31..fdbd64c03e12 100644
> --- a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> +++ b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> @@ -9,6 +9,7 @@
>  =

>  #include <linux/bitfield.h>
>  #include <linux/bitops.h>
> +#include <linux/bits.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
>  #include <linux/io.h>
> @@ -250,7 +251,7 @@ static int phy_meson_axg_mipi_dphy_power_on(struct ph=
y *phy)
>  		     (DIV_ROUND_UP(priv->config.clk_zero, temp) << 16) |
>  		     (DIV_ROUND_UP(priv->config.clk_prepare, temp) << 24));
>  	regmap_write(priv->regmap, MIPI_DSI_CLK_TIM1,
> -		     DIV_ROUND_UP(priv->config.clk_pre, temp));
> +		     DIV_ROUND_UP(priv->config.clk_pre, BITS_PER_BYTE));
>  =

>  	regmap_write(priv->regmap, MIPI_DSI_HS_TIM,
>  		     DIV_ROUND_UP(priv->config.hs_exit, temp) |
> diff --git a/drivers/phy/phy-core-mipi-dphy.c b/drivers/phy/phy-core-mipi=
-dphy.c
> index 288c9c67aa74..ccb4045685cd 100644
> --- a/drivers/phy/phy-core-mipi-dphy.c
> +++ b/drivers/phy/phy-core-mipi-dphy.c
> @@ -36,7 +36,7 @@ int phy_mipi_dphy_get_default_config(unsigned long pixe=
l_clock,
>  =

>  	cfg->clk_miss =3D 0;
>  	cfg->clk_post =3D 60000 + 52 * ui;
> -	cfg->clk_pre =3D 8000;
> +	cfg->clk_pre =3D 8;
>  	cfg->clk_prepare =3D 38000;
>  	cfg->clk_settle =3D 95000;
>  	cfg->clk_term_en =3D 0;
> @@ -97,7 +97,7 @@ int phy_mipi_dphy_config_validate(struct phy_configure_=
opts_mipi_dphy *cfg)
>  	if (cfg->clk_post < (60000 + 52 * ui))
>  		return -EINVAL;
>  =

> -	if (cfg->clk_pre < 8000)
> +	if (cfg->clk_pre < 8)
>  		return -EINVAL;
>  =

>  	if (cfg->clk_prepare < 38000 || cfg->clk_prepare > 95000)
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/p=
hy/rockchip/phy-rockchip-inno-dsidphy.c
> index 347dc79a18c1..630e01b5c19b 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> @@ -5,6 +5,7 @@
>   * Author: Wyon Bi <bivvy.bi@rock-chips.com>
>   */
>  =

> +#include <linux/bits.h>
>  #include <linux/kernel.h>
>  #include <linux/clk.h>
>  #include <linux/iopoll.h>
> @@ -364,7 +365,7 @@ static void inno_dsidphy_mipi_mode_enable(struct inno=
_dsidphy *inno)
>  	 * The value of counter for HS Tclk-pre
>  	 * Tclk-pre =3D Tpin_txbyteclkhs * value
>  	 */
> -	clk_pre =3D DIV_ROUND_UP(cfg->clk_pre, t_txbyteclkhs);
> +	clk_pre =3D DIV_ROUND_UP(cfg->clk_pre, BITS_PER_BYTE);
>  =

>  	/*
>  	 * The value of counter for HS Tlpx Time
> diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mi=
pi-dphy.h
> index a877ffee845d..59a5e77ab409 100644
> --- a/include/linux/phy/phy-mipi-dphy.h
> +++ b/include/linux/phy/phy-mipi-dphy.h
> @@ -42,7 +42,7 @@ struct phy_configure_opts_mipi_dphy {
>  	 * the transmitter prior to any associated Data Lane beginning
>  	 * the transition from LP to HS mode.
>  	 *
> -	 * Minimum value: 8 UI
> +	 * Minimum value: 8
>  	 */
>  	unsigned int		clk_pre;


Tested on the Librem 5 (imx8mq) with it's rather picky panel:

Tested-by: Guido G=FCnther <agx@sigxcpu.org>

Cheers
 -- Guido


>  =

> -- =

> 2.25.1
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
