Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CEA4C982D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 12:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X1ZIj3INaEazJpU4NRvALislUpotTFNzp+iCI+P4E9s=; b=NS7X3Zesj4EKR3k4zs9YHjjEi6
	oVTxctYyMM+Dvj2DRqxRHczpW7lr/h+TaVu7JTZbKjFyhrzRjnQgBkI1AWDA8+ox1hdliCyq8IrCN
	OpH8pZUMg4H8gXOkts8GagsV/J3RcdolBmGKnjkFsYbmZr7Ylrb5zQS0N36eN0eZwcamL349NFcFZ
	mrjFLjeZm6lC3Yd5b3N4SDiwO5yu7jEyCUFCC3M5FqAj99bNEO2CrdITjaXR3yBIEpXjL0EC+JjjE
	rHDUPOk4nXaIxPxI141BTG0870pyHSanyfeZtarEU1RthuIq9A9yi24kK9voGu/lTdi2TJ5RypHQz
	v5M8qvIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Y3X-0000000EPED-2Vaq;
	Fri, 18 Sep 2026 12:51:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Y3V-0000000EPDb-3oLJ;
	Fri, 18 Sep 2026 12:51:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B4D541A2A;
	Fri, 18 Sep 2026 12:51:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 693121F000FF;
	Fri, 18 Sep 2026 12:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789735865;
	bh=z1sVU9R9+x4//8cyuQAoI8VIvZltqOe2KgL9ZPE45nc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dnWDyoNwbV68RTnEchceD1+JKKl6RQ3G4EQzo1gFK+DbXTE1Yj64LUOrBpn1DwZal
	 Ec7iZzPF7AQd/jVK7+0jPLq9iGy6P2kN+fQ3x8Ucsevr/1RXFyG1fXkFmv6/D60OeI
	 FD0NtWv9YV9veyPlSoPvuOM0E9yfXJIvtx6YdMePDvJqaaFWcHtNKFXI3Rp5Eqg1LO
	 4OcA6uJ6/P4dhEte2viYxOQ9VkmeCWtFMUurOgpjIIm8QESndV4llUPI4/kKphNgVL
	 UI4I/GYJ9MhDPXJ4IS4RhQCWajy9OrWln7c5bXx17xymNuMmGcnLJCMAK0s5eEMVnA
	 MqLOX45h2ncfw==
Date: Fri, 18 Sep 2026 14:51:02 +0200
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
Subject: Re: [PATCH v6 5/6] ARM: tegra: Convert to new media orientation
 definitions
Message-ID: <aq0zSBPqnQaG-gJ_@orome>
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com>
 <20260918-kbingham-orientation-v6-5-5e8b1f01be29@ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20260918-kbingham-orientation-v6-5-5e8b1f01be29@ideasonboard.com>
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
Content-Type: multipart/mixed; boundary="===============5221002458091758096=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5221002458091758096==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3nge4cpqtpe6oayt"
Content-Disposition: inline


--3nge4cpqtpe6oayt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 5/6] ARM: tegra: Convert to new media orientation
 definitions
MIME-Version: 1.0

On Fri, Sep 18, 2026 at 11:44:17AM +0100, Kieran Bingham wrote:
> From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
>=20
> The orientation property for video interface devices now has definitions
> to prevent hardcoded integer values for the enum options.
>=20
> Update the users throughout the nvidia device trees to use the new
> definitions.
>=20
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> ---
> v2:
>  - Fix MEDIA_ORIENTATION_REAR to MEDIA_ORIENTATION_BACK
> ---
>  arch/arm/boot/dts/nvidia/tegra30-asus-nexus7-grouper-common.dtsi | 3 ++-
>  arch/arm/boot/dts/nvidia/tegra30-asus-transformer-common.dtsi    | 3 ++-
>  arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts                     | 4 +++-
>  arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi                      | 3 ++-
>  4 files changed, 9 insertions(+), 4 deletions(-)

Looks like the include you're using here is only available in
linux-next, so this should go through the same tree as the patch that
adds the include, in which case:

Reviewed-by: Thierry Reding <treding@nvidia.com>
Acked-by: Thierry Reding <treding@nvidia.com>

--3nge4cpqtpe6oayt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmqtM7YACgkQ3SOs138+
s6Gr/g//VOXb0tgMpx4OterUqb5K6gB0eoL8pDnZNWXwL0PdFOWg5P/ozvkIHTp6
SW897Ifdf65UNCGVYXKCqHNBL6DH4Kvn2k/JI0DKerKx0VzQWlm4ojWsr2zBsLvy
WDV2HeO2XzTiqaJqRGiXkB9GQYAn4asQXoobBSoIuRtm0Yh3w0lnhMYThKasCVxn
CwbV8yLl5+cOnyp5aIRKBBfqV+C7RDwHzRlaTLWd0+Tha4hjgv5vtsml12jSrdb9
VCT4xxjfIlt9yCBSpdYEa9LETBXfQRYcb7s9yjO5Koj6rWtd2iLEmoSw/gfi019H
OAZPFULbLHmFV/QhzS/mPwQH5BPTshApCNBFf/uLtrhM9SsLfOBBUsW8jYJ+gjT3
rx4ShbEX4bLsIT9POg1riSw+muXyNnnAvy/aG20ZM2Uq88u7eiG2TfnnQq2jujbV
ZE8b/1r4rk8T5aIjnHsLfrztL8LqguWxb6Ni3YcEgQwheH1vAnOOppETs5a2KqW/
LZXO3oW3IxH8qfBLTsO2dGvx9rafI3SBkRtE/LyAsV+C35sEODkNC57OswrL0ty0
DqHxW09drdXNblN7hsWM/j8oD2/M1hEEiaeO9OuH90hWPxNe8m5TdkhFzkF+TLk2
eTziMaYY4dcUYy81zglhvNT8ERnGG7mhiVXm6vbG4zI1FPJksXg=
=khTn
-----END PGP SIGNATURE-----

--3nge4cpqtpe6oayt--


--===============5221002458091758096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5221002458091758096==--

