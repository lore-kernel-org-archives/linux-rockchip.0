Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53567CF9C6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 14:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p992vwJ8I85H+MBrR/maxYIxmIrpDiiwA9KaA8ZV1VI=; b=JVPRpG4gayhuDtg2sF3odFzdSO
	E5NVdP0YexJXndPCzEVDy476W3bqHMclE7Iypa20smsdk53rbtcgRn1ihV+yStR1X8ILCTxH1ynpR
	tPWhgxNRU2MYaErvACt0NWGHyFGVw/K4hu4S4YC55k/F/b8zHrd2DPGBlfC+w3fcVl9ikBneOtlHj
	h8+4ripfOaMZbTyerwxggL98sY5pB0LX5mcjSotKh7mSxLEVccTWMAi+wEn9+MnOzlPL01xrSX5El
	PsMKmyIQZghB+ikesmvy8u21NyVWSA3L3vYGuHLcvSfH0WDft2LWDUR7uZc+F39Roi61vZJV8dR0h
	whGXNV6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st68n-00000002Uls-1jjI;
	Tue, 24 Sep 2024 14:03:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st67d-00000002UZ6-14Iy;
	Tue, 24 Sep 2024 14:02:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 412595C5B87;
	Tue, 24 Sep 2024 14:02:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4819BC4CEC4;
	Tue, 24 Sep 2024 14:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727186551;
	bh=PW28/HOcoamPZBdK9HP7NqFe81dU96hQWV1/W5OFhZk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m/Y6MAnAelEGvB5xP9m9pXG9C5b9Ir4siPj/ZpWSpaPqT822OBUSImRXObgJCwkee
	 wBtjQFGWU+IVDX5VhmxSHZuGlJXOqqoshwAbG5N/eUbNd1RRem8iBQyrCM0DJFyzwt
	 nZUNOjJfj955sVTfmPNX//b6FQZBnnRW6XJJ+RROPvQsyPckHbg+3D4LKRS8W5cIh3
	 xvHuLW8FiOmZ+1hu3vYfPoDbKU30M58toV+tRppC3nbP4KCnws5Qu5Fgtx0HPncxPT
	 UllyZJLNeBc8H7VMsRrk5UGNDNCJXyYNk8u+JBZzDWBnm5yZyk63fxGvS0GAfJDlcR
	 qJ9simfhFPobA==
Date: Tue, 24 Sep 2024 16:02:29 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v7 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Message-ID: <20240924-ubiquitous-festive-rabbit-55cdb0@houat>
References: <20240914-b4-rk3588-bridge-upstream-v7-0-2b1348137123@collabora.com>
 <20240914-b4-rk3588-bridge-upstream-v7-3-2b1348137123@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240914-b4-rk3588-bridge-upstream-v7-3-2b1348137123@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_070233_411835_AE96EC35 
