Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5403E7716D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 10:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gRwpmVtyQgjIrhseDC/889i5EHkWei802/8eJlLDNFM=; b=QEZKZhuth3HaY78uo+hbxdwKpl
	9x6hEFDqitzODSZLx3L7W9wQBvOGkb0A16Dcir2yMXHvuC40eUuMpyTOXDsrz4duFyr9QaAzCsAx+
	M5uaUeMk0YE1+HAiG1RgeJfvUxJU3lSpl7yg2EnMAXIzjrbxssVZCeoipTfDW67TxStpwWoMyqspF
	6rLlSiEJtJU3jQpaHrG7dRrug4LCJxmP5LY4L1bVfAyf0daPWse3gu5pPOwEgE6yXYesQmmDMVrRK
	3S/I4XqED6rvOLMK49elh17/mNTgUzGBfUGHtxvK/sYWSDYqWkCxS03bqhMuR5PHy6qYtK71PldNJ
	mw7dWjgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tImvc-0000000CGam-0aUa;
	Wed, 04 Dec 2024 10:48:20 +0000
Received: from out-184.mta1.migadu.com ([95.215.58.184])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tImvZ-0000000CGYy-2IYb
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Dec 2024 10:48:19 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1733309293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=O2UKodnZ8Rm7sgDDRiSGv7A9dpUqJ+j48TEG+riJO/c=;
	b=qLo3qT2+panflIVAmf4iYX0CPTVCzg9EkWVcKb7KeKgZnE+P9MMOqfsJ+LFr0ZL1GWnZSK
	R0habEwAovGA6gOKjDgW0+C6xVjiibx1RNax0qkInVOtt2NKjJomzme3h37i++IiO+TML3
	6oH0x6pXWYEdza9HGISMYaq0yPW8pF5oXpDuu4qyHAd33FR1/hCIhZwu89htbcM0LsV+Ux
	j0D01g+ub5DCmJSA2NSVja29btWrot8o6MN5pzSVlbNGukeKV7czBY0F7pksj+1yTEoxGv
	2+GedYEZFSrYlyePSSgQQzVY6tIzdBh599PkxfnPWGGiRAu3YFZwCSUMSmXMcQ==
Date: Wed, 04 Dec 2024 11:48:02 +0100
Message-Id: <D62UUZI7C1GD.1YSCGFIH9N60N@cknow.org>
Cc: <andy.yan@rock-chips.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
 <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <quentin.schulz@cherry.de>, "Kever Yang" <kever.yang@rock-chips.com>,
 "Heiko Stuebner" <heiko.stuebner@cherry.de>, "Daniel Semkowicz"
 <dse@thaumatec.com>
Subject: Re: [PATCH v3 3/3] drm/rockchip: Add MIPI DSI2 glue driver for
 RK3588
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <20241203165450.1501219-4-heiko@sntech.de>
 <af1cce1a-c46d-470f-a1b9-bfbc90b46415@rock-chips.com>
In-Reply-To: <af1cce1a-c46d-470f-a1b9-bfbc90b46415@rock-chips.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_024818_016752_867C4E53 
X-CRM114-Status: GOOD (  24.80  )
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
Content-Type: multipart/mixed; boundary="===============8447586779504577879=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8447586779504577879==
Content-Type: multipart/signed;
 boundary=36be8bfcf2ccc3f593d537c5169e7561860be4acb341ccb6b71acfde7e94;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--36be8bfcf2ccc3f593d537c5169e7561860be4acb341ccb6b71acfde7e94
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

If there's going to be another version (to fix this) ...

