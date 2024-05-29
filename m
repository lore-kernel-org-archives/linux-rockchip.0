Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A1F2C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 20:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CkE2VHom7RKxCu6+RoYOVDC6AKoML57ZzRmXhyqjAuM=; b=zTJ75CIm5PqUivJfbsFDdv3Hcf
	84d3Qb0SNuekoEnZ1fRH07Qmd+cQuU57YZESBRqPpI6HEsawwiruTjKcXnoK30abkouDZDmYdQk6w
	HJQFXaSni4H8kZ5UsiWpRZl2mpQdSsCWb7VjBZBsmUZX+X2xKemlD82bL044980LyJeHxQjmVTfKw
	CJZQ32ukjVaQmH1ZWQmO7vzGNWIM3O3pJ32Lx3x9QCMofFky09LqfmjmqLM/KkAanArFnLsWNNsyJ
	CjHJa59lpvGnutEwxLG+zYE31Nu9QoAI5ZympVXmqRHrrhsZEHNZHtxGC1F1g4BH857ycp15NSSCv
	NDV9sWBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCPvR-00000005SJj-2e1W;
	Wed, 29 May 2024 20:29:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCPvA-00000005SFE-1LH2;
	Wed, 29 May 2024 20:29:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A711261D2A;
	Wed, 29 May 2024 20:29:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA7BAC113CC;
	Wed, 29 May 2024 20:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717014555;
	bh=bdvVeEVPK461LvQoL0Gl/m+YSw/+CssWr9H4KgsuvA8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tPUM00FkJ/TULR+mHP0tt0IcRNr1PORWmuB8IKtM5LIM7DG7EKVHswRCTVPKDUEr+
	 I2/9KA/RQ9urjHX6JN6j38/tBCDnIRCG6UFif19KdP9C5Dm0uXlVL5R8lit/bNXoOr
	 EO6kougyilSocurHUzl8oN14MnNR+TGX0+L6d2uzAq1izImF0m325N5OcNVqGsJkbL
	 2WAcn1Mk+wjvayWclot3LN6kBTVA5ToE5k4loXguMeZC5j4q2s51KISNOPFI+AcoXL
	 C05mRenSVSRKR9n+54Y6sYg33EIYqNMmQPuJYBt2k+yH1v17/chfCAf36fK8vSiJXb
	 DeZbhrnrH5T6w==
Date: Wed, 29 May 2024 21:29:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: pwm: add dt-bindings for mule
 pwm-over-i2c controller
Message-ID: <20240529-capably-overgrown-755bb11ece69@spud>
References: <20240529-buzzer_support-v1-0-fd3eb0a24442@cherry.de>
 <20240529-buzzer_support-v1-1-fd3eb0a24442@cherry.de>
MIME-Version: 1.0
In-Reply-To: <20240529-buzzer_support-v1-1-fd3eb0a24442@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_132916_487961_DE8C646F 
X-CRM114-Status: GOOD (  18.72  )
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
Content-Type: multipart/mixed; boundary="===============5939405365213293865=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5939405365213293865==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UNdcncQsPyjcgVaG"
Content-Disposition: inline


--UNdcncQsPyjcgVaG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 12:10:30PM +0200, Farouk Bouabid wrote:
> Mule is a device that controls a PWM output signal based on I2C commands.
>=20
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  .../devicetree/bindings/pwm/tsd,pwm-mule.yaml      | 46 ++++++++++++++++=
++++++
>  1 file changed, 46 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/tsd,pwm-mule.yaml b/Do=
cumentation/devicetree/bindings/pwm/tsd,pwm-mule.yaml
> new file mode 100644
> index 000000000000..71a940a2a644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/tsd,pwm-mule.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/tsd,pwm-mule.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mule PWM-over-I2C controller
> +
> +description: |

This | is not needed.

> +  A device that outputs a PWM signal based on I2C commands.
> +
> +maintainers:
> +  - Farouk Bouabid <farouk.bouabid@cherry.de>
> +  - Quentin Schulz <quentin.schulz@cherry.de>
> +
> +allOf:
> +  - $ref: pwm.yaml#
> +
> +properties:
> +  compatible:
> +    const: tsd,pwm-mule
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    const: 2

No clocks or supplies?
I tried to google for some documentation for this device, but only found
archives of this mail thread..

Thanks,
Conor.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      pwm@18 {
> +        compatible =3D "tsd,pwm-mule";
> +        reg =3D <0x18>;
> +        #pwm-cells =3D <2>;
> +      };
> +    };
>=20
> --=20
> 2.34.1
>=20

--UNdcncQsPyjcgVaG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZleQFgAKCRB4tDGHoIJi
0mjxAQD/8WDiJ1amjUFRXI/qQT0XYuHXTu9diC7XmiTGBdToeQEAhqs7zm1GIVey
J5MvAcYGiVtOazmNblHpUk4zB4lF+w0=
=Km/B
-----END PGP SIGNATURE-----

--UNdcncQsPyjcgVaG--


--===============5939405365213293865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5939405365213293865==--