X-CRM114-Status: GOOD (  24.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7264353946388805293=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7264353946388805293==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="fpqtjrbd6xxegakm"
Content-Disposition: inline


--fpqtjrbd6xxegakm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Sep 14, 2024 at 09:56:53PM GMT, Cristian Ciocaltea wrote:
> The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
> Samsung IP block.
>=20
> Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
> without audio, CEC or any of the HDMI 2.1 specific features.
>=20
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/Kconfig               |   9 +
>  drivers/gpu/drm/rockchip/Makefile              |   1 +
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 436 +++++++++++++++++++=
++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c    |   2 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h    |   1 +
>  5 files changed, 449 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/=
Kconfig
> index 23c49e91f1cc..448fadd4ba15 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -8,6 +8,7 @@ config DRM_ROCKCHIP
>  	select VIDEOMODE_HELPERS
>  	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
>  	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
> +	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
>  	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
>  	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
>  	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
> @@ -63,6 +64,14 @@ config ROCKCHIP_DW_HDMI
>  	  enable HDMI on RK3288 or RK3399 based SoC, you should select
>  	  this option.
> =20
> +config ROCKCHIP_DW_HDMI_QP
> +	bool "Rockchip specific extensions for Synopsys DW HDMI QP"
> +	select DRM_BRIDGE_CONNECTOR
> +	help
> +	  This selects support for Rockchip SoC specific extensions
> +	  for the Synopsys DesignWare HDMI QP driver. If you want to
> +	  enable HDMI on RK3588 based SoC, you should select this option.
> +
>  config ROCKCHIP_DW_MIPI_DSI
>  	bool "Rockchip specific extensions for Synopsys DW MIPI DSI"
>  	select GENERIC_PHY_MIPI_DPHY
> diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip=
/Makefile
> index 3ff7b21c0414..3eab662a5a1d 100644
> --- a/drivers/gpu/drm/rockchip/Makefile
> +++ b/drivers/gpu/drm/rockchip/Makefile
> @@ -11,6 +11,7 @@ rockchipdrm-$(CONFIG_ROCKCHIP_VOP) +=3D rockchip_drm_vo=
p.o rockchip_vop_reg.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) +=3D analogix_dp-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) +=3D cdn-dp-core.o cdn-dp-reg.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) +=3D dw_hdmi-rockchip.o
> +rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI_QP) +=3D dw_hdmi_qp-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI) +=3D dw-mipi-dsi-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_INNO_HDMI) +=3D inno_hdmi.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_LVDS) +=3D rockchip_lvds.o
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu=
/drm/rockchip/dw_hdmi_qp-rockchip.c
> new file mode 100644
> index 000000000000..19d407c926bd
> --- /dev/null
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> @@ -0,0 +1,436 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2024 Collabora Ltd.
> + *
> + * Author: Algea Cao <algea.cao@rock-chips.com>
> + * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/phy/phy.h>
> +#include <linux/regmap.h>
> +#include <linux/workqueue.h>
> +
> +#include <drm/bridge/dw_hdmi_qp.h>
> +#include <drm/drm_bridge_connector.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
> +
> +#include "rockchip_drm_drv.h"
> +
> +#define RK3588_GRF_SOC_CON2		0x0308
> +#define RK3588_HDMI0_HPD_INT_MSK	BIT(13)
> +#define RK3588_HDMI0_HPD_INT_CLR	BIT(12)
> +#define RK3588_GRF_SOC_CON7		0x031c
> +#define RK3588_SET_HPD_PATH_MASK	GENMASK(13, 12)
> +#define RK3588_GRF_SOC_STATUS1		0x0384
> +#define RK3588_HDMI0_LEVEL_INT		BIT(16)
> +#define RK3588_GRF_VO1_CON3		0x000c
> +#define RK3588_SCLIN_MASK		BIT(9)
> +#define RK3588_SDAIN_MASK		BIT(10)
> +#define RK3588_MODE_MASK		BIT(11)
> +#define RK3588_I2S_SEL_MASK		BIT(13)
> +#define RK3588_GRF_VO1_CON9		0x0024
> +#define RK3588_HDMI0_GRANT_SEL		BIT(10)
> +
> +#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
> +
> +struct rockchip_hdmi_qp {
> +	struct device *dev;
> +	struct regmap *regmap;
> +	struct regmap *vo_regmap;
> +	struct rockchip_encoder encoder;
> +	struct clk *ref_clk;
> +	struct dw_hdmi_qp *hdmi;
> +	struct phy *phy;
> +	struct gpio_desc *enable_gpio;
> +	struct delayed_work hpd_work;
> +};
> +
> +static struct rockchip_hdmi_qp *to_rockchip_hdmi_qp(struct drm_encoder *=
encoder)
> +{
> +	struct rockchip_encoder *rkencoder =3D to_rockchip_encoder(encoder);
> +
> +	return container_of(rkencoder, struct rockchip_hdmi_qp, encoder);
> +}
> +
> +static void
> +dw_hdmi_qp_rockchip_encoder_mode_set(struct drm_encoder *encoder,
> +				     struct drm_display_mode *mode,
> +				     struct drm_display_mode *adj_mode)
> +{
> +	struct rockchip_hdmi_qp *hdmi =3D to_rockchip_hdmi_qp(encoder);
> +
> +	clk_set_rate(hdmi->ref_clk, adj_mode->clock * 1000);
> +}

I'm not sure you can do that. mode_set can be called multiple times
while the connector is enabled. It would be better to drop the mode_set
implementation, and just put it in the encoder enable.

Maxime

--fpqtjrbd6xxegakm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZvLGdAAKCRAnX84Zoj2+
drg5AX4+5T6M+km/p/2RBh+FbWARBrBDngsllHb1+sXL8YNsBg7J5+gTHGDeTMLd
b0/HJDYBf26HM8iOSfpQdkcgs2QUMtHe3klRG6aEP+AeOM3ylEmPmpYzBAGp0tGs
FRIjki7rDQ==
=dq1q
-----END PGP SIGNATURE-----

--fpqtjrbd6xxegakm--


--===============7264353946388805293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7264353946388805293==--