On Wed Dec 4, 2024 at 3:16 AM CET, Kever Yang wrote:
> On 2024/12/4 00:54, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> >
> > This adds the glue code for the MIPI DSI2 bridge on Rockchip SoCs and
> > enables its use on the RK3588.
> >
> > Right now the DSI2 controller is always paired with a DC-phy based on a
> > Samsung IP, so the interface values are set statically for now.
> > This stays true for the upcoming RK3576 as well.
> >
> > Tested-by: Daniel Semkowicz <dse@thaumatec.com>
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > ---
> >   drivers/gpu/drm/rockchip/Kconfig              |  10 +
> >   drivers/gpu/drm/rockchip/Makefile             |   1 +
> >   .../gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c  | 524 +++++++++++++++++=
+
> >   drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |   2 +
> >   drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   1 +
> >   5 files changed, 538 insertions(+)
> >   create mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
> >
> > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchi=
p/Kconfig
> > index 448fadd4ba15..84af423b7f90 100644
> > --- a/drivers/gpu/drm/rockchip/Kconfig
> > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > @@ -10,6 +10,7 @@ config DRM_ROCKCHIP
> >   	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
> >   	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
> >   	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
> > +	select DRM_DW_MIPI_DSI2 if ROCKCHIP_DW_MIPI_DSI2
> >   	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
> >   	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
> >   	select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
> > @@ -81,6 +82,15 @@ config ROCKCHIP_DW_MIPI_DSI
> >   	  enable MIPI DSI on RK3288 or RK3399 based SoC, you should
> >   	  select this option.
> >  =20
> > +config ROCKCHIP_DW_MIPI_DSI2
> > +	bool "Rockchip specific extensions for Synopsys DW MIPI DSI2"
> > +	select GENERIC_PHY_MIPI_DPHY
> > +	help
> > +	  This selects support for Rockchip SoC specific extensions
> > +	  for the Synopsys DesignWare dsi driver. If you want to

... could you then also s/dsi/DSI/ ?

Cheers,
  Diederik

> > +	  enable MIPI DSI on RK3576 or RK3588 based SoC, you should
> > +	  select this option.
> > +
> >   config ROCKCHIP_INNO_HDMI
> >   	bool "Rockchip specific extensions for Innosilicon HDMI"
> >   	select DRM_DISPLAY_HDMI_HELPER
> > diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockch=
ip/Makefile
> > index 3eab662a5a1d..2b867cebbc12 100644
> > --- a/drivers/gpu/drm/rockchip/Makefile
> > +++ b/drivers/gpu/drm/rockchip/Makefile
> > @@ -13,6 +13,7 @@ rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) +=3D cdn-dp-cor=
e.o cdn-dp-reg.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) +=3D dw_hdmi-rockchip.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI_QP) +=3D dw_hdmi_qp-rockchip.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI) +=3D dw-mipi-dsi-rockchip.=
o
> > +rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI2) +=3D dw-mipi-dsi2-rockchip=
.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_INNO_HDMI) +=3D inno_hdmi.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_LVDS) +=3D rockchip_lvds.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_RGB) +=3D rockchip_rgb.o
> > diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c b/drivers=
/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
> > new file mode 100644
> > index 000000000000..55eed4001634
> > --- /dev/null
> > +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
> > @@ -0,0 +1,524 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2024 Rockchip Electronics Co.Ltd
> This should be:
>
> Rockchip Electronics Co., Ltd.
>
> This typo is from vendor kernel, we will correct all this kind of issue l=
ocally,
> and Andy is going to correct other files in drm for mainline kernel.
>
> Thanks,
> - Kever

--36be8bfcf2ccc3f593d537c5169e7561860be4acb341ccb6b71acfde7e94
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ1AzZgAKCRDXblvOeH7b
bgWNAQC3fSnJVdLSgG4VTa6DlS3SopUVzVFSbfEGiC729h16vAEAwIBqQFd3xgCB
KHlaIkQrEF/mSaPEoy27gQHJra96XQU=
=cYSZ
-----END PGP SIGNATURE-----

--36be8bfcf2ccc3f593d537c5169e7561860be4acb341ccb6b71acfde7e94--


--===============8447586779504577879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8447586779504577879==--

