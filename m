Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3052C0218D
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jan 2025 15:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=womDc0Ci0XGtaQDTVs7lDaLe0x+kzqULtiftBFjPcJA=; b=SFooX1ynRDDNT/XIkKxQbMRk6X
	ZoVPZNgELfjQl33DOoEPkyIjlUT0MLDaNSowYSsymad2Spysb/bCybZaU9gCNskn9ew3YAkpUcBlM
	suEGzZ+FlvDje86UwYO5wCSjCB06fu98UKSALbIYZSvmXyTRHa0VczUpdxjaMlbWnMl9gJ+PHEkzQ
	OapkE2k0AQ5b1Ki+5iv6RwgBweLCGZ6sy0ggl/ZdE+dW/GbK47Hy4I6RCXEjxU+qvYbIUSc+OdgnS
	tBr8R3HQMoauoM20xdEygMt5sCXsBatzjrBr2uSqJRAYYI5YT1YVaBY1ovLe5QWvxz7upDP/rdToC
	ZxIzx5Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdA5H-00000007Ga3-22Lq;
	Wed, 29 Jan 2025 15:34:31 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdA4F-00000007GQj-1zIh;
	Wed, 29 Jan 2025 15:33:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A2881A41A66;
	Wed, 29 Jan 2025 15:31:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8610C4CED1;
	Wed, 29 Jan 2025 15:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738164806;
	bh=MINsAlGP+IWemPuIKVuQIkc4AnIYXc8ewNTg0fTGbZk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tqrvmPa5UhekDfsy+cPdeHlTD9eEK6B5/Kuz61v80rcNV7C5be85yrZ3LkZThJuqZ
	 REhX4Sx6D+sYCmlPMDzeLzuams0lpiG6AfMG21NglJQMD4qblG2xuEBx1Q3hernB8w
	 eG3UNI53K925jPmHC4QVjBlPQH7d815/egQX0aBgMGqoIsA5BruQ9KbbuqGxk/zAY2
	 zcTOw7JSTxKnnmHMk/4f7gn6RdZGjntB1ogpqPG4kBR27Hc1KH7qcmlVtke7DwPHfe
	 BUaaDWTH3JAPzWVYwfALZJW/P8WjAl3TbOMHbarnsPcyJAtx7JESkUJtZKpw2N+Xz4
	 Bl94cgjlVNDEQ==
Date: Wed, 29 Jan 2025 16:33:22 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Anusha Srivatsa <asrivats@redhat.com>
Cc: Joel Stanley <joel@jms.id.au>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Stefan Agner <stefan@agner.ch>, 
	Alison Wang <alison.wang@nxp.com>, Xinliang Liu <xinliang.liu@linaro.org>, 
	Tian Tao <tiantao6@hisilicon.com>, Xinwei Kong <kong.kongxinwei@hisilicon.com>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu <yongqin.liu@linaro.org>, 
	John Stultz <jstultz@google.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Yannick Fertre <yannick.fertre@foss.st.com>, 
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, Philippe Cornu <philippe.cornu@foss.st.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Alexey Brodkin <abrodkin@synopsys.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jonathan Corbet <corbet@lwn.net>, linux-aspeed@lists.ozlabs.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH 03/14] drm/hisilicon: move to
 devm_platform_ioremap_resource() usage
Message-ID: <6ccprzvnxkrqphxrsfp5gofzkicqyibjpveniup7wpra7p2tg2@x5tz45kit2oc>
References: <20250128-cocci-memory-api-v1-0-0d1609a29587@redhat.com>
 <20250128-cocci-memory-api-v1-3-0d1609a29587@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250128-cocci-memory-api-v1-3-0d1609a29587@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_073327_653925_D2BAFFB8 
X-CRM114-Status: GOOD (  10.62  )
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
Content-Type: multipart/mixed; boundary="===============8471232051966145366=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8471232051966145366==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="dupye724qr742yg3"
Content-Disposition: inline


--dupye724qr742yg3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 03/14] drm/hisilicon: move to
 devm_platform_ioremap_resource() usage
MIME-Version: 1.0

On Tue, Jan 28, 2025 at 05:29:27PM -0500, Anusha Srivatsa wrote:
> Replace platform_get_resource + devm_ioremap_resource
> with just devm_platform_ioremap_resource()
>=20
> Used Coccinelle to do this change. SmPl patch:
> @rule_1@
> identifier res;
> expression ioremap_res;
> identifier pdev;
> @@
> -struct resource *res;
> ...
> -res =3D platform_get_resource(pdev,...);
> -ioremap_res =3D devm_ioremap_resource(...);
> +ioremap_res =3D devm_platform_ioremap_resource(pdev,0);
>=20
> Cc: Xinliang Liu <xinliang.liu@linaro.org>
> Cc: Tian Tao <tiantao6@hisilicon.com>
> Cc: Xinwei Kong <kong.kongxinwei@hisilicon.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: Yongqin Liu <yongqin.liu@linaro.org>
> Cc: John Stultz <jstultz@google.com>
>=20
> Signed-off-by: Anusha Srivatsa <asrivats@redhat.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Maxime

--dupye724qr742yg3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ5pKQgAKCRAnX84Zoj2+
dgnAAYDocV8Hi1jItqly1rX3RgJxBvbHB7dRM9x+ADwfWacUO02HGMnqwmBc16Bx
dkudzNMBf01rR/o3BCIIpg5xa99y2kiswp8ppBoSmPORAmV5OyaRnLWfOw8PehtB
NryfqyN45g==
=XqRS
-----END PGP SIGNATURE-----

--dupye724qr742yg3--


--===============8471232051966145366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8471232051966145366==--

