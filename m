Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EBF1C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 14:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/V1UvebNt4FaXRWD7IWOw9/2dfCaxsgOnhMjTEpbKm0=; b=Ka/kIKHMTphlgG0P8IbYYSY4EK
	JfVtf+okmtG+MBT5nfaje0FvAETT9GX/F8gCuivrHUCXSQgB8WlHKQdMK9CpbHRe/IwcGFSvPMuaA
	d1tZFYAuw2x9z9WeST3DSvVgrUQK6prKzLhnULZsdKnoFBZBjj0eRfALBy2sW5jkxsUpA4uxHWcnQ
	2PiY0J5/GZeL+fhqrlUZr+4u8HI5+c69MMuyj2owpjO9bmKJ9S5iP0bH1rPJid6nnC7MlY1+A3IDF
	wMoookWl7UAs9AzjCtqA1xx/5QdUucnVkXZUUHiipwwsdP+h0qQygXL+uL8gcCmkWbKDjDm6g4w8t
	79Fbgnaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmcFs-00GJKX-PU; Thu, 05 May 2022 14:14:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmcFe-00GJEx-73; Thu, 05 May 2022 14:14:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 99B0B1F4579A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651760080;
 bh=r33seUc7ch2ErUOuHDOu/kLhA/pqR1qUoAKMOVPvGl4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qy+mVmCiI+cGac8hF4ckuNPcfThjIc1BzyLbDAmxrUDhWix4W+GEoZpFD+0RgOl35
 mEAmmhpXNSQJRWaX0B/PyDotoud2XI0UKts+9HvJ06IPvTh3D5K2N7u6E796aYFyMS
 nVX50vDvohv1RTKh+5v/tpSTkMAHu3iHv6nCyprnqnSNGfV4iT90FErodSk4rnHQvy
 zwVy58INW077N0dFQlhEcuTDFJHfRCQkO/QwZZ6SxI9VN696k0kKggJ1mS1eXcmc95
 O4mqkh/fx9bzgyQ8Dt+uVmVzf4X2vI+gTtt9vGiSQg4TYcK9dbe5KlJhplcrUO306M
 JDwTHLJDEp8OA==
Received: by mercury (Postfix, from userid 1000)
 id 6BBEB1060437; Thu,  5 May 2022 16:14:38 +0200 (CEST)
Date: Thu, 5 May 2022 16:14:38 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCHv2 01/21] dt-bindings: pinctrl: rockchip: add rk3588
Message-ID: <20220505141438.7tqanpu5gumkpxos@mercury.elektranox.org>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20220504213251.264819-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_071442_438196_7A2F1172 
X-CRM114-Status: GOOD (  16.14  )
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
Content-Type: multipart/mixed; boundary="===============8330661712533918670=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8330661712533918670==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aiobpk3ve3g3geno"
Content-Disposition: inline


--aiobpk3ve3g3geno
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 04, 2022 at 11:32:31PM +0200, Sebastian Reichel wrote:
> Add compatible string for rk3588 pin controller. No other changes
> are required, since the new controller can use the old binding.
>=20
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

This patch has already been applied and I accidently resend it.
Please ignore.

-- Sebastian

>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.y=
aml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index b0eae3a67ab1..e62fb5e9db76 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -44,6 +44,7 @@ properties:
>        - rockchip,rk3368-pinctrl
>        - rockchip,rk3399-pinctrl
>        - rockchip,rk3568-pinctrl
> +      - rockchip,rk3588-pinctrl
>        - rockchip,rv1108-pinctrl
> =20
>    rockchip,grf:
> --=20
> 2.35.1
>=20

--aiobpk3ve3g3geno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmJz284ACgkQ2O7X88g7
+prDiBAAjKfr+0DCR6KkMpPqlTHOTGrVzK48kK3SKovBaEB12SpFGm6JjVmrjDFi
87sS6NIjz8VAoLbKIR9Jvznx9nrg5lm5A9XAwq8tJQa1PGUoj23hmshlQ5xwkYBB
d4ccesgEuOumHEoMA8FdXWe6geflTCiehaaQNpBS6y0gvfA/DHp/b2lvtDkTAB1X
zodwTs7Hu5Fcu4yUVai7SfCUf2p/B3uW8PwXowr5OFVjLfYFVui57ZX/1pioWEAy
StjCo7WRFwTKLZswNTgz1CGDIfp+74C6BoCDyI5RAlmCO2PGO+xtvTMtnS+C3+pN
HkHLRd5AluhvTqJCrxjOUbQyUVt/oo5k8mP3Wx5PCIbp7GS2vz6sHtugmVkrEQg7
VNEm/8krtLzRuRnpVqRUuv0pH6ISuKwiHTrCrtEtpVwuAmaY187r9B6VtOBj+Y+v
ajoSdRfCk8T/McvuJ6Ut6WgLL0LK7blQYo2SpWkI1rQu2NcikEs2DY3tAhAgKm8O
/owEOTtHLHvsX5bBLALg7GXgfCWYPVwvTiVSdNRNGmdUGa9s5IywThggQu+RG0hU
IDY+8bSH37udHDAinE0gIbStFzDweQT6RhuRrueoVmBT/Lgzx2looPzTkVKrdPRG
9ms3yw0hcGtR21VjmjCuW//MutObsThVvgQfD3SLGp0vYSRAUXA=
=bSaz
-----END PGP SIGNATURE-----

--aiobpk3ve3g3geno--


--===============8330661712533918670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8330661712533918670==--

