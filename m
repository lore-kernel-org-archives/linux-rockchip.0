Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38606C982D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 12:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/98gJbhG+EW6d+BM1cErHGQIeeBcicQZdx65VAqan94=; b=KLXLac+b86Qa+A96tVvjXXDCja
	doMlzkWx7hifAzGVAz935yQsewintzEsn2nnKwR5K2OTmjvypaMIIwohj6JsYU7x87cIavo6G45vL
	GKXWF1SLLnTGI8bdvGfRne6MdA/V9Xe7ypo+K+WxHHmiR4Zz1Ub50VHmJz/iP3U6DsWBbr79XtCgg
	r6ONGQMKQt6/CKJREK//BrFDbr8PQ8VQLRCdgo9C/A3bfpjPRZc7H6/ZITl0wYkQDyOEXXhuLVRIS
	1pOZ60szt5vfdVQd5QixqyQallSMWU/lxB7xJSnZKPNkymUBgiTOnK7fVoJ6H/zanoYAiycrLkbPS
	wfMfV+eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Y3v-0000000EPKW-3EKq;
	Fri, 18 Sep 2026 12:51:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Y3u-0000000EPJK-02Ze;
	Fri, 18 Sep 2026 12:51:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BFCFA405DF;
	Fri, 18 Sep 2026 12:51:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E18961F000FF;
	Fri, 18 Sep 2026 12:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789735889;
	bh=PwPQT29/08y6V6XYyOZIizI61tyqTu/Cils2GhEckpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d4kRvM6FaYRmRgofKXAJ/KZVoA6SUUDH21a6rXDbkmgHzq1lMGgcmSx1x3gurukY5
	 RS4qHXGyHN2uqDBu7NDc81adF18Jy2DPOv6xuascTXOQbTPDAF815Kd5ojTFbxrUSc
	 lvV/TncAGuPx498JwuZFMTGjQvznG6YbxfsYg2vx+VmUdw9olD47ixrGLKMiwmjOfy
	 F2KK2rwM2AHOoEwoya6pVpK0tSqBFSl9SnWwr8JxCvIcAxM2FxFQKoJJYpEHsZXsj9
	 AHvDzCDMfcU4OIq4YuUQ52ny6ewpirBu3yfsh37LM/IuESUOmY4tZSpnLtCffSlC9M
	 vKrHmGsoj7I7w==
Date: Fri, 18 Sep 2026 14:51:27 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>, 
	Matthias Fend <matthias.fend@emfend.at>, Mikhail Rudenko <mike.rudenko@gmail.com>, 
	Daniel Scally <dan.scally@ideasonboard.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Paul Elder <paul.elder@ideasonboard.com>, Martin Kepplinger <martin.kepplinger@puri.sm>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, Tommaso Merciai <tomm.merciai@gmail.com>, 
	Svyatoslav Ryhel <clamor95@gmail.com>, Richard Acayan <mailingradian@gmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux@ew.tq-group.com, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: Re: [PATCH v6 6/6] dt-bindings: media: i2c: himax,hm1246: Use
 video-interface-devices
Message-ID: <aq0zx94AJ20e_Ovp@orome>
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com>
 <20260918-kbingham-orientation-v6-6-5e8b1f01be29@ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20260918-kbingham-orientation-v6-6-5e8b1f01be29@ideasonboard.com>
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
Content-Type: multipart/mixed; boundary="===============1061504638190007387=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1061504638190007387==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i626hy2lcm6c4los"
Content-Disposition: inline


--i626hy2lcm6c4los
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 6/6] dt-bindings: media: i2c: himax,hm1246: Use
 video-interface-devices
MIME-Version: 1.0

On Fri, Sep 18, 2026 at 11:44:18AM +0100, Kieran Bingham wrote:
> From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
>=20
> The orientation property for video interface devices now has definitions
> to prevent hardcoded integer values for the enum options.
>=20
> Update the example binding documentation.
>=20
> Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
>=20
> ---
> v6:
>  - Actually use the correct orientation!
> ---
>  Documentation/devicetree/bindings/media/i2c/himax,hm1246.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--i626hy2lcm6c4los
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmqtM88ACgkQ3SOs138+
s6HErA//QZeNQsSy/XifzFuLTsPhHIwO6T3/bJ/RWRbZeWmbqXtSICEyk0GqdyCI
ATOOcP97gPZF01FzjWRFnt1Cdyim0a0tr670SKhsu5R3lWB3HHD5YPo2EHnOnu+L
DyA/QMiWvKfakWwGn3PxM3nQSRwIpFPixydV4BIRBAJnTi1UFdtC1EqDENk46WmA
H+gM9CVQoy2K5cG7mma9+M/t6oErOp3VtsC/n8UzyVZbWeh9GyIvMHFXyv87uCWS
w7+Ejgl44aa0qTSovw1lua1U+up3lKm5GVPVM4vv2vledKnCEks0CEj8B1ciJ4JC
QPmh4OI8j9GjmZNIDhTXfj1EU6693eLgd7rs5vP7TL8ie0YdigugBDvDs/69WMMh
gQEZLbwz63ZTv6hj+Kn9evt0TcLdyEEoIRQdWpQka1D8ZI8RuW6nYgfioeSnhXkt
lrA2LFvQWmbfn7o81sXBThaLAgid1SaymXNUqeKbNOgBV8MGbZ+3DAsVCrrx1Yrt
Df8PL0G4mjJcUc5fKnLTRnAlLN20Ss82mqYmktcuQYLNmg48RC0KPNO0TnmGyNmr
25Ac1jOtwnJ9RA4Gi78SHTaOjwlcbphCJk/ltcTKFE+b/nK2bsVC1XwxknhF8DEn
MkoAOZIcSpmXFL/OI2LGSRmo9v3QDGjSyJIP7pfavsTK6+F79dE=
=WxuE
-----END PGP SIGNATURE-----

--i626hy2lcm6c4los--


--===============1061504638190007387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1061504638190007387==--

