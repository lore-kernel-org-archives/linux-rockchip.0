Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41FC3C5475B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 18:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FEFOwW406sl5vEHqP6GvvIuD4hprtdCeRRqnr2/lbrU=; b=CwPl98MKSDZssu1r8EZ0+JcYC8
	AoG+3bBsYtaLN56fQHcZqzjhwW25R64yLjKyPWghayigvgRaYWqhr9+He1wP5IU1vBDrpV9UFppba
	Hq6X3r8lSajjK59WZ6uIv6jKLHsudcsCLpLf9dFDJVgx97GL9Xp6+2U5t35w4stuNrZZ12DQYTf3e
	rTDxpnBEhrtoUGwheHRORL8hqXiPSryaIPrtjl8irNXzoPQ/2ic9Pn5QT0+8NwAKQgCAIZ4RYN+R4
	j7UlO//+KQLd5qFofB8ypFzc5NO07t+zP2mzzEU/tfuJGSiLDD/XeLEy8QkYU6Lr1yx1n0TZVVEEM
	qJemKKVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcVK2-0000000FsBM-38IM;
	Tue, 20 Feb 2024 18:58:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcVK0-0000000FsAQ-0Xo0;
	Tue, 20 Feb 2024 18:58:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1537F61290;
	Tue, 20 Feb 2024 18:58:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8244EC433F1;
	Tue, 20 Feb 2024 18:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708455506;
	bh=4CW+LXiG5f6KUnfcKWM4ar6fdeuFp263jPQ98dKh8To=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iRal7+Tjf7Yw6mzcb2bExp2WfEpXtJymsOzpnLJOxdxE3uQJ76YtQptlT33ndySIQ
	 QbSlyCDhONv7jXWK7ZMb3JDD0HHrdgswSU9QNtCz7eYLN4beruUcNGHptKIbUVILDB
	 AzO4g1N4Rsi8NV3/ZqwEnff5khPHFHzUqeyJZ1TnNrHopXdEfJ9EwtiJz4GUiZOIr4
	 mNy7F4xsrsfmDvFIq4FfiYf0FV0ievwNv3Ncc8cJD5JAPcsiv4QkqlsdYL/2iXA5Nf
	 s7SeYrZK0dB901IfHMeaqcbYCZtx1cJkBu4Iicwgb6MlLepMijBLMZ/7UBJL5Ljrhp
	 0KXMtRKOd5K6A==
Date: Tue, 20 Feb 2024 18:58:21 +0000
From: Conor Dooley <conor@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Mehdi Djait <mehdi.djait.k@gmail.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 04/14] media: dt-bindings: media: rockchip,px30-vip:
 allow for different variants
Message-ID: <20240220-catchy-cupcake-e600e5af7650@spud>
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
 <20240220-v6-8-topic-rk3568-vicap-v1-4-2680a1fa640b@wolfvision.net>
MIME-Version: 1.0
In-Reply-To: <20240220-v6-8-topic-rk3568-vicap-v1-4-2680a1fa640b@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_105828_260179_216ACB97 
X-CRM114-Status: GOOD (  18.45  )
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
Content-Type: multipart/mixed; boundary="===============8263812733004246794=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8263812733004246794==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y+i2VP3O5QfWvvRS"
Content-Disposition: inline


--y+i2VP3O5QfWvvRS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Tue, Feb 20, 2024 at 10:39:14AM +0100, Michael Riesch wrote:
> Move the documentation of clocks and resets to a allOf: structure in order
> to allow for different variants of the IP block.
>=20
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../bindings/media/rockchip,px30-vip.yaml          | 58 ++++++++++++++--=
------
>  1 file changed, 37 insertions(+), 21 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip,px30-vip.ya=
ml b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> index 675a1ea47210..7168f166798c 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> @@ -24,32 +24,16 @@ properties:
>    interrupts:
>      maxItems: 1
> =20
> -  clocks:
> -    items:
> -      - description: ACLK
> -      - description: HCLK
> -      - description: PCLK
> -
> -  clock-names:
> -    items:
> -      - const: aclk
> -      - const: hclk
> -      - const: pclk
> +  clocks: true
> +
> +  clock-names: true

This is, unfortunately, not how we like multiple soc support to be
handled. Instead, the widest constraints are added at the top level
and constrained by the allOf. If none of the names etc are shared, at
least the widest constraints for minItems and maxItems should be able to
be here.

That said, this patch should be squashed with the patch that actually
adds the other device to the binding.

Cheers,
Conor.

> =20
>    iommus:
>      maxItems: 1
> =20
> -  resets:
> -    items:
> -      - description: AXI
> -      - description: AHB
> -      - description: PCLK IN
> +  resets: true
> =20
> -  reset-names:
> -    items:
> -      - const: axi
> -      - const: ahb
> -      - const: pclkin
> +  reset-names: true
> =20
>    power-domains:
>      maxItems: 1
> @@ -85,6 +69,38 @@ required:
>    - clocks
>    - ports
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,px30-vip
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: ACLK
> +            - description: HCLK
> +            - description: PCLK
> +
> +        clock-names:
> +          items:
> +            - const: aclk
> +            - const: hclk
> +            - const: pclk
> +
> +        resets:
> +          items:
> +            - description: AXI
> +            - description: AHB
> +            - description: PCLK IN
> +
> +        reset-names:
> +          items:
> +            - const: axi
> +            - const: ahb
> +            - const: pclkin
> +
>  additionalProperties: false
> =20
>  examples:
>=20
> --=20
> 2.30.2
>=20

--y+i2VP3O5QfWvvRS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZdT2TQAKCRB4tDGHoIJi
0tZhAQDtcuqCE1tbyiZKmF78dkxlm/na01H9RkqI8fZC7+braQD/U7aIEwSULwcM
axi2QjcgExsgOX/i6A0txpW/TSVrcAo=
=V7Gm
-----END PGP SIGNATURE-----

--y+i2VP3O5QfWvvRS--


--===============8263812733004246794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8263812733004246794==--

