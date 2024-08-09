Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9821CC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 14:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I8QFAap6hhx67bBMmJo0myLqw+de5Be7fwvAYtuoqR0=; b=tmgr4PbgCG9AYx27dinmN3QqKn
	V3WK2lXH4AFPhIY+LQ4rv2dRUvu5TXsGluUuxqmbV9uMiAGXZB9cGcxIqFJA0fpkabiTFFz3Q15RS
	T2YVil/Ce0ZPX0juOiGQY/clKUPdZzbsC/MuaHehLkJhLEyGr9aqLaD/jUZTaWLI3iqclTQhBSzX4
	aYfIupWU8ABn2ALjYRkQdKVKaT63yatGB+9wRsJ6NIQs/9zWvPRvoXCr+uqxdPsPShLqUN+8E++40
	bGGPkomMqlE6pkHTNRp/jR9ivgVQgVrGKSBb5Y+Z3DfskTazsyTyZAqBw2qn6hqB63T0ylG8i1Qsu
	CdQaRDZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scR5O-0000000Bcn8-3Cc3;
	Fri, 09 Aug 2024 14:59:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scR4m-0000000BcbO-1HzN;
	Fri, 09 Aug 2024 14:58:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7D7C5616FF;
	Fri,  9 Aug 2024 14:58:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEDA9C32782;
	Fri,  9 Aug 2024 14:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723215523;
	bh=W+v4wrSUeGDlZUZEjMy11Jb5n3u1Du3XmL5UwfrGBRs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uVNxW0H1xtRfIhdI8UdBCcFYaGM/XaDwi+wc3nyxx2J1u15ASXU8GJbwYSHcqVMG7
	 YRDQmTrZtjOVgzn1aoAzoqrgZdbcT3YJr9hwiaGVNy1McfyrUkLNtbTVUgp38QW5Xj
	 WTUDRWd9zMx2rJAAgTu8tKbtsNbJxFd2kb4cVALqil/nhlS2XqUifN3JiuPUgBn1DK
	 xXbQfSYAK4TmsEWVd91paTLR7cqAV0A6k6YXqA9mSImfUTDFyvxd3DwC/5WloNga0L
	 /tYOo0R7YO+vVQUi+BKY8vJopZzbjTDMU83UUqdCJyCqA57USI0K1hMzswkFORi10M
	 ak5ix1zApADNg==
Date: Fri, 9 Aug 2024 15:58:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: Add rk3576 pinctrl bindings
Message-ID: <20240809-dexterity-attention-8376b3b16d59@spud>
References: <20240808164132.81306-1-detlev.casanova@collabora.com>
 <20240808164132.81306-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240808164132.81306-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_075844_434604_63925DF1 
X-CRM114-Status: GOOD (  17.17  )
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
Content-Type: multipart/mixed; boundary="===============3349998561982458558=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3349998561982458558==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NTIMqCo6A5o+i6Gx"
Content-Disposition: inline


--NTIMqCo6A5o+i6Gx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2024 at 12:39:55PM -0400, Detlev Casanova wrote:
> Add the compatible string as well as the optional rockchip,sys-grf field.

Optional for all rockchip devices supported by this binding, or just the
one you're adding?

>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml      | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.y=
aml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index 20e806dce1ecb..cd527ccc9e6bf 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -45,6 +45,7 @@ properties:
>        - rockchip,rk3368-pinctrl
>        - rockchip,rk3399-pinctrl
>        - rockchip,rk3568-pinctrl
> +      - rockchip,rk3576-pinctrl
>        - rockchip,rk3588-pinctrl
>        - rockchip,rv1108-pinctrl
>        - rockchip,rv1126-pinctrl
> @@ -54,6 +55,12 @@ properties:
>      description:
>        The phandle of the syscon node for the GRF registers.
> =20
> +  rockchip,sys-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the SYS GRF registers.
> +      It is used for i3c software controlled weak pull-up.
> +
>    rockchip,pmu:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
> --=20
> 2.46.0
>=20

--NTIMqCo6A5o+i6Gx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrYungAKCRB4tDGHoIJi
0nHaAP97YtyynX04rf7zjtP4R+W6GITXm4Z/bA+EUh7qE0LelAD/XAhb9Evq/dMo
JaxOvTgiuv4ijt9tTIRbnqisL776IQ4=
=FkCm
-----END PGP SIGNATURE-----

--NTIMqCo6A5o+i6Gx--


--===============3349998561982458558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3349998561982458558==--

