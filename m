Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E09C47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 17:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crqMok5xsD3JpvecbMtDu96rnuYApXDbo18sqpERoYg=; b=x3aOnwp2P3PR6iH0C8mgJvgvka
	h7Dbfjr7SRvrBh8t3m27M3qHokUoRoLsSv/+Q/FRjt4xLlVGIp7o068+SNjLiM7a+DHT0mPjpwxoz
	bkwYf3p/iXyc7aPPfaEk4qQ4vUeegteUL4DP2hXOR57NXWAYERz2OOtq5CCpz3GK4I2mN25CS0m9o
	0m5jUC3E9gbG+D5SfLicOx2+Vl8YwDKzfkeSNKSE/Y5r7UNuogsep71FVnxzL5MQUBWV1JOYKnkDS
	fhI332rQ9CzM4WGf0qFOy8/0HPqksZsYKQ4l3I1O+5IUpSHMfweK+jSjQKpDD8vt6Xu5BzpHgzqip
	yWycaUMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmtj-00ChbB-0I;
	Tue, 16 Jan 2024 17:06:47 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmte-00ChZU-08;
	Tue, 16 Jan 2024 17:06:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CB153CE1A21;
	Tue, 16 Jan 2024 17:06:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7F66C433C7;
	Tue, 16 Jan 2024 17:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705424799;
	bh=mM4aZ0Smj1G4ODpdQlh2X3TH/t0XZAPwOM9uWl64c9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fbTy1yY5YxIsWytGQu9ziFjQaRe7cKrNYnXd7y34HcLIZPxluOWFbjDV0Im888hDy
	 7TtkDfwaTTlPwerg5EAYDoz+rU5e8ISdQHVgNZw7Uq1sK42ntiJRNK5d/VFrkaZh/z
	 DobE60Vow1DeHNY1ReyC7/5dnhsNywHRQyxlTu8YZjBrDxeKOj1gMrQX77e6OwUoOc
	 eMuuFZ87vKseu2E5zv4SED7vsGtIOauILPFRi0oeOL54GzuOXOTjdf69Bclz9Vbqas
	 f51Y4wIQDNmPkRpWjaiI6esJclmWhClwKAcSCjKpKexy//WphAWAFS+U19lwonI2ED
	 rq+sG0QVQhcOw==
Date: Tue, 16 Jan 2024 17:06:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: rockchip: Document rk809 support for
 rk817 audio codec
Message-ID: <20240116-mangle-parish-93b5cd672d17@spud>
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-2-tim@feathertop.org>
MIME-Version: 1.0
In-Reply-To: <20240116132102.3272682-2-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090642_431364_8CF674A4 
X-CRM114-Status: GOOD (  22.67  )
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
Content-Type: multipart/mixed; boundary="===============6252919596511497411=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6252919596511497411==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HCATQ6nEVgWWIaF+"
Content-Disposition: inline


--HCATQ6nEVgWWIaF+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 17, 2024 at 12:21:00AM +1100, Tim Lunn wrote:
> Rockchip RK809 shares the same audio codec as the rk817 mfd, it is also
> using the same rk817_codec driver. However it is missing from the
> bindings.
>=20
> Update dt-binding documentation for rk809 to include the audio codec
> properties. This fixes the following warning from dtb check:
>=20
> pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks',
>    'clock-names', 'clocks', 'codec' do not match any of the regexes:
>    'pinctrl-[0-9]+'
>=20
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
>=20
> (no changes since v1)
>=20
>  .../bindings/mfd/rockchip,rk809.yaml          | 30 ++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> index 839c0521f1e5..bac2e751e2f2 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -12,7 +12,7 @@ maintainers:
> =20
>  description: |
>    Rockchip RK809 series PMIC. This device consists of an i2c controlled =
MFD
> -  that includes regulators, an RTC, and power button.
> +  that includes regulators, an RTC, a power button, and an audio codec.
> =20
>  properties:
>    compatible:
> @@ -93,6 +93,34 @@ properties:
>          unevaluatedProperties: false
>      unevaluatedProperties: false
> =20
> +  clocks:
> +    description:
> +      The input clock for the audio codec.
> +
> +  clock-names:
> +    description:
> +      The clock name for the codec clock.
> +    items:
> +      - const: mclk

You have one clock only, why do you need to have clock-names?

Otherwise,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> +
> +  '#sound-dai-cells':
> +    description:
> +      Needed for the interpretation of sound dais.
> +    const: 0
> +
> +  codec:
> +    description: |
> +      The child node for the codec to hold additional properties. If no
> +      additional properties are required for the codec, this node can be
> +      omitted.
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      rockchip,mic-in-differential:
> +        type: boolean
> +        description:
> +          Describes if the microphone uses differential mode.
> +
>  allOf:
>    - if:
>        properties:
> --=20
> 2.40.1
>=20

--HCATQ6nEVgWWIaF+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZaa3mgAKCRB4tDGHoIJi
0negAQC6WRkztcA8oUNox2CjFfyLMgPQeNqY0Naid3MIsCE1+AEAoN9U55E3bKoA
xbTlriGwpSuOCwAhptplZHMfaNSOpgk=
=qI+7
-----END PGP SIGNATURE-----

--HCATQ6nEVgWWIaF+--


--===============6252919596511497411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6252919596511497411==--

