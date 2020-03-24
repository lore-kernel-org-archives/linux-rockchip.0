From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Date: Tue, 24 Mar 2020 13:35:06 +0000
Message-ID: <20200324133506.GC7039@sirena.org.uk>
References: <20200324123155.11858-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ALfTUftag+2gvp1h"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200324123155.11858-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: lgirdwood@gmail.com, heiko@sntech.de, robh+dt@kernel.org, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--ALfTUftag+2gvp1h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 24, 2020 at 01:31:53PM +0100, Johan Jonker wrote:
> Current dts files with 'spdif' nodes are manually verified.
> In order to automate this process rockchip-spdif.txt
> has to be converted to yaml.

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   dmas and dma-names layout

This is the second v2 you've sent of this today - it adds these but
drops Rob's ack?

--ALfTUftag+2gvp1h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl56DIkACgkQJNaLcl1U
h9AN6Af+MtKFdLKwXOq0ZSd3pZudYzkK/o1iRhCoZguoCb361prSfHsrNxVH7UgS
NoCl9lTGtnOnD0dSRW08nP6R1Uzy6S4RUHXymuSFsbFoE807UgdMhI2SlwOkSwYF
3LqiuhploNOIFoQaW3InXfrzV1Xf5DQoC2765ifQGd/WvEMD42tBSLLWHZHtS2uU
KykRMKF9TMjBko2J1usbH41ye2j5a/ubelF180cqOOdjGD+3hZ9V7CYqcEAS8zVX
CRdNEpBGVl8EDKzzcnJAR1+cjxdUAO3bC0vtcN1HD+71ut9ZN6hc5SyMvBTL2/FU
1m9eFraFsZ2Jpr4U0N4/N/LTdSmjTw==
=I6tW
-----END PGP SIGNATURE-----

--ALfTUftag+2gvp1h--
